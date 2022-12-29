using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataBaseLayer;
using System.Data.SqlClient;

using System.Security.Cryptography;
using System.IO;

namespace LogicalLayer
{

    //public class TakePresentedTechnicalEducation : DataBaseOperations
    //{
    //    public string presentedTechEducationTitle;



    //    public SqlException insertPresentedTechnicalEducation()
    //    {
    //        fieldsOfTable[0] = 
    //        fieldsOfTable[1] = 
    //        fieldsOfTable[2] = 
    //        fieldsOfTable[3] = 
    //        fieldsOfTable[4] = 
    //        fieldsOfTable[5] = 
    //        fieldsOfTable[6] = 
    //        fieldsOfTable[7] = 
    //        fieldsOfTable[8] = 
    //        fieldsOfTable[9] = 
    //        fieldsOfTable[10] = 
    //        fieldsOfTable[11] = 
    //        fieldsOfTable[12] = 
    //        fieldsOfTable[13] = 
    //        fieldsOfTable[14] = 
    //        fieldsOfTable[15] = 
    //        fieldsOfTable[16] = 
    //        fieldsOfTable[17] = 
    //        fieldsOfTable[18] = 
    //        fieldsOfTable[19] = 
    //        fieldsOfTable[20] = 
    //        fieldsOfTable[21] = 




    //        valuesOfField[0] = 
    //        valuesOfField[1] = 
    //        valuesOfField[2] = 
    //        valuesOfField[3] = 
    //        valuesOfField[4] = 
    //        valuesOfField[5] = 
    //        valuesOfField[6] = 
    //        valuesOfField[7] = 
    //        valuesOfField[8] = 
    //        valuesOfField[9] = 
    //        valuesOfField[10] = 
    //        valuesOfField[11] = 
    //        valuesOfField[12] = 
    //        valuesOfField[13] = 
    //        valuesOfField[14] = 
    //        valuesOfField[15] = 
    //        valuesOfField[16] = 
    //        valuesOfField[17] = 
    //        valuesOfField[18] = 
    //        valuesOfField[19] = 
    //        valuesOfField[20] = 
    //        valuesOfField[21] = 

    //        return insertQuery("", fieldsOfTable, valuesOfField);
    //    }

    //    public DataTable showPresentedTechnicalEducation(string fieldsOfTable, string Condition, string OrderBy)
    //    {
    //        return selectQueryDataTable("", fieldsOfTable, Condition, OrderBy);
    //    }

    //    public SqlException updatePresentedTechnicalEducation(string UpdateQueryString)
    //    {
    //        return updateQuery("", UpdateQueryString);

    //    }

    //    public SqlException deletePresentedTechnicalEducation(string DeleteQueryString)
    //    {
    //        return deleteQuery("", DeleteQueryString);
    //    }
    //}

    public class PresentedTechnicalEducation : DataBaseOperations
    {
        public string presentedTechEducationTitle;
        public string presentedTechEducationCode;
        public string presentedTechEducationFee;
        public string presentedTechEducationTermNumber;
        public string presentedTechEducationStartDate;
        public string presentedTechEducationEndDate;
        public string presentedTechEducationTeacherName;
        public string presentedTechEducationTeacherLastName;
        public string presentedTechEducationTeacherID;
        public string presentedTechEducationLocation;

        public int    presentedTechEducationFilledCapacity;
        public int    presentedTechEducationTotalCapacity;
        public string presentedTechEducationGroupNumber;
        public string presentedTechEducationMidTermDate;
        public string presentedTechEducationMidTermTime;
        public string presentedTechEducationFinalDate;
        public string presentedTechEducationFinalTime;
        public string presentedTechEducationPracticalDate;
        public string presentedTechEducationPracticalTime;
        public string presentedTechEducationExerciseDate;
        public string presentedTechEducationExerciseTime;
        public string presentedTechEducationComments;


        public SqlException insertPresentedTechnicalEducation()
        {
            fieldsOfTable[0] = "presentedTechEducationTitle";
            fieldsOfTable[1] = "presentedTechEducationCode";
            fieldsOfTable[2] = "presentedTechEducationFee";
            fieldsOfTable[3] = "presentedTechEducationTermNumber";
            fieldsOfTable[4] = "presentedTechEducationStartDate";
            fieldsOfTable[5] = "presentedTechEducationEndDate";
            fieldsOfTable[6] = "presentedTechEducationTeacherName";
            fieldsOfTable[7] = "presentedTechEducationTeacherLastName";
            fieldsOfTable[8] = "presentedTechEducationTeacherID";
            fieldsOfTable[9] = "presentedTechEducationLocation";
            fieldsOfTable[10] = "presentedTechEducationFilledCapacity";
            fieldsOfTable[11] = "presentedTechEducationTotalCapacity";
            fieldsOfTable[12] = "presentedTechEducationGroupNumber";
            fieldsOfTable[13] = "presentedTechEducationMidTermDate";
            fieldsOfTable[14] = "presentedTechEducationMidTermTime";
            fieldsOfTable[15] = "presentedTechEducationFinalDate";
            fieldsOfTable[16] = "presentedTechEducationFinalTime";
            fieldsOfTable[17] = "presentedTechEducationPracticalDate";
            fieldsOfTable[18] = "presentedTechEducationPracticalTime";
            fieldsOfTable[19] = "presentedTechEducationExerciseDate";
            fieldsOfTable[20] = "presentedTechEducationExerciseTime";
            fieldsOfTable[21] = "presentedTechEducationComments";




            valuesOfField[0] = presentedTechEducationTitle;
            valuesOfField[1] = presentedTechEducationCode;
            valuesOfField[2] = presentedTechEducationFee;
            valuesOfField[3] = presentedTechEducationTermNumber;
            valuesOfField[4] = presentedTechEducationStartDate;
            valuesOfField[5] = presentedTechEducationEndDate;
            valuesOfField[6] = presentedTechEducationTeacherName;
            valuesOfField[7] = presentedTechEducationTeacherLastName;
            valuesOfField[8] = presentedTechEducationTeacherID;
            valuesOfField[9] = presentedTechEducationLocation;
            valuesOfField[10] = presentedTechEducationFilledCapacity.ToString();
            valuesOfField[11] = presentedTechEducationTotalCapacity.ToString();
            valuesOfField[12] = presentedTechEducationGroupNumber;
            valuesOfField[13] = presentedTechEducationMidTermDate;
            valuesOfField[14] = presentedTechEducationMidTermTime;
            valuesOfField[15] = presentedTechEducationFinalDate;
            valuesOfField[16] = presentedTechEducationFinalTime;
            valuesOfField[17] = presentedTechEducationPracticalDate;
            valuesOfField[18] = presentedTechEducationPracticalTime;
            valuesOfField[19] = presentedTechEducationExerciseDate;
            valuesOfField[20] = presentedTechEducationExerciseTime;
            valuesOfField[21] = presentedTechEducationComments;

            return insertQuery("TablePresentedTechnicalEducation", fieldsOfTable, valuesOfField);
        }

