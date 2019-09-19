Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8807EB82FC
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 22:56:02 +0200 (CEST)
Received: from [::1] (port=33388 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iB3T5-0000L2-8S; Thu, 19 Sep 2019 16:55:59 -0400
Received: from mail-yb1-f171.google.com ([209.85.219.171]:43199)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <dsmay.public@gmail.com>)
 id 1iB3T1-0000G4-BN
 for usrp-users@lists.ettus.com; Thu, 19 Sep 2019 16:55:55 -0400
Received: by mail-yb1-f171.google.com with SMTP id m143so1851043ybf.10
 for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2019 13:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Q3VVFRhFInVnJXuUQGX2SHkaqY+W6+pV6Fr+rtc9ckA=;
 b=ZXT7VzVyosRQgdZZ3762nX0iBAZsm406v34Xn3H/sMjqm0p82N9Ty/PIneefIKD08I
 DLN6qIW7od8kVHuf9mROVk+rlrLqWRSakvHEbNYnNAE0wQ7+sCDBTPpIXmZnOlD4ur2/
 vqaW3/LtSJ8TSAXJkSi1+gwlqQw1Kc4mRuDzwOAjSvj781E3NCuUeD1zdLQzzXz0xEmO
 OeU0cHndYx+lmcVTWLyepOXFK9AEulKHfgISVl/xAJceXAm6OMFgH9R/qUUTVLKU8gBD
 fyKmVvzm+iJO6816GfWKQs+IFl8kxn5q+junG+fz3dEeCYXnEUaEwiEemn64FO4CFMhs
 uYMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Q3VVFRhFInVnJXuUQGX2SHkaqY+W6+pV6Fr+rtc9ckA=;
 b=ORja6V+B//eMaRHWkhv990j0IhQ5ckInFi37nEfmJeIAeqkhkr+M4NAbiEQDmPa6vU
 2Otz7DEwjLNsmHuOR2padZJvcs5h5EKAyBQR6EBZW3fh/kc5FGL2JTzHh5uKtUwUkm3a
 oM6G4UzKUxEtVsOY2U26j+Rtws0fofrepwqWENLNgMM7u7oIbI0/zb00Q4spS97zmhaR
 t+Olgul8Zww7dJzPT4fzzsMvFcMKqD+keIuDrtBM5lS+4vb1DnbRvkdToHyyx6l4Y86l
 f3bQ3nbt3MfUTirIurd91vMGgQ4sRrFfzp+EZxvKZVF7Qsdxx7vvoop4bhoqeWyRZM1A
 gwSQ==
X-Gm-Message-State: APjAAAXIQr2ZkmPruZn/URuvdjOwbXAFVcGUDIpWPRpKZaJ1ebayz6M8
 YBwUTkfSALjkT/ikzKmCD2W1GZPbhtiC8TZ/8ZWaKCWq
X-Google-Smtp-Source: APXvYqzVQWDdPa3Xdnsvi38UQsEqHEhSl9QhTFANyx4CBwtsic1UTSnwCQieIYXgCkG7x4j6ne9hQTyQOH+Ks9LPdo8=
X-Received: by 2002:a25:ba4f:: with SMTP id z15mr7834073ybj.495.1568926514554; 
 Thu, 19 Sep 2019 13:55:14 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 19 Sep 2019 16:55:03 -0400
Message-ID: <CAL8PJZ8B_CSoEPxKJJ8Rv7RLxXFgehfhtWCFN8ELJAV+RJQNMA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] uhd example programs - weird environment variable
 issue?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: David Smay via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Smay <dsmay.public@gmail.com>
Content-Type: multipart/mixed; boundary="===============2886950509975541024=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2886950509975541024==
Content-Type: multipart/alternative; boundary="000000000000942b6a0592ee2bd0"

--000000000000942b6a0592ee2bd0
Content-Type: text/plain; charset="UTF-8"

Hello,

I recently did a clean installation of UHD 3.14.1 and gnuradio 3.7.13.5 on
Ubuntu 18.04 LTS, following the steps outlined in the Ettus knowledge base
for installation from source.

The installation worked great, and I started experimenting with the example
programs installed with UHD (located in /usr/lib/uhd/examples/).  At first
they ran correctly and I was able to run the gpio and benchmark_rate
programs without issue, getting the normal expected output for my
b205mini-i.

Without making any changes to the system, and in the same shell session,
all of a sudden the example programs all started consistently generating
errors when I tried to run them:

dsmay4@UbuntuPrecision7530:/usr/lib/uhd/examples$ ./benchmark_rate
--rx_rate 10e6
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown



UHD Warning:
    EnvironmentError: IOError: Could not find path for image:
usrp_b200_fw.hex
    Using images directory: <no images directory located>
    Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow
the below instructions to download the images package.
    Please run:
     "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
Creating the usrp device with: ...

UHD Warning:
    EnvironmentError: IOError: Could not find path for image:
usrp_b200_fw.hex
    Using images directory: <no images directory located>
    Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow
the below instructions to download the images package.
    Please run:
     "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

This is quite strange as my uhd_images_downloader isn't installed to that
directory, but it does run just fine.  uhd_find_devices and uhd_usrp_probe
run fine and indicate no problems with the radio itself.  Other sdr apps
using the b205 work just fine - the problem seems to only impact these
example programs.

I tried rebooting, as well as uninstalling and reinstalling UHD (which
reinstalled the example programs) but the problem persists.  I'm mostly
interested in figuring out what caused the spontaneous change in system
behavior.  I can't for the life of me figure out why just these apps can't
find the fpga images but everything else works just fine...

TIA,

Dave

--000000000000942b6a0592ee2bd0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I recently did a clea=
n installation of UHD 3.14.1 and gnuradio 3.7.13.5 on Ubuntu 18.04 LTS, fol=
lowing the steps outlined in the Ettus knowledge base for installation from=
 source.</div><div><br></div><div>The installation worked great, and I star=
ted experimenting with the example programs installed with UHD (located in =
/usr/lib/uhd/examples/).=C2=A0 At first they ran correctly and I was able t=
o run the gpio and benchmark_rate programs without issue, getting the norma=
l expected output for my b205mini-i.</div><div><br></div><div>Without makin=
g any changes to the system, and in the same shell session, all of a sudden=
 the example programs all started consistently generating errors when I tri=
ed to run them:</div><div><br></div><div>dsmay4@UbuntuPrecision7530:/usr/li=
b/uhd/examples$ ./benchmark_rate --rx_rate 10e6<br>linux; GNU C++ version 7=
.3.0; Boost_106501; UHD_003.010.003.000-0-unknown<br><br><br><br>UHD Warnin=
g:<br>=C2=A0 =C2=A0 EnvironmentError: IOError: Could not find path for imag=
e: usrp_b200_fw.hex<br>=C2=A0 =C2=A0 Using images directory: &lt;no images =
directory located&gt;<br>=C2=A0 =C2=A0 Set the environment variable &#39;UH=
D_IMAGES_DIR&#39; appropriately or follow the below instructions to downloa=
d the images package.<br>=C2=A0 =C2=A0 Please run:<br>=C2=A0 =C2=A0 =C2=A0&=
quot;/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py&quot;<br>=
Creating the usrp device with: ...<br><br>UHD Warning:<br>=C2=A0 =C2=A0 Env=
ironmentError: IOError: Could not find path for image: usrp_b200_fw.hex<br>=
=C2=A0 =C2=A0 Using images directory: &lt;no images directory located&gt;<b=
r>=C2=A0 =C2=A0 Set the environment variable &#39;UHD_IMAGES_DIR&#39; appro=
priately or follow the below instructions to download the images package.<b=
r>=C2=A0 =C2=A0 Please run:<br>=C2=A0 =C2=A0 =C2=A0&quot;/usr/lib/x86_64-li=
nux-gnu/uhd/utils/uhd_images_downloader.py&quot;<br>Error: LookupError: Key=
Error: No devices found for -----&gt;<br>Empty Device Address<br></div><div=
><br></div><div>This is quite strange as my uhd_images_downloader isn&#39;t=
 installed to that directory, but it does run just fine.=C2=A0 uhd_find_dev=
ices and uhd_usrp_probe run fine and indicate no problems with the radio it=
self.=C2=A0 Other sdr apps using the b205 work just fine - the problem seem=
s to only impact these example programs.</div><div><br></div><div>I tried r=
ebooting, as well as uninstalling and reinstalling UHD (which reinstalled t=
he example programs) but the problem persists.=C2=A0 I&#39;m mostly interes=
ted in figuring out what caused the spontaneous change in system behavior.=
=C2=A0 I can&#39;t for the life of me figure out why just these apps can&#3=
9;t find the fpga images but everything else works just fine...</div><div><=
br></div><div>TIA,</div><div><br></div><div>Dave<br></div></div>

--000000000000942b6a0592ee2bd0--


--===============2886950509975541024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2886950509975541024==--

