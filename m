Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE791352A2E
	for <lists+usrp-users@lfdr.de>; Fri,  2 Apr 2021 13:18:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CAB8D3839E3
	for <lists+usrp-users@lfdr.de>; Fri,  2 Apr 2021 07:18:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="CqO/GB0o";
	dkim-atps=neutral
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 67A1F3839C7
	for <usrp-users@lists.ettus.com>; Fri,  2 Apr 2021 07:18:47 -0400 (EDT)
Received: by mail-ua1-f42.google.com with SMTP id q18so1360807uas.11
        for <usrp-users@lists.ettus.com>; Fri, 02 Apr 2021 04:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=W04oUBMteXtQwjOspp/Oq0YHVV/UICCkf8uanZqYyuk=;
        b=CqO/GB0ozHH/Qe/qp3k8y3bT7ahMhhkjQaaJ20CYpwyAkzuvjJ+f0PuVjXmbhqWH2k
         KEhb3qu5VMWbdbQWjsJ87jYJo0sY+qOV7kAvdKvmz/uICr2suEnJ9DsRT5GBMezLVZaW
         pbAJk/zfjdE1Ei4w4PzIRH3bXXhXRO/NkiisAgNEctCY1EmHlhEBxKa9DKbVmZc5IaXe
         wUXJQ7XruaTyXD3o2992CkhPu9BYeGkQOIdZ21FZu/X/griYQqEFvyj1ek4iyt4tInMx
         Tcvt2nooRFtEBuiys2tSjG3H5meOoeUwx5bA7A5KTFYXWzpsjIMjSsHESQgRMr/R/meH
         RedQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=W04oUBMteXtQwjOspp/Oq0YHVV/UICCkf8uanZqYyuk=;
        b=Pi5WGmu8ZGcbMnlQuLPMDIkZRusOWLo23zkii8O+tMSwiSfh/Qg29TCpvnRm48G1WX
         X5of77F0JAUEGeIaoLxPznyto0hYcWZf1bl1fGbYAVn8RAcOUbbmkk9x6/YHhzGR+Hxu
         KgCE65J1o+r7W2+I031RrVii0pE1ZhNp4lFJjhaeADAboo0HDONbRarnN1nyJ38qIAyv
         kryP1XgL8SN8y5P3ZDQaPUwN9HAkn83E5H1jerFBYGuBu06OMcpWQt9aSD6c7l1r46L3
         Gp4CDwhTJMoU7yeU/Vj1A2ou4BiTnji8FC6aW46fwGqaKMtRh4B5Dji87lPJYdzP80Ee
         APQQ==
X-Gm-Message-State: AOAM533hDBkRrguhsiidU7STEJrECqk9DfcQQTvL7E+/TUV40XGaP3M5
	rjPQqqQzwM6F0MdsPO9K9rv5alKi4xrqpWLUGMo8gMwdofSuOg==
X-Google-Smtp-Source: ABdhPJxpBzr768pyWcB48LL6JUqNkcrFWWAxKq1k+RVpZu6cJiXJkgis1zWznu3ZvRNQZBluoH3ZFwXCXdVBPZnqsp0=
X-Received: by 2002:ab0:14b1:: with SMTP id d46mr8012522uae.59.1617362326447;
 Fri, 02 Apr 2021 04:18:46 -0700 (PDT)
MIME-Version: 1.0
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Fri, 2 Apr 2021 21:18:35 +1000
Message-ID: <CALNMZ8W__YmMuZzNEwSRKE6WhdYr5b0c0-XdAM-39i=YFrOO4A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7AGYCGSGQTES5NWNFYRLDGUGK7ZMPX3I
X-Message-ID-Hash: 7AGYCGSGQTES5NWNFYRLDGUGK7ZMPX3I
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7AGYCGSGQTES5NWNFYRLDGUGK7ZMPX3I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0273227630780453221=="

--===============0273227630780453221==
Content-Type: multipart/alternative; boundary="000000000000f103a505befb8216"

--000000000000f103a505befb8216
Content-Type: text/plain; charset="UTF-8"

Hi Folks,

I would like to interface my Raspberry Pi 4 to a USRP B210 via the Python
API.  This requires the UHD driver to be built from source.  Unfortunately,
whenever I try this I encounter some errors that stop the build process in
its tracks.

Details of the error are as follows:

[ 53%] Linking CXX executable test_clock_synch
/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
`__atomic_compare_exchange_8'
/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
`__atomic_load_8'
/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
`__atomic_store_8'
/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
`__atomic_fetch_add_8'
collect2: error: ld returned 1 exit status
make[2]: *** [examples/CMakeFiles/test_clock_synch.dir/build.make:95:
examples/test_clock_synch] Error 1
make[1]: *** [CMakeFiles/Makefile2:1039:
examples/CMakeFiles/test_clock_synch.dir/all] Error 2
make: *** [Makefile:163: all] Error 2