        public DataTable showPresentedTechnicalEducation(string fieldsOfTable, string Condition, string OrderBy)
        {
            return selectQueryDataTable("TablePresentedTechnicalEducation", fieldsOfTable, Condition, OrderBy);
        }

        public SqlException updatePresentedTechnicalEducation(string UpdateQueryString)
        {
            return updateQuery("TablePresentedTechnicalEducation", UpdateQueryString);

        }

        public SqlException deletePresentedTechnicalEducation(string DeleteQueryString)
        {
            return deleteQuery("TablePresentedTechnicalEducation", DeleteQueryString);
        }
    }


    public class TechnicalEducation : DataBaseOperations
    {
        public string techEducationCode;
        public string techEducationTitle;
        public string techEductionFee;
        public string techEducationLevel;
        public string techEductionTheoryHours;
        public string techEductionPracticalHours;
        public string techEductionTotalHours;
        public string techEductionPrerequisits;
        public string techEductionSoftwarePrerequisits;
        public string techEductionTechnicalBranch;
        public string techEductionTechnicalBranchLevel;

        public SqlException insertTechnicalEducation()
        {
            fieldsOfTable[0] = "techEducationCode";
            fieldsOfTable[1] = "techEducationTitle";
            fieldsOfTable[2] = "techEducationLevel";
            fieldsOfTable[3] = "techEductionTheoryHours";
            fieldsOfTable[4] = "techEductionPracticalHours";
            fieldsOfTable[5] = "techEductionTotalHours";
            fieldsOfTable[6] = "techEductionPrerequisits";
            fieldsOfTable[7] = "techEductionFee";
            fieldsOfTable[8] = "techEductionSoftwarePrerequisits";
            fieldsOfTable[9] = "techEductionTechnicalBranch";
            fieldsOfTable[10] = "techEductionTechnicalBranchLevel";



            valuesOfField[0] = techEducationCode;
            valuesOfField[1] = techEducationTitle;
            valuesOfField[2] = techEducationLevel;
            valuesOfField[3] = techEductionTheoryHours;
            valuesOfField[4] = techEductionPracticalHours;
            valuesOfField[5] = techEductionTotalHours;
            valuesOfField[6] = techEductionPrerequisits;
            valuesOfField[7] = techEductionFee;
            valuesOfField[8] = techEductionSoftwarePrerequisits;
            valuesOfField[9] = techEductionTechnicalBranch;
            valuesOfField[10] = techEductionTechnicalBranchLevel;


            return insertQuery("TableTechnicalEducation", fieldsOfTable, valuesOfField);
        }

        public DataTable showTechnicalEducatione(string fieldsOfTable, string Condition, string OrderBy)
        {
            return selectQueryDataTable("TableTechnicalEducation", fieldsOfTable, Condition, OrderBy);
        }

        public SqlException updateTechnicalEducation(string UpdateQueryString)
        {
            return updateQuery("TableTechnicalEducation", UpdateQueryString);

        }

        public SqlException deleteTechnicalEducation(string DeleteQueryString)
        {
            return deleteQuery("TableTechnicalEducation", DeleteQueryString);
        }
    }


    public class EnterpriseSoftwareDesignRequest : DataBaseOperations
    {
        public string EnterpriseName;
        public string EnterpriseCountry;
        public string EnterpriseState;
        public string EnterpriseCity;
        public string EnterpriseEmail;
        public string EnterpriseWebsite;
        public string EnterprisePhone;
        public string EnterpriseCellPhone;
        public string EnterpriseAddress;
        public string EnterpriseSoftwareType;
        public string EnterpriseTime;
        public string EnterpriseWebsiteType;
        public string EnterpriseWebsiteDomainType;
        public string EnterpriseWebsiteHostValue;
        public string EnterpriseWebsitePlan;
        public string EnterpriseWebsiteDomain1;
        public string EnterpriseWebsiteDomain2;
        public string EnterpriseWebsiteDomain3;
        public string Enterprise2Languages;
        public string EnterpriseBranch;
        public string EnterpriseIntroduction;
        public string EnterpriseNews;
        public string EnterpriseOnlineRelationship;
        public string EnterpriseOrder;
        public string EnterprisePicGallery;
        public string EnterpriseProductions;
        public string EnterpriseRanking;
        public string EnterpriseSendSMS;
        public string EnterpriseVoting;
        public string EnterpriseCheckOnlineSell;
        public string EnterpriseOtherFanctionality;
        public string EnterpriseManagerName;
        public string EnterpriseManagerLastName;
        public string EnterpriseDate;

        public SqlException insertEnterpriseSoftwareDesignRequest()
        {
            fieldsOfTable[0] = "EnterpriseName";
            fieldsOfTable[1] = "EnterpriseCountry";
            fieldsOfTable[2] = "EnterpriseState";
            fieldsOfTable[3] = "EnterpriseCity";
            fieldsOfTable[4] = "EnterpriseEmail";
            fieldsOfTable[5] = "EnterpriseWebsite";
            fieldsOfTable[6] = "EnterprisePhone";
            fieldsOfTable[7] = "EnterpriseCellPhone";
            fieldsOfTable[8] = "EnterpriseAddress";
            fieldsOfTable[9] = "EnterpriseSoftwareType";
            fieldsOfTable[10] ="EnterpriseTime";
            fieldsOfTable[11] ="EnterpriseWebsiteType";
            fieldsOfTable[12] ="EnterpriseWebsiteDomainType";
            fieldsOfTable[13] ="EnterpriseWebsiteHostValue";
            fieldsOfTable[14] ="EnterpriseWebsitePlan";
            fieldsOfTable[15] ="EnterpriseWebsiteDomain1";
            fieldsOfTable[16] ="EnterpriseWebsiteDomain2";
            fieldsOfTable[17] ="EnterpriseWebsiteDomain3";
            fieldsOfTable[18] ="Enterprise2Languages";
            fieldsOfTable[19] ="EnterpriseBranch";
            fieldsOfTable[20] ="EnterpriseIntroduction";
            fieldsOfTable[21] ="EnterpriseNews";
            fieldsOfTable[22] ="EnterpriseOnlineRelationship";
            fieldsOfTable[23] ="EnterpriseOrder";
            fieldsOfTable[24] ="EnterprisePicGallery";
            fieldsOfTable[25] ="EnterpriseProductions";
            fieldsOfTable[26] ="EnterpriseRanking";
            fieldsOfTable[27] ="EnterpriseSendSMS";
            fieldsOfTable[28] ="EnterpriseVoting";
            fieldsOfTable[29] ="EnterpriseCheckOnlineSell";
            fieldsOfTable[30] = "EnterpriseOtherFanctionality";
            fieldsOfTable[31] = "EnterpriseManagerName";
            fieldsOfTable[32] = "EnterpriseManagerLastName";
            fieldsOfTable[33] = "EnterpriseDate";

            valuesOfField[0] = EnterpriseName;
            valuesOfField[1] = EnterpriseCountry;
            valuesOfField[2] = EnterpriseState;
            valuesOfField[3] = EnterpriseCity;
            valuesOfField[4] = EnterpriseEmail;
            valuesOfField[5] = EnterpriseWebsite;
            valuesOfField[6] = EnterprisePhone;
            valuesOfField[7] = EnterpriseCellPhone;
            valuesOfField[8] = EnterpriseAddress;
            valuesOfField[9] = EnterpriseSoftwareType;
            valuesOfField[10] = EnterpriseTime;
            valuesOfField[11] = EnterpriseWebsiteType;
            valuesOfField[12] = EnterpriseWebsiteDomainType;
            valuesOfField[13] = EnterpriseWebsiteHostValue;
            valuesOfField[14] = EnterpriseWebsitePlan;
            valuesOfField[15] = EnterpriseWebsiteDomain1;
            valuesOfField[16] = EnterpriseWebsiteDomain2;
            valuesOfField[17] = EnterpriseWebsiteDomain3;
            valuesOfField[18] = Enterprise2Languages;
            valuesOfField[19] = EnterpriseBranch;
            valuesOfField[20] = EnterpriseIntroduction;
            valuesOfField[21] = EnterpriseNews;
            valuesOfField[22] = EnterpriseOnlineRelationship;
            valuesOfField[23] = EnterpriseOrder;
            valuesOfField[24] = EnterprisePicGallery;
            valuesOfField[25] = EnterpriseProductions;
            valuesOfField[26] = EnterpriseRanking;
            valuesOfField[27] = EnterpriseSendSMS;
            valuesOfField[28] = EnterpriseVoting;
            valuesOfField[29] = EnterpriseCheckOnlineSell;
            valuesOfField[30] = EnterpriseOtherFanctionality;
            valuesOfField[31] = EnterpriseManagerName;
            valuesOfField[32] = EnterpriseManagerLastName;
            valuesOfField[33] = EnterpriseDate;
                              

            return insertQuery("EnterpriseSoftwareDesignRequest", fieldsOfTable, valuesOfField);
        }

