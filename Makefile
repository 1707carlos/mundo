# Variables
CXX = g++
CXXFLAGS = -Iinclude -Wall -std=c++11
SRC = src/main.cpp src/funciones.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = app

# Regla principal
all: $(TARGET)
	@echo "✅ Compilación completada. Ejecuta ./$(TARGET)"

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJ)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Limpieza
clean:
	rm -f $(OBJ) $(TARGET)
	@echo "🧹 Proyecto limpio ✔"

# Rebuild
rebuild: clean all
