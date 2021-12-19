USE Portal;

Create Table Roles (
	RoleID int Not Null Primary Key,
	RoleName varChar(20) Not Null
);

Create Table Addresses (
	AddressID int Not Null Primary Key,
	BuildingNumber varChar(20) Not Null,
	Street varChar(50) Not Null,
	PostCode varChar(20) Not Null,
	City varChar(20) Not Null,
	Country varChar(20) Not Null
);

Create Table Users (
	UserID int Not Null Primary Key,
	RoleID int Not Null Foreign Key References Roles (RoleID),
	AddressID int Not Null Foreign Key References Addresses(AddressID),
	Email varChar(50) Not Null,
	Telephone VarChar(50) Not Null,
	Title varChar(10) Not Null,
	FirstName varChar(50) Not Null,
	LastName varChar(50) Not Null,
	DOB varChar(30) Not Null,
	IsDeleted bit,
	RegisteredOffice varChar(50),
	PassPortNumber varChar(50)
);

Create Table Businesses (
	BusinessID int Not Null Primary Key,
	UserID int Not Null Foreign Key References Users(UserID),
	RegisteredOffice varChar(100) Not Null,
	DateOfIncorporation varChar(30) Not Null,
	BusinessName varChar(30) Not Null
)

Create Table Shareholders (
	ShareholderID int Not Null,
	BusinessID int Not Null,
	Primary Key (ShareholderID),
	Foreign Key (BusinessID) References Businesses(BusinessID)
);

Create Table Consents (
	ConsentID int Not Null Primary Key,
	Consent_Signature Blob Not Null,
	SignatureDate varChar(30) Not Null
);