        public DataTable showEnterpriseSoftwareDesignRequest(string fieldsOfTable, string Condition, string OrderBy)
        {
            return selectQueryDataTable("EnterpriseSoftwareDesignRequest", fieldsOfTable, Condition, OrderBy);
        }

        public SqlException updateEnterpriseSoftwareDesignRequest(string UpdateQueryString)
        {
            return updateQuery("EnterpriseSoftwareDesignRequest", UpdateQueryString);

        }

        public SqlException deleteEnterpriseSoftwareDesignRequest(string DeleteQueryString)
        {
            return deleteQuery("EnterpriseSoftwareDesignRequest", DeleteQueryString);
        }

    }

    
    public class SiteStatistics : DataBaseOperations
    {
        

        public DataTable showStudentMembeshipCounter()
        {
            return selectQueryDataTable("TableUserStudent", "*", null, null);
        }

        public DataTable showStudentMembeshipOnlineCounter()
        {
            return selectQueryDataTable("TableUserStudent", "*", "UserStudentOnline='True'", null);
        }

        public DataTable showStudentMembeshipTodayLoginsCounter(string date)
        {

            return selectQueryDataTable("TableUserStudent", "*", "UserStudentLastLogin like '" + date + "%'", null);
        }

        public DataTable showStudentMembeshipTotalLoginsCounter()
        {

            return selectQueryDataTable("TableUserStudent", "sum(UserStudentSiteViewCounter)", null, null);
        }

    }


    public sealed class Cryption
    {
        //members of the Cryption 
        //algorithm type in my case it’s RijndaelManaged
        private RijndaelManaged Algorithm;
        //memory stream
        private MemoryStream memStream;
        //ICryptoTransform interface
        private ICryptoTransform EncryptorDecryptor;
        //CryptoStream
        private CryptoStream crStream;
        //Stream writer and Stream reader
        private StreamWriter strWriter;
        private StreamReader strReader;
        //internal members
        private string m_key;
        private string m_iv;
        //the Key and the Inicialization Vector
        private byte[] key;
        private byte[] iv;
        //password view
        private string pwd_str;
        private byte[] pwd_byte;


        //Constructor
        public Cryption(string key_val, string iv_val)
        {
            key = new byte[32];
            iv = new byte[32];

            int i;
            m_key = key_val;
            m_iv = iv_val;
            //key calculation, depends on first constructor parameter
            for (i = 0; i < m_key.Length; i++)
            {
                key[i] = Convert.ToByte(m_key[i]);
            }
            //IV calculation, depends on second constructor parameter
            for (i = 0; i < m_iv.Length; i++)
            {
                iv[i] = Convert.ToByte(m_iv[i]);
            }

        }
        //Encrypt method implementation
        public string Encrypt(string s)
        {
            //new instance of algorithm creation
            Algorithm = new RijndaelManaged();

            //setting algorithm bit size
            Algorithm.BlockSize = 256;
            Algorithm.KeySize = 256;

            //creating new instance of Memory stream
            memStream = new MemoryStream();

            //creating new instance of the Encryptor
            EncryptorDecryptor = Algorithm.CreateEncryptor(key, iv);

            //creating new instance of CryptoStream
            crStream = new CryptoStream(memStream, EncryptorDecryptor,
            CryptoStreamMode.Write);

            //creating new instance of Stream Writer
            strWriter = new StreamWriter(crStream);

            //cipher input string
            strWriter.Write(s);

            //clearing buffer for currnet writer and writing any 
            //buffered data to //the underlying device
            strWriter.Flush();
            crStream.FlushFinalBlock();

            //storing cipher string as byte array 
            pwd_byte = new byte[memStream.Length];
            memStream.Position = 0;
            memStream.Read(pwd_byte, 0, (int)pwd_byte.Length);

            //storing cipher string as Unicode string
            pwd_str = new UnicodeEncoding().GetString(pwd_byte);

            return pwd_str;
        }

        //Decrypt method implementation 
        public string Decrypt(string s)
        {
            //new instance of algorithm creation
            Algorithm = new RijndaelManaged();

            //setting algorithm bit size
            Algorithm.BlockSize = 256;
            Algorithm.KeySize = 256;

            //creating new Memory stream as stream for input string      
            MemoryStream memStream = new MemoryStream(
               new UnicodeEncoding().GetBytes(s));

            //Decryptor creating 
            ICryptoTransform EncryptorDecryptor =
                Algorithm.CreateDecryptor(key, iv);

            //setting memory stream position
            memStream.Position = 0;

            //creating new instance of Crupto stream
            CryptoStream crStream = new CryptoStream(
                memStream, EncryptorDecryptor, CryptoStreamMode.Read);

            //reading stream
            strReader = new StreamReader(crStream);

            //returnig decrypted string
            return strReader.ReadToEnd();
        }
    }


    public class TeacherExercise : DataBaseOperations
    {
        public int    teacherExerciseCourseGroupID;
        public int    teacherExerciseNumber;
        public int    teacherExerciseID;
        public string teacherExerciseTitle;
        public string teacherExerciseDeliveryDeadLine;
        public double  teacherExerciseMark;
        public string teacherExerciseFileName;
        public string teacherExerciseFileType;
        public string teacherExerciseResponseFileType;
        public string teacherExerciseDate;