The process I have been using is as follows:

STEP 1:  INSTALL DEPENDENCIES
sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxygen
python3-docutils python3-mako python3-numpy python3-requests
python3-ruamel.yaml python3-setuptools cmake build-essential

STEP 2:  BUILD UHD DRIVER FROM SOURCE
cd /home/pi
mkdir workarea-uhd
cd workarea-uhd
git clone https://github.com/EttusResearch/uhd
cd uhd
git checkout v4.0.0.0
cd host
mkdir build
cd build
sudo cmake -DNEON_SIMD_ENABLE=OFF -DENABLE_PYTHON_API=ON ../
sudo make  --->  (ERRORS OCCUR DURING "MAKE" PROCESS)

My system configuration is as follows:
Hardware: Raspberry Pi 4 Model B Rev 1.4
OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l)
Ettus USRP B210

Does anyone know what the problem could be, and how I can resolve it?

One final note:  Using PyBOMBS, I was able to successfully build & install
the UHD driver and connect to the USRP.  Unfortunately the PyBOMBS build
does not include the Python API, which is what I really want.  Is there a
different version of the PyBOMBS build that includes the Python API?

Thanks & Regards,
Brendan.

--000000000000f103a505befb8216
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Folks,<div><br></div><div>I would like to interface my =
Raspberry Pi 4 to a USRP B210 via the Python API.=C2=A0 This requires the U=
HD driver to be built from source.=C2=A0 Unfortunately, whenever I try this=
 I encounter some errors that stop the build process in its tracks.</div><d=
iv><br></div><div>Details of the error are as follows:</div><div><br></div>=
<div>[ 53%] Linking CXX executable test_clock_synch<br>/usr/bin/ld: ../lib/=
libuhd.so.4.0.0: undefined reference to `__atomic_compare_exchange_8&#39;<b=
r>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_loa=
d_8&#39;<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__=
atomic_store_8&#39;<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined refer=
ence to `__atomic_fetch_add_8&#39;<br>collect2: error: ld returned 1 exit s=
tatus<br>make[2]: *** [examples/CMakeFiles/test_clock_synch.dir/build.make:=
95: examples/test_clock_synch] Error 1<br>make[1]: *** [CMakeFiles/Makefile=
2:1039: examples/CMakeFiles/test_clock_synch.dir/all] Error 2<br>make: *** =
[Makefile:163: all] Error 2<br></div><div><br></div><div>The process I have=
 been using is as follows:</div><div><br></div><div>STEP 1:=C2=A0 INSTALL D=
EPENDENCIES<br>sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxyg=
en python3-docutils python3-mako python3-numpy python3-requests python3-rua=
mel.yaml python3-setuptools cmake build-essential<br><br>STEP 2:=C2=A0 BUIL=
D UHD DRIVER FROM SOURCE</div><div>cd /home/pi<br>mkdir workarea-uhd<br>cd =
workarea-uhd<br>git clone <a href=3D"https://github.com/EttusResearch/uhd" =
target=3D"_blank">https://github.com/EttusResearch/uhd</a><br>cd uhd<br>git=
 checkout v4.0.0.0<br>cd host<br>mkdir build<br>cd build<br>sudo cmake -DNE=
ON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3DON ../<br>sudo make=C2=A0 ---&gt=
;=C2=A0=C2=A0(ERRORS OCCUR DURING &quot;MAKE&quot; PROCESS)<br><br>My syste=
m configuration is as follows:<br>Hardware: Raspberry Pi 4 Model B Rev 1.4<=
br>OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l)<br>Ettus USRP B210<b=
r></div><div><br></div><div>Does anyone know what the problem could be, and=
 how I can resolve it?<br></div><div><br></div><div>One final note:=C2=A0 U=
sing PyBOMBS, I was able to successfully build &amp; install the UHD driver=
 and connect to the USRP.=C2=A0 Unfortunately the PyBOMBS build does not in=
clude the Python API, which is what I really=C2=A0want.=C2=A0 Is there a di=
fferent version of the PyBOMBS build that includes the Python API?</div><di=
v><br></div><div>Thanks &amp; Regards,</div><div>Brendan.</div><div><br></d=
iv><div><br></div><div>=C2=A0=C2=A0</div></div>

--000000000000f103a505befb8216--

--===============0273227630780453221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0273227630780453221==--
