import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import axiosClient from '~/api/axiosClient';
import cogoToast from 'cogo-toast';
import classNames from 'classnames/bind';
import styles from './ThemNhanVien.module.scss';

const cx = classNames.bind(styles);

function ThemNhanVien({ togglePopupAdd, setIsOpenAdd, loadNhanVien }) {
    const { dv_id } = useParams();
    const [donViID] = useState(dv_id);

    const [themNhanVien, setThemNhanVien] = useState({
        nv_taikhoan: '',
        nv_matkhau: '',
        nv_ten: '',
        nv_stt: '10',
        nv_quyen: 'nv',
        nv_quyenthamdinh: '0',
        nv_sdt: '',
        dv_id: donViID,
        nv_diachi: '',
    });

    const [dSDonVi, setDSDonVi] = useState([]);

    useEffect(() => {
        const getDSDonVi = async () => {
            const response = await axiosClient.get('/get_DonVi');
            setDSDonVi(response.data.don_vis);
        };
        getDSDonVi();
    }, []);

    function handleChange(event) {
        const { name, value } = event.target;

        const updatedValue = value.charAt(0).toUpperCase() + value.slice(1);

        setThemNhanVien({
            ...themNhanVien,
            [name]: updatedValue,
        });
    }

    const handleThemNhanVien = async (e) => {
        e.preventDefault();

        const {
            nv_taikhoan,
            nv_matkhau,
            nv_ten,
            nv_stt,
            nv_quyen,
            nv_quyenthamdinh,
            nv_sdt,
            dv_id,
            nv_diachi,
        } = themNhanVien;

        const response = await axiosClient.post('/add_NhanVien', {
            nv_taikhoan,
            nv_matkhau,
            nv_ten,
            nv_stt,
            nv_quyen,
            nv_quyenthamdinh,
            nv_sdt,
            dv_id,
            nv_diachi,
        });

        if (response.status === 200) {
            await loadNhanVien();
            setIsOpenAdd(false);
            cogoToast.success(`Nhân viên ${nv_ten.toUpperCase()} đã được thêm`, {
                position: 'top-right',
            });
        }
    };

    return (
        <div className={cx('wrapper')}>
            <h2>Thêm nhân viên</h2>
            <div className={cx('inner')}>
                <form className={cx('form-group')} onSubmit={handleThemNhanVien}>
                    <div className={cx('form-item')}>
                        <label>Tên nhân viên</label>
                        <input
                            type="search"
                            required
                            pattern="[\p{L}0-9 ]{0,100}"
                            title="Vui lòng nhập tên nhân viên (tối đa 100 ký tự, không chứa ký tự đặc biệt)"
                            name="nv_ten"
                            value={themNhanVien.nv_ten}
                            onChange={handleChange}
                        />
                    </div>
                    <div className={cx('form-item')}>
                        <label>Tên tài khoản</label>
                        <input
                            type="search"
                            required
                            pattern=".{0,50}"
                            title="Vui lòng nhập tên tài khoản (tối đa 50 ký tự, không chứa ký tự đặc biệt)"
                            name="nv_taikhoan"
                            value={themNhanVien.nv_taikhoan}
                            onChange={handleChange}
                        />
                    </div>
                    <div className={cx('form-item')}>
                        <label>Mật khẩu</label>
                        <input
                            type="password"
                            required
                            pattern=".{8,}"
                            title="Mật khẩu phải có ít nhất 8 ký tự"
                            name="nv_matkhau"
                            value={themNhanVien.nv_matkhau}
                            onChange={handleChange}
                        />
                    </div>
                    <div className={cx('form-item')}>
                        <label>Quyền</label>
                        <select
                            name="nv_quyen"
                            value={themNhanVien.nv_quyen || 'nv'}
                            onChange={handleChange}
                        >
                            <option value="nv">Nhân viên</option>
                            <option value="ld">Lãnh đạo</option>
                        </select>
                    </div>
                    <div className={cx('form-item')}>
                        <label>Quyền thẩm định</label>
                        <select
                            name="nv_quyenthamdinh"
                            value={themNhanVien.nv_quyenthamdinh || '0'}
                            onChange={handleChange}
                        >
                            <option value="0">Không</option>
                            <option value="1">Có</option>
                        </select>
                    </div>
                    <div className={cx('form-item')}>
                        <label>Thuộc đơn vị</label>
                        <select
                            name="dv_id"
                            value={themNhanVien.dv_id || donViID}
                            onChange={handleChange}
                        >
                            {dSDonVi.map((dv) => (
                                <option key={dv.dv_id} value={dv.dv_id}>
                                    {dv.dv_ten}
                                </option>
                            ))}
                        </select>
                    </div>
                    <div className={cx('form-item')}>
                        <label>Số điện thoại</label>
                        <input
                            type="search"
                            required
                            pattern="[0-9]{10}"
                            title="Vui lòng nhập số điện thoại gồm 10 chữ số"
                            name="nv_sdt"
                            value={themNhanVien.nv_sdt}
                            onChange={handleChange}
                        />
                    </div>
                    <div className={cx('form-item')}>
                        <label>Địa chỉ</label>
                        <input
                            type="search"
                            required
                            pattern=".{0,255}"
                            title="Vui lòng nhập địa chỉ (tối đa 255 ký tự)"
                            name="nv_diachi"
                            value={themNhanVien.nv_diachi}
                            onChange={handleChange}
                        />
                    </div>
                    <div className={cx('handle')}>
                        <button>Lưu</button>
                        <button onClick={togglePopupAdd}>Hủy</button>
                    </div>
                </form>
            </div>
        </div>
    );
}

export default ThemNhanVien;