        public SqlException insertTeacherExercise()
        {
            fieldsOfTable[0] = "teacherExerciseCourseGroupID";
            fieldsOfTable[1] = "teacherExerciseNumber";
            fieldsOfTable[2] = "teacherExerciseDate";
            fieldsOfTable[3] = "teacherExerciseTitle";
            fieldsOfTable[4] = "teacherExerciseDeliveryDeadLine";
            fieldsOfTable[5] = "teacherExerciseMark";
            fieldsOfTable[6] = "teacherExerciseFileName";
            fieldsOfTable[7] = "teacherExerciseFileType";
            fieldsOfTable[8] = "teacherExerciseResponseFileType";





            valuesOfField[0] = teacherExerciseCourseGroupID.ToString();
            valuesOfField[1] = teacherExerciseNumber.ToString();
            valuesOfField[2] = teacherExerciseDate;
            valuesOfField[3] = teacherExerciseTitle;
            valuesOfField[4] = teacherExerciseDeliveryDeadLine;
            valuesOfField[5] = teacherExerciseMark.ToString();
            valuesOfField[6] = teacherExerciseFileName;
            valuesOfField[7] = teacherExerciseFileType;
            valuesOfField[8] = teacherExerciseResponseFileType;


            return insertQuery("TableTeacherExercise", fieldsOfTable, valuesOfField);
        }

        public DataTable showTeacherExercise(string fieldsOfTable, string Condition, string OrderBy)
        {
            return selectQueryDataTable("TableTeacherExercise", fieldsOfTable, Condition, OrderBy);
        }

        public SqlException updateTeacherExercise(string UpdateQueryString)
        {
            return updateQuery("TableTeacherExercise", UpdateQueryString);

        }

        public SqlException deleteTeacherExercise(string DeleteQueryString)
        {
            return deleteQuery("TableTeacherExercise", DeleteQueryString);
        }


    }


    public class StudentDelivery : DataBaseOperations
    {
        public string studentDeliveryStudentComments;	
        public string studentDeliveryDate;
        public int    studentDeliveryID;	
        public string studentDeliveryStudentName;	
        public string studentDeliveryStudentLastName;	
        public int    studentDeliveryStudentID;
        public string studentDeliveryUploadedFileName;	
        public string studentDeliveryUploadedFileType;	
        public int    studentDeliveryCourseGroupID;	
        public int    studentDeliveryExserciseID;		
        public float  studentDeliveryMark;
        public string studentDeliveryTeacherComments;

        public SqlException insertStudentDelivery()
        {
            fieldsOfTable[0] = "studentDeliveryStudentID";
            fieldsOfTable[1] = "studentDeliveryCourseGroupID";
            fieldsOfTable[2] = "studentDeliveryExserciseID";
            fieldsOfTable[3] = "studentDeliveryStudentName";
            fieldsOfTable[4] = "studentDeliveryStudentLastName";
            fieldsOfTable[5] = "studentDeliveryStudentComments";
            fieldsOfTable[6] = "studentDeliveryUploadedFileName";
            fieldsOfTable[7] = "studentDeliveryUploadedFileType";
            fieldsOfTable[8] = "studentDeliveryDate";



            valuesOfField[0] = studentDeliveryStudentID.ToString();
            valuesOfField[1] = studentDeliveryCourseGroupID.ToString();
            valuesOfField[2] = studentDeliveryExserciseID.ToString();
            valuesOfField[3] = studentDeliveryStudentName;
            valuesOfField[4] = studentDeliveryStudentLastName;
            valuesOfField[5] = studentDeliveryStudentComments;
            valuesOfField[6] = studentDeliveryUploadedFileName;
            valuesOfField[7] = studentDeliveryUploadedFileType;
            valuesOfField[8] = studentDeliveryDate;

    
            return insertQuery("TableStudentDelivery", fieldsOfTable, valuesOfField);
        }

        public DataTable showStudentDelivery(string fieldsOfTable, string Condition, string OrderBy)
        {
            return selectQueryDataTable("TableStudentDelivery", fieldsOfTable, Condition, OrderBy);
        }

        public SqlException updateStudentDelivery(string UpdateQueryString)
        {
            return updateQuery("TableStudentDelivery", UpdateQueryString);

        }

        public SqlException deleteStudentDelivery(string DeleteQueryString)
        {
            return deleteQuery("TableStudentDelivery", DeleteQueryString);
        }
	

    }


    public class Message : DataBaseOperations
    {

        public string messageTitle;
        public string messagePassage;
        public string messageDate;
        public string messageSenderType;
        public string messageSenderName;
        public string messageSenderLastName;
        public int    messageID;
        public string messageRecieverType;
        public string messageRecieverName;
        public string messageRecieverLastName;
        public int    messageCourseGroupID; 
        public string messageResponsePassage;
        public string messageResponseDate;
        public int    messageStudentID;
        public int messageRespondedOrUnResponded;



        public SqlException insertMessage()
        {
            fieldsOfTable[0] = "messageTitle";
            fieldsOfTable[1] = "messagePassage";
            fieldsOfTable[2] = "messageDate";
            fieldsOfTable[3] = "messageSenderType";
            fieldsOfTable[4] = "messageSenderName";
            fieldsOfTable[5] = "messageSenderLastName";
            fieldsOfTable[6] = "messageRecieverType";
            fieldsOfTable[7] = "messageRecieverName";
            fieldsOfTable[8] = "messageRecieverLastName";
            fieldsOfTable[9] ="messageCourseGroupID";
            fieldsOfTable[10] = "messageStudentID";




            valuesOfField[0] = messageTitle;
            valuesOfField[1] = messagePassage;
            valuesOfField[2] = messageDate;
            valuesOfField[3] = messageSenderType;
            valuesOfField[4] = messageSenderName;
            valuesOfField[5] = messageSenderLastName;
            valuesOfField[6] = messageRecieverType;
            valuesOfField[7] = messageRecieverName;
            valuesOfField[8] = messageRecieverLastName;
            valuesOfField[9] = messageCourseGroupID.ToString();
            valuesOfField[10] = messageStudentID.ToString();   

            return insertQuery("TableMessage", fieldsOfTable, valuesOfField);
        }

        public DataTable showMessage(string fieldsOfTable, string Condition, string OrderBy)
        {
            return selectQueryDataTable("TableMessage", fieldsOfTable, Condition, OrderBy);
        }

        public SqlException updateMessage(string UpdateQueryString)
        {
            return updateQuery("TableMessage", UpdateQueryString);

        }

        public SqlException deleteMessage(string DeleteQueryString)
        {
            return deleteQuery("TableMessage", DeleteQueryString);
        }

    }


    public class Link : DataBaseOperations
    {        
        public string linkAouthorType;
        public string linkType;
        public bool   linkShowingPermision;
        public int    linkID;
        public string linkAouthorName;
        public string linkAouthorLastName;
        public int    linkAouthorID;
        public string linkAddress;
        public string linkTitle;
        public string linkBranchName;


