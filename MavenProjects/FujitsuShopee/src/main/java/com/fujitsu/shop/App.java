package com.fujitsu.shop;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        
        System.out.println("welcome");
        
		Product product=new Product(101,"TV","LG",45000);
		product.display();
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("JDBC Driver Loaded");
		
		}catch(Exception e){
		
			e.printStackTrace();
		}
    }
}
