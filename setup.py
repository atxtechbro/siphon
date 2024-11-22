import os

from setuptools import find_packages, setup


# Dynamically fetch the version from a version file or environment
def get_version():
    version_file = os.path.join(os.path.dirname(__file__), "VERSION")
    if os.path.exists(version_file):
        with open(version_file, "r") as f:
            return f.read().strip()
    return "0.0.0"  # Default fallback version

setup(
    name='siphon-cli',
    version=get_version(),  # Fetch the dynamic version
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