        public SqlException insertLink()
        {
            fieldsOfTable[0] = "linkAouthorType";
            fieldsOfTable[1] = "linkType";
            fieldsOfTable[2] = "linkAouthorName";
            fieldsOfTable[3] = "linkAouthorLastName";
            fieldsOfTable[4] = "linkAouthorID";
            fieldsOfTable[5] = "linkAddress";
            fieldsOfTable[6] = "linkTitle";
            fieldsOfTable[7] = "linkBranchName";



            valuesOfField[0] = linkAouthorType;
            valuesOfField[1] = linkType;
            valuesOfField[2] = linkAouthorName;
            valuesOfField[3] = linkAouthorLastName;
            valuesOfField[4] = linkAouthorID.ToString();
            valuesOfField[5] = linkAddress;
            valuesOfField[6] = linkTitle;
            valuesOfField[7] = linkBranchName;      
                               

            return insertQuery("TableLink", fieldsOfTable, valuesOfField);
        }

        public DataTable showLink(string fieldsOfTable, string Condition, string OrderBy)
        {
            return selectQueryDataTable("TableLink", fieldsOfTable, Condition, OrderBy);
        }

        public SqlException updateLink(string UpdateQueryString)
        {
            return updateQuery("TableLink", UpdateQueryString);

        }

        public SqlException deleteLink(string DeleteQueryString)
        {
            return deleteQuery("TableLink", DeleteQueryString);
        }

    }


    public class News : DataBaseOperations
    {
        public string newsTitle;
        public string newsPassage;
        public string newsDate;
        public int    newsViewerCounter;
        public string newsAouthorType;
        public string newsType;
        public bool   newsShowingPermision;
        public int    newsID;
        public string newsAouthorName;
        public string newsAouthorLastName;
        public int    newsAouthorID;
        public string newsPriority;
        public string newsPictureName;
        public string newsRelatedLink;
        public string newsUploadedFileName;
        public string newsUploadedFileType;
        public string newsShoingwToWhatMemberType;
        public bool   newsDownloadingFilePermision;
        public string newsDownloadingFileByWhatMemberType;
        public string newsBranchName;
        public bool newsArchieve;

        public SqlException insertNews()
        {
            fieldsOfTable[0] = "newsTitle";
            fieldsOfTable[1] = "newsPassage";
            fieldsOfTable[2] = "newsDate";
            fieldsOfTable[3] = "newsDownloadingFileByWhatMemberType";
            fieldsOfTable[4] = "newsAouthorType";
            fieldsOfTable[5] = "newsType";
            fieldsOfTable[6] = "newsShowingPermision";
            fieldsOfTable[7] = "newsAouthorName";
            fieldsOfTable[8] = "newsAouthorLastName";
            fieldsOfTable[9] = "newsAouthorID";
            fieldsOfTable[10] = "newsPriority";
            fieldsOfTable[11] = "newsPictureName";
            fieldsOfTable[12] = "newsRelatedLink";
            fieldsOfTable[13] = "newsUploadedFileName";
            fieldsOfTable[14] = "newsUploadedFileType";
            fieldsOfTable[15] = "newsShoingwToWhatMemberType";
            fieldsOfTable[16] = "newsDownloadingFilePermision";
            fieldsOfTable[17] = "newsBranchName";



            valuesOfField[0] = newsTitle;
            valuesOfField[1] = newsPassage;
            valuesOfField[2] = newsDate;
            valuesOfField[3] = newsDownloadingFileByWhatMemberType;
            valuesOfField[4] = newsAouthorType;
            valuesOfField[5] = newsType;
            valuesOfField[6] = newsShowingPermision.ToString();
            valuesOfField[7] = newsAouthorName;
            valuesOfField[8] = newsAouthorLastName;
            valuesOfField[9] = newsAouthorID.ToString();
            valuesOfField[10] = newsPriority;
            valuesOfField[11] = newsPictureName;
            valuesOfField[12] = newsRelatedLink;
            valuesOfField[13] = newsUploadedFileName;
            valuesOfField[14] = newsUploadedFileType;
            valuesOfField[15] = newsShoingwToWhatMemberType;
            valuesOfField[16] = newsDownloadingFilePermision.ToString();
            valuesOfField[17] = newsBranchName;


            return insertQuery("TableNews", fieldsOfTable, valuesOfField);
        }

        public DataTable showNews(string fieldsOfTable, string Condition, string OrderBy)
        {
            return selectQueryDataTable("TableNews", fieldsOfTable, Condition, OrderBy);
        }

        public SqlException updateNews(string UpdateQueryString)
        {
            return updateQuery("TableNews", UpdateQueryString);

        }

        public SqlException deleteNews(string DeleteQueryString)
        {
            return deleteQuery("TableNews", DeleteQueryString);
        }

    }
    
    
    public class Picture : DataBaseOperations
    {
        public string PictureName;
        public string PictureTitle;
        public string PictureDescription;
        public int    PictureID;
        public string PicturePriority;
        public string PictureAccessLevel;
        public string PictureDate;
        public string PictureTime;
        public string PictureLocation;
        public string PictureType;
        public string PictureGalleryPicID;
        public string PictureOwnerName;
        public string PictureOwnerLastName;
        public int PictureOwnerID;
        public bool PictureArchieve;



        public SqlException insertPicture()
        {
            fieldsOfTable[0] = "PictureName";
            fieldsOfTable[1] = "PictureTitle";
            fieldsOfTable[2] = "PictureDescription";
            fieldsOfTable[3] = "PicturePriority";
            fieldsOfTable[4] = "PictureType";
            fieldsOfTable[5] = "PictureAccessLevel";
            fieldsOfTable[6] = "PictureDate";
            fieldsOfTable[7] = "PictureTime";
            fieldsOfTable[8] = "PictureLocation";
            fieldsOfTable[9] = "PictureGalleryPicID";
            fieldsOfTable[10] = "PictureOwnerName";
            fieldsOfTable[11] = "PictureOwnerLastName";
            fieldsOfTable[12] = "PictureOwnerID";


            valuesOfField[0] = PictureName;
            valuesOfField[1] = PictureTitle;
            valuesOfField[2] = PictureDescription;
            valuesOfField[3] = PicturePriority;
            valuesOfField[4] = PictureType;
            valuesOfField[5] = PictureAccessLevel;
            valuesOfField[6] = PictureDate;
            valuesOfField[7] = PictureTime;
            valuesOfField[8] = PictureLocation;
            valuesOfField[9] = PictureGalleryPicID;
            valuesOfField[10] = PictureOwnerName;
            valuesOfField[11] = PictureOwnerLastName;
            valuesOfField[12] = PictureOwnerID.ToString();


            return insertQuery("TablePicture", fieldsOfTable, valuesOfField);
        }

        public DataTable showPicture(string fieldsOfTable, string Condition)
        {
            return selectQueryDataTable("TablePicture", fieldsOfTable, Condition, null);
        }
        ///

        public SqlException updatePicture(string UpdateQueryString)
        {
            return updateQuery("TablePicture", UpdateQueryString);

        }

        public SqlException deletePicture(string DeleteQueryString)
        {
            return deleteQuery("TablePicture", DeleteQueryString);
        }

    }   
    
    
    public class GalleryPicture : DataBaseOperations
    {
        public string GalleryPicTitle;
        public string GalleryPicDate;
        public string GalleryPicTime;
        public string GalleryPicPriority;
        public string GalleryPicAccessLevel;
        public int    GalleryPicID;
        public string GalleryPicDescription;
        public string GalleryPicLocation;
        public string GalleryPicType;
        public int    GalleryPicOwnerID;
        public string GalleryPicOwnerType;
        public bool   GalleryPicPublicShowing;
        public string GalleryPicThumbPictureName;
        public string GalleryPicOwnerName;
        public string GalleryPicOwnerLastName;

        public SqlException insertGalleryPicture()
        {
            fieldsOfTable[0] = "GalleryPicTitle";
            fieldsOfTable[1] = "GalleryPicDate";
            fieldsOfTable[2] = "GalleryPicPriority";
            fieldsOfTable[3] = "GalleryPicAccessLevel";
            fieldsOfTable[4] = "GalleryPicDescription";
            fieldsOfTable[5] = "GalleryPicLocation";
            fieldsOfTable[6] = "GalleryPicType";
            fieldsOfTable[7] = "GalleryPicTime";
            fieldsOfTable[8] = "GalleryPicOwnerID";
            fieldsOfTable[9] = "GalleryPicOwnerType";
            fieldsOfTable[10] = "GalleryPicOwnerName";
            fieldsOfTable[11] = "GalleryPicOwnerLastName";

            valuesOfField[0] = GalleryPicTitle;
            valuesOfField[1] = GalleryPicDate;
            valuesOfField[2] = GalleryPicPriority;
            valuesOfField[3] = GalleryPicAccessLevel;
            valuesOfField[4] = GalleryPicDescription;
            valuesOfField[5] = GalleryPicLocation;
            valuesOfField[6] = GalleryPicType;
            valuesOfField[7] = GalleryPicTime;
            valuesOfField[8] = GalleryPicOwnerID.ToString();
            valuesOfField[9] = GalleryPicOwnerType;
            valuesOfField[10] = GalleryPicOwnerName;
            valuesOfField[11] = GalleryPicOwnerLastName;

            return insertQuery("TableGalleryPicture", fieldsOfTable, valuesOfField);
        }        
        
        public DataTable showGalleryPicture(string fieldsOfTable, string Condition)
        {
            return selectQueryDataTable("TableGalleryPicture", fieldsOfTable, Condition, null);
        }
        ///

        public SqlException updateGalleryPicture(string UpdateQueryString)
        {
            return updateQuery("TableGalleryPicture", UpdateQueryString);

        }

        public SqlException deleteGalleryPicture(string DeleteQueryString)
        {
            return deleteQuery("TableGalleryPicture", DeleteQueryString);
        }

        ///
    }
    
    
    public class CourseGroup : DataBaseOperations
    {
        public string CourseGroupTeacherName;
        public string CourseGroupTeacherLastName;
        public int    CourseGroupYear;	            
        public string CourseGroupTerm;	            
        public string CourseGroupUniversityName;	    
        public string CourseGroupCourseName;    
        public string CourseGroupNumber;	        
        public string CourseGroupClassNumber;	    
        public int    CourseGroupClassTotalCapicity;
        public int    CourseGroupClassEmptyCapicity;
        public int    CourseGroupClassFullCapicity;
        public string CourseGroupMidTermDate;	    
        public string CourseGroupMidTermTime;	    
        public string CourseGroupFinalDate;	    
        public string CourseGroupFinalTime;	    
        public string CourseGroupPracticalDate;	
        public string CourseGroupPracticalTime;	
        public string CourseGroupExerciseDate;	      
        public string CourseGroupExerciseTime;
        public string CourseGroupEducationLevel;

        public DataTable showSelectedCourseGroupInformation(string fieldsOfTable, string Condition)
        {
            return selectQueryDataTable("TableCourseGroup", fieldsOfTable, Condition, null);
        }
        ///

        public DataTable showAllCourseGroups(string fieldsOfTable, string Condition, string GroupByHvingOderBy)
        {
            return selectQueryDataTable("TableCourseGroup", fieldsOfTable, Condition, GroupByHvingOderBy);
        }

        ///

        public SqlException updateCourseGroup(string UpdateQueryString)
        {
            return updateQuery("TableCourseGroup", UpdateQueryString);

        }

        ///

        public SqlException insertCourseGroup()
        {
            fieldsOfTable[0] = "CourseGroupTeacherName";
            fieldsOfTable[1] = "CourseGroupTeacherLastName";
            fieldsOfTable[2] = "CourseGroupClassFullCapicity";
            fieldsOfTable[3]="CourseGroupUniversityNameCourseNameYearTermGroupNumber";
            fieldsOfTable[4]="CourseGroupUniversityName";
            fieldsOfTable[5]="CourseGroupCourseName";
            fieldsOfTable[6] = "CourseGroupNumber";
            fieldsOfTable[7]="CourseGroupClassNumber";
            fieldsOfTable[8] ="CourseGroupClassTotalCapicity";
            fieldsOfTable[9]="CourseGroupMidTermDate";
            fieldsOfTable[10]="CourseGroupMidTermTime";
            fieldsOfTable[11]="CourseGroupFinalDate";
            fieldsOfTable[12]="CourseGroupFinalTime";
            fieldsOfTable[13]="CourseGroupPracticalDate";
            fieldsOfTable[14]="CourseGroupPracticalTime";
            fieldsOfTable[15]="CourseGroupExerciseDate";
            fieldsOfTable[16]="CourseGroupExerciseTime";
            fieldsOfTable[17]="CourseGroupClassEmptyCapicity";
            fieldsOfTable[18] = "CourseGroupEducationLevel";
           


            valuesOfField[0] = CourseGroupTeacherName;
            valuesOfField[1] = CourseGroupTeacherLastName;
            valuesOfField[2] = CourseGroupClassFullCapicity.ToString();
            valuesOfField[3] = CourseGroupYear + " - " + CourseGroupTerm;
            //CourseGroupCourseName + " " + CourseGroupYear + " - " + CourseGroupTerm + " گروه " + CourseGroupNumber;
            valuesOfField[4] = CourseGroupUniversityName;
            valuesOfField[5] = CourseGroupCourseName;
            valuesOfField[6] = CourseGroupNumber;
            valuesOfField[7] = CourseGroupClassNumber;
            valuesOfField[8] = CourseGroupClassTotalCapicity.ToString();
            valuesOfField[9] = CourseGroupMidTermDate;
            valuesOfField[10] = CourseGroupMidTermTime;
            valuesOfField[11] = CourseGroupFinalDate;
            valuesOfField[12] = CourseGroupFinalTime;
            valuesOfField[13] = CourseGroupPracticalDate;
            valuesOfField[14] = CourseGroupPracticalTime;
            valuesOfField[15] = CourseGroupExerciseDate;
            valuesOfField[16] = CourseGroupExerciseTime;
            valuesOfField[17] = CourseGroupClassEmptyCapicity.ToString();
            valuesOfField[18] = CourseGroupEducationLevel.ToString();



            return insertQuery("TableCourseGroup", fieldsOfTable, valuesOfField);
        }

        ///

        public SqlException deleteCourseGroup(string DeleteQueryString)
        {
            return deleteQuery("TableCourseGroup", DeleteQueryString);
        }
    }
    

    public class Course : DataBaseOperations
    {
        public int    CourseID;
        public string CourseName;
        public string CourseEducationLevel;
        public int    CourseTheoryUnit;
        public int    CoursePracticalUnit;
        public string CourseFacultyName;
        public string CourseEducationBranchName;
        public int    CourseSemisterNumber;
        public string CourseType;
        
        

        

        public DataTable showSelectedCourseInformation(string fieldsOfTable, string Condition)
        {
            return selectQueryDataTable("TableCourse", fieldsOfTable, Condition, null);
        }
        ///

        public DataTable showAllCourses(string fieldsOfTable, string Condition, string GroupByHvingOderBy)
        {
            return selectQueryDataTable("TableCourse", fieldsOfTable, Condition, GroupByHvingOderBy);
        }

        ///

        public SqlException updateCourse(string UpdateQueryString)
        {
            return updateQuery("TableCourse", UpdateQueryString);

        }

        ///

        public SqlException insertCourse()
        {
            fieldsOfTable[0] = "CourseID";
            fieldsOfTable[1] = "CourseName";
            fieldsOfTable[2] = "CourseEducationLevel";
            fieldsOfTable[3] = "CourseTheoryUnit";
            fieldsOfTable[4] = "CoursePracticalUnit";
            fieldsOfTable[5] = "CourseFacultyName";
            fieldsOfTable[6] = "CourseEducationBranchName";
            fieldsOfTable[7] = "CourseSemisterNumber";
            fieldsOfTable[8] = "CourseType";
            

            valuesOfField[0] = CourseID.ToString();
            valuesOfField[1] = CourseName;
            valuesOfField[2] = CourseEducationLevel;
            valuesOfField[3] = CourseTheoryUnit.ToString();
            valuesOfField[4] = CoursePracticalUnit.ToString();
            valuesOfField[5] = CourseFacultyName;
            valuesOfField[6] = CourseEducationBranchName;
            valuesOfField[7] = CourseSemisterNumber.ToString();
            valuesOfField[8] = CourseType.ToString();

            return insertQuery("TableCourse", fieldsOfTable, valuesOfField);
        }

        ///

        public SqlException deleteCourse(string DeleteQueryString)
        {
            return deleteQuery("TableCourse", DeleteQueryString);
        }
    }
   
    
    public class Teacher : DataBaseOperations
    {
        public int     UserTeacherID;		
        public string  UserTeacherName;
        public string  UserTeacherLastName;
        public string  UserTeacherUserName;
        public string  UserTeacherPassword;
        public string  UserTeacherFinalEducationLevel;	
        public string  UserTeacherSpecialty;	
        public string  UserTeacherLastLogin;	
        public Boolean UserTeacherOnline;
        public string  UserTeacherWebSite;	
        public string  UserTeacherEmail;
        public string  UserTeacherPicture;
        public string  UserTeacherSex;

        public string  UserTeacherOfficeName;
        public string  UserTeacherPhone;
        public string  UserTeacherCellPhone;
        public string  UserTeacherType;
        public Boolean UserTeacherDeleted;
        public Boolean UserTeacherBlocked;
        public int     UserTeacherSiteViewCounter;
        public string  UserTeacherStatus;
        public string  UserTeacherAddress;
        

        public DataTable showSelectedTeacherInformation(string fieldsOfTable, string Condition)
        {
            return selectQueryDataTable("TableUserTeacher", fieldsOfTable, Condition, null);
        }
        ///

        public DataTable showAllTeachers(string fieldsOfTable, string Condition, string GroupByHvingOderBy)
        {
            return selectQueryDataTable("TableUserTeacher", fieldsOfTable, Condition, GroupByHvingOderBy);
        }

        ///

        public SqlException updateTeacher(string UpdateQueryString)
        {
            return updateQuery("TableUserTeacher", UpdateQueryString);

        }

        ///

        public SqlException insertTeacher()
        {
            
            fieldsOfTable[0] = "UserTeacherID";	
            fieldsOfTable[1] = "UserTeacherName";
            fieldsOfTable[2] = "UserTeacherLastName";
            fieldsOfTable[3] = "UserTeacherUserName";
            fieldsOfTable[4] = "UserTeacherPassword";
            fieldsOfTable[5] = "UserTeacherFinalEducationLevel";
            fieldsOfTable[6] = "UserTeacherSpecialty";
            fieldsOfTable[7] = "UserTeacherWebSite";
            fieldsOfTable[8] = "UserTeacherEmail";
            fieldsOfTable[9] = "UserTeacherAddress";
            fieldsOfTable[10] = "UserTeacherSex";

            fieldsOfTable[11] = "UserTeacherOfficeName";
            fieldsOfTable[12] = "UserTeacherPhone";
            fieldsOfTable[13] = "UserTeacherCellPhone";
                                    

            valuesOfField[0] = UserTeacherID.ToString();	
            valuesOfField[1] = UserTeacherName;
            valuesOfField[2] = UserTeacherLastName;
            valuesOfField[3] = UserTeacherUserName;
            valuesOfField[4] = UserTeacherPassword;
            valuesOfField[5] = UserTeacherFinalEducationLevel;
            valuesOfField[6] = UserTeacherSpecialty;
            valuesOfField[7] = UserTeacherWebSite;
            valuesOfField[8] = UserTeacherEmail;
            valuesOfField[9] = UserTeacherAddress;
            valuesOfField[10] = UserTeacherSex;

            valuesOfField[11] = UserTeacherOfficeName;
            valuesOfField[12] = UserTeacherPhone;
            valuesOfField[13] = UserTeacherCellPhone;
            
             

            return insertQuery("TableUserTeacher", fieldsOfTable, valuesOfField);
        }

        ///

        public SqlException deleteTeacher(string DeleteQueryString)
        {
            return deleteQuery("TableUserTeacher", DeleteQueryString);
        }
    }
    
    
    public class Student : DataBaseOperations
    {
        public int     UserStudentID;
        public string  UserStudentUnivesityName;
        public string  UserStudentName;      
        public string  UserStudentLastName;
        public string  UserStudentUserName;
        public string  UserStudentPassword;
        public string  UserStudentEducationLevel;
        public string  UserStudentEducationBranchName;
        public string  UserStudentLastLogin;
        public Boolean UserStudentOnline;
	    public string  UserStudentWebSite;
        public string  UserStudentEmail;
        public string  UserStudentPicture;
        public string  UserStudentSex;

        public string  UserStudentOfficeName;
        public string  UserStudentPhone;
        public string  UserStudentCellPhone;
        public string  UserStudentType;
        public Boolean UserStudentDeleted;
        public Boolean UserStudentBlocked;
        public int     UserStudentSiteViewCounter;
        public string  UserStudentStatus;

        public string  UserStudentAddress;
        public string  UserStudentSpecialty;
	  


        public DataTable showSelectedStudentInformation(string fieldsOfTable, string Condition)
        {
            return selectQueryDataTable("TableUserStudent", fieldsOfTable, Condition, null);
        }
        ///

