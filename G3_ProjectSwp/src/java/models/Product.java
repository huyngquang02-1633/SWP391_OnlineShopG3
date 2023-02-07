/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class Product {
    private int ProductID;
    private String ProductName;
    private int CategoryID;
    private int GenreID;
    private double CoverPrice;
    private double SalePrice;
    private int AuthorID;
    private String Translator;
    private int PublisherID;
    private int ReleaseCompanyID;
    private String Language;
    private String Size;
    private double Weight;
    private int NumerOfPage;
    private String Format;
    private int Image;
    private Date PublishDate;
    private String PublishingLicense;
    private String Description;
    private int Discontinued;

    public Product(int ProductID, String ProductName, int CategoryID, int GenreID, double CoverPrice, double SalePrice, int AuthorID, String Translator, int PublisherID, int ReleaseCompanyID, String Language, String Size, double Weight, int NumerOfPage, String Format, int Image, Date PublishDate, String PublishingLicense, String Description, int Discontinued) {
        this.ProductID = ProductID;
        this.ProductName = ProductName;
        this.CategoryID = CategoryID;
        this.GenreID = GenreID;
        this.CoverPrice = CoverPrice;
        this.SalePrice = SalePrice;
        this.AuthorID = AuthorID;
        this.Translator = Translator;
        this.PublisherID = PublisherID;
        this.ReleaseCompanyID = ReleaseCompanyID;
        this.Language = Language;
        this.Size = Size;
        this.Weight = Weight;
        this.NumerOfPage = NumerOfPage;
        this.Format = Format;
        this.Image = Image;
        this.PublishDate = PublishDate;
        this.PublishingLicense = PublishingLicense;
        this.Description = Description;
        this.Discontinued = Discontinued;
    }
    
    
    

    public Product(int productID, String productName, int categoryID, String quantityPerUnit, boolean discontinued) {
        this.ProductID = productID;
        this.ProductName = productName;
        this.CategoryID = categoryID;
        this.QuantityPerUnit = quantityPerUnit;
        this.Discontinued = discontinued;
    }

    public Product(String productName, int categoryID, String quantityPerUnit, boolean discontinued) {
        
        this.ProductName = productName;
        this.CategoryID = categoryID;
        this.QuantityPerUnit = quantityPerUnit;
        this.Discontinued = discontinued;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public int getCategoryID() {
        return CategoryID;
    }

    public void setCategoryID(int CategoryID) {
        this.CategoryID = CategoryID;
    }

    public int getGenreID() {
        return GenreID;
    }

    public void setGenreID(int GenreID) {
        this.GenreID = GenreID;
    }

    public double getCoverPrice() {
        return CoverPrice;
    }

    public void setCoverPrice(double CoverPrice) {
        this.CoverPrice = CoverPrice;
    }

    public double getSalePrice() {
        return SalePrice;
    }

    public void setSalePrice(double SalePrice) {
        this.SalePrice = SalePrice;
    }

    public int getAuthorID() {
        return AuthorID;
    }

    public void setAuthorID(int AuthorID) {
        this.AuthorID = AuthorID;
    }

    public String getTranslator() {
        return Translator;
    }

    public void setTranslator(String Translator) {
        this.Translator = Translator;
    }

    public int getPublisherID() {
        return PublisherID;
    }

    public void setPublisherID(int PublisherID) {
        this.PublisherID = PublisherID;
    }

    public int getReleaseCompanyID() {
        return ReleaseCompanyID;
    }

    public void setReleaseCompanyID(int ReleaseCompanyID) {
        this.ReleaseCompanyID = ReleaseCompanyID;
    }

    public String getLanguage() {
        return Language;
    }

    public void setLanguage(String Language) {
        this.Language = Language;
    }

    public String getSize() {
        return Size;
    }

    public void setSize(String Size) {
        this.Size = Size;
    }

    public double getWeight() {
        return Weight;
    }

    public void setWeight(double Weight) {
        this.Weight = Weight;
    }

    public int getNumerOfPage() {
        return NumerOfPage;
    }

    public void setNumerOfPage(int NumerOfPage) {
        this.NumerOfPage = NumerOfPage;
    }

    public String getFormat() {
        return Format;
    }

    public void setFormat(String Format) {
        this.Format = Format;
    }

    public int getImage() {
        return Image;
    }

    public void setImage(int Image) {
        this.Image = Image;
    }

    public Date getPublishDate() {
        return PublishDate;
    }

    public void setPublishDate(Date PublishDate) {
        this.PublishDate = PublishDate;
    }

    public String getPublishingLicense() {
        return PublishingLicense;
    }

    public void setPublishingLicense(String PublishingLicense) {
        this.PublishingLicense = PublishingLicense;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public int getDiscontinued() {
        return Discontinued;
    }

    public void setDiscontinued(int Discontinued) {
        this.Discontinued = Discontinued;
    }

    @Override
    public String toString() {
        return "Product{" + "ProductID=" + ProductID + ", ProductName=" + ProductName + ", CategoryID=" + CategoryID + ", GenreID=" + GenreID + ", CoverPrice=" + CoverPrice + ", SalePrice=" + SalePrice + ", AuthorID=" + AuthorID + ", Translator=" + Translator + ", PublisherID=" + PublisherID + ", ReleaseCompanyID=" + ReleaseCompanyID + ", Language=" + Language + ", Size=" + Size + ", Weight=" + Weight + ", NumerOfPage=" + NumerOfPage + ", Format=" + Format + ", Image=" + Image + ", PublishDate=" + PublishDate + ", PublishingLicense=" + PublishingLicense + ", Description=" + Description + ", Discontinued=" + Discontinued + '}';
    }
    
    
    

}
