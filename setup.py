from setuptools import setup, find_packages

setup(
    name='siphon-cli',  # Use a hyphenated name, best practice
    version='1.5.0',  # Hardcoded version is okay for this example
    author='Morgan Joyce',
    author_email='morganj2k@gmail.com',
    description='A tool to efficiently extract and compress Git repository contents for LLMs.',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    url='https://github.com/atxtechbro/siphon',
    packages=find_packages(),  # Use find_packages() to automatically discover packages
    install_requires=[
        'gitpython',
        'colorama',
    ],
    entry_points={
        'console_scripts': [
            'siphon=siphon:main',  # Better entry point name
        ],
    },
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)