        public DataTable showAllStudents(string fieldsOfTable, string Condition, string GroupByHvingOderBy)
        {
            return selectQueryDataTable("TableUserStudent", fieldsOfTable, Condition, GroupByHvingOderBy);
        }

        ///

        public SqlException updateStudent(string UpdateQueryString)
        {
            return updateQuery("TableUserStudent", UpdateQueryString);

        }

        ///

        public SqlException insertStudent()
        {
            fieldsOfTable[0] = "UserStudentID";
            fieldsOfTable[1] = "UserStudentUnivesityName";
            fieldsOfTable[2] = "UserStudentName";      
            fieldsOfTable[3] = "UserStudentLastName";
            fieldsOfTable[4] = "UserStudentUserName";
            fieldsOfTable[5] = "UserStudentPassword";
            fieldsOfTable[6] = "UserStudentEducationLevel";
            fieldsOfTable[7] = "UserStudentEducationBranchName";
            fieldsOfTable[8] = "UserStudentWebSite";
            fieldsOfTable[9] = "UserStudentEmail";
            fieldsOfTable[10] ="UserStudentPicture";
            fieldsOfTable[11] = "UserStudentSex";
            

            fieldsOfTable[12] = "UserStudentPhone";
            fieldsOfTable[13] = "UserStudentCellPhone";
            fieldsOfTable[14] = "UserStudentStatus";
            fieldsOfTable[15] = "UserStudentType";
            fieldsOfTable[16] = "UserStudentDeleted";
            fieldsOfTable[17] = "UserStudentBlocked";
            fieldsOfTable[18] = "UserStudentSiteViewCounter";
            fieldsOfTable[19] = "UserStudentOfficeName";
            fieldsOfTable[20] ="UserStudentAddress";
            fieldsOfTable[21] ="UserStudentSpecialty";
          

            valuesOfField[0] = UserStudentID.ToString();
            valuesOfField[1] = UserStudentUnivesityName.ToString();
            valuesOfField[2] = UserStudentName;
            valuesOfField[3] = UserStudentLastName;
            valuesOfField[4] = UserStudentUserName;
            valuesOfField[5] = UserStudentPassword;
            valuesOfField[6] = UserStudentEducationLevel;
            valuesOfField[7] = UserStudentEducationBranchName;
            valuesOfField[8] = UserStudentWebSite;
            valuesOfField[9] = UserStudentEmail;
            valuesOfField[10] = UserStudentPicture;
            valuesOfField[11] = UserStudentSex;

            valuesOfField[12] = UserStudentPhone;
            valuesOfField[13] = UserStudentCellPhone;
            valuesOfField[14] = UserStudentStatus;
            valuesOfField[15] = UserStudentType;
            valuesOfField[16] = UserStudentDeleted.ToString();
            valuesOfField[17] = UserStudentBlocked.ToString();
            valuesOfField[18] = UserStudentSiteViewCounter.ToString();
            valuesOfField[19] = UserStudentOfficeName;
            valuesOfField[20] = UserStudentAddress;
            valuesOfField[21] = UserStudentSpecialty;   
      


        Message msg = new Message();

        PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
        perdate.SelectedDateTime = DateTime.Now;

        msg.messageTitle = "تبریک عضویت شما";
        msg.messagePassage = "دانشجو و دوست گرامی با تشکر از عضویت شما در سایت امید است امکانات فراهم شده رضایت خاطر شما را فراهم آورد. تلاش بر این است که امکانات بیشتری و در آینده ای نزدیک به سایت اضافه گردد. نظرات و پیشنهادات خود را به مدیریت سایت ارسال نمایید با تشکر";
        msg.messageDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

        msg.messageSenderType = "Admin";
        msg.messageRecieverType = "Student";

        msg.messageSenderName = "مدیریت";
        msg.messageSenderLastName = "سایت";
        msg.messageCourseGroupID =-1;

        msg.messageRecieverName = UserStudentName;
        msg.messageRecieverLastName = UserStudentLastName;
        msg.messageStudentID = UserStudentID;
        msg.insertMessage();

            
            return insertQuery("TableUserStudent", fieldsOfTable, valuesOfField);
        }

        ///

        public SqlException deleteStudent(string DeleteQueryString)
        {
            return deleteQuery("TableUserStudent", DeleteQueryString);
        }
    }
    
   
    public class University : DataBaseOperations
    {
        public string UniversityName;
        public int    UniversityID;
        public string UniversityAddress;
        public string UniversityTelephone;
        public string UniversityWebSite;
        public string UniversityEmail;



        
        public DataTable showSelectedUniversityInformation(string fieldsOfTable, string Condition)
        {
            return selectQueryDataTable("TableUniversity", fieldsOfTable ,Condition ,null);
        }        
        ///

        public DataTable showAllUniversities(string fieldsOfTable, string Condition, string GroupByHvingOderBy)
        {
            return selectQueryDataTable("TableUniversity", fieldsOfTable, Condition, GroupByHvingOderBy);
        }

        ///
        
        public SqlException updateUniversity(string UpdateQueryString)
        {
            return updateQuery("TableUniversity",UpdateQueryString);

        }
        
        ///
               
        public  SqlException insertUniversity()
        {
            fieldsOfTable[0]="UniversityName";
            fieldsOfTable[1]="UniversityAddress";
            fieldsOfTable[2]="UniversityTelephone";
            fieldsOfTable[3]="UniversityWebSite";
            fieldsOfTable[4]="UniversityEmail";

            valuesOfField[0]=UniversityName;
            valuesOfField[1]=UniversityAddress;
            valuesOfField[2]=UniversityTelephone;
            valuesOfField[3]=UniversityWebSite;
            valuesOfField[4]=UniversityEmail;

            return insertQuery("TableUniversity", fieldsOfTable, valuesOfField);
        }

        ///

        public SqlException deleteUniversity(string DeleteQueryString)
        {
            return deleteQuery("TableUniversity", DeleteQueryString);
        }
      }


    public class EducationBranch : DataBaseOperations
    {
        public string EducationBranchName;

        public DataTable showSelectedInformation(string fieldsOfTable, string Condition)
        {
            return selectQueryDataTable("TableEducationBranch", fieldsOfTable, Condition, null);
        }
        ///

        public DataTable showAllBranchs(string fieldsOfTable, string Condition, string GroupByHvingOderBy)
        {
            return selectQueryDataTable("TableEducationBranch", fieldsOfTable, Condition, GroupByHvingOderBy);
        }

        ///

        public SqlException updateBranch(string UpdateQueryString)
        {
            return updateQuery("TableEducationBranch", UpdateQueryString);

        }

        ///

        public SqlException insertBranch()
        {
            fieldsOfTable[0] = "EducationBranchName";
            valuesOfField[0] = EducationBranchName;

            return insertQuery("TableEducationBranch", fieldsOfTable, valuesOfField);
        }

        ///

        public SqlException deleteBranch(string DeleteQueryString)
        {
            return deleteQuery("TableEducationBranch", DeleteQueryString);
        }

    }
   
}
