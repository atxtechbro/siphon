from setuptools import find_packages, setup

setup(
    name='siphon-cli',
    version='1.4.0',
    author='Morgan Joyce',
    author_email='morganj2k@gmail.com',
    description='A tool to efficiently extract and compress Git repository contents for LLMs.',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    url='https://github.com/atxtechbro/siphon',
    packages=find_packages(),
    py_modules=['siphon'],
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
