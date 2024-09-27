class Book:
totalBooks = 0  # static property to track the total number of books created

def __init__(self, title, author, publicationYear):
self.title = title
self.author = author
self.publicationYear = publicationYear
self.pagesRead = 0  # initialize pages read to 0
Book.totalBooks += 1  # increment the total number of books when a new book is created

def read(self, pages):
"""Add pages to the pagesRead property."""
self.pagesRead += pages

def getPagesRead(self):
"""Return the number of pages read so far."""
return self.pagesRead

def getTitle(self):
"""Return the title of the book."""
return self.title

def getAuthor(self):
"""Return the author of the book."""
return self.author

def getPublicationYear(self):
"""Return the publication year of the book."""
return self.publicationYear

def getBookAge(self):
"""Return the age of the book."""
current_year = 2024  # Assuming current year is 2024
return current_year - self.publicationYear


def main():
# Creating three Book objects
book1 = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925)
book2 = Book("1984", "George Orwell", 1949)
book3 = Book("To Kill a Mockingbird", "Harper Lee", 1960)

# Simulating reading pages for each book
book1.read(50)
book2.read(100)
book3.read(30)

# Printing details of each book
books = [book1, book2, book3]
for book in books:
print(f"Title: {book.getTitle()}")
print(f"Author: {book.getAuthor()}")
print(f"Publication Year: {book.getPublicationYear()}")
print(f"Pages Read: {book.getPagesRead()}")
print(f"Book Age: {book.getBookAge()} years")
print("")

# Displaying total number of Book objects created
print(f"Total number of books created: {Book.totalBooks}")


# Running the main function
main()