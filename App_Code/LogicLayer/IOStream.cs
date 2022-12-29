using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections;
namespace LogicalLayer
{
    public class ImageFileStream
    {
        //FileUpload FileUpLd = new FileUpload();
        //string Filename;
        //string FileExtention;
        //string FileSizeMessage;
        //string FileTypeMessage;
        //string FileSelectedMessage;
        //string FilePass;
        //int FileMinimumMbLenght;
        //int FileMaximumMbLenght;
        //string FileUploadFolderPass;
        //int FileImageWith;
        //int FileImageHeight;


        //public void uploadFile()
        //{
        //    int FileLenth;
        //    if (FileUpLd.HasFile)
        //    {
        //        Filename = FileUpLd.FileName;
        //        FileExtention = System.IO.Path.GetExtension(Filename);

        //        if (FileExtention.ToUpper() == ".JPG" || FileExtention.ToUpper() == ".BMP")
        //        {
        //            FileLenth = FileUpLd.PostedFile.ContentLength;
        //            FileLenth /= 1024;
        //            if (FileLenth >= FileMinimumMbLenght && FileLenth <= FileMaximumMbLenght)
        //            {
        //                try
        //                {
        //                    Filename = Guid.NewGuid().ToString() + ".JPG";

        //                    System.Drawing.Bitmap Bmp = new System.Drawing.Bitmap(System.Drawing.Image.FromStream(FileUpLd.FileContent));

        //                    //Bmp.Save(MapPath(FileUploadFolderPass + "/") + Filename, System.Drawing.Imaging.ImageFormat.Jpeg);

        //                    Bmp = new System.Drawing.Bitmap(System.Drawing.Image.FromStream(FileUpLd.FileContent), new System.Drawing.Size(FileImageWith, FileImageHeight));

        //                    //Bmp.Save(MapPath(FileUploadFolderPass + "/") + Filename, System.Drawing.Imaging.ImageFormat.Jpeg);

        //                    //FilePass = MapPath(FileUploadFolderPass + "/") + Filename;

        //                }
        //                catch
        //                {
        //                }
        //            }
        //            else
        //            {
        //                FileSizeMessage = "سایز فایل بزرگ است";
        //            }


        //        }
        //        else
        //        {
        //            FileTypeMessage = "انتخاب کنید یک فایل با پسوند jpg یا bmp";
        //        }
        //    }
        //    else
        //    {
        //        FileSelectedMessage = "فایل عکس را انتخاب کنید";
        //    }
        //}
    }       

}
