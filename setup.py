from setuptools import setup, find_packages


with open('README.md', 'r', encoding='utf-8') as f:
    long_description = f.read()

setup(
    name='pyhead-demo',  
    version='0.1.0',     
    packages=find_packages(),
    install_requires=[
        'click',  
    ],
    entry_points={
        'console_scripts': [
            
            'pyhead-demo=pyhead_demo.__main__:pyhead', 
        ],
    },
    author='Анастасія',
    author_email='trushchaknastya@gmail.com',
    description='A Python implementation of the head command.',
    long_description=long_description,
    long_description_content_type='text/markdown',
    url='https://github.com/anastasiatrushchak/pyhead-demo',
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.7', 
)