from setuptools import setup

setup(
    name='siphon', # Consistent package name
    version='1.5.0', # Hardcoded version for simplicity
    author='Morgan Joyce',
    author_email='morganj2k@gmail.com',
    description='A tool to efficiently extract and compress Git repository contents for LLMs.',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    url='https://github.com/atxtechbro/siphon',
    py_modules=['siphon'], # Declare siphon.py as a module
    install_requires=[
        'gitpython',
        'colorama',
    ],
    entry_points={
        'console_scripts': [
            'si=siphon:main',
        ],
    },
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)