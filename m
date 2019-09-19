Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A85B832A
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 23:13:22 +0200 (CEST)
Received: from [::1] (port=40698 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iB3jq-0002Sz-3p; Thu, 19 Sep 2019 17:13:18 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:34210)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1iB3jm-0002GE-6w
 for usrp-users@lists.ettus.com; Thu, 19 Sep 2019 17:13:14 -0400
Received: by mail-io1-f45.google.com with SMTP id q1so11313018ion.1
 for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2019 14:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FVsXcP/NucMSmVu0/lLBpXDPUKFpkMIPt5Go1bXuVAo=;
 b=ftUzY1ua5ogCDplarggqxCCRbUGHj4NyUBIVSBk6RYwaB5s11WJ7fSrlmCdS5f5KaL
 uNZkKC11cc1RuxhPRkpSpDKmAA2nMTVKNTH9WDHfcrSi6DjjpVdhpc3wGReUXA9dDr8L
 BXHtVGcnkFktHFdskZ3RfofYQ+L8xwgyFTGGO/v3WxXiJV/21XWPSvmMPZzyhmu11Zd/
 noWYtOZZtdTvIwTPSLHC0PB7bWUlNH5Cnnyped6tHJS1H8Uh7KYD1LrABWPWjxiMRuXV
 kJJHrXjyidR0HNudgnJZxAhyBed3s0VKnRDhOki54FXzFuNsDVJlNohrQ9vsZUaaPkRG
 I7hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FVsXcP/NucMSmVu0/lLBpXDPUKFpkMIPt5Go1bXuVAo=;
 b=NA6aabgTS+nZ1BiY5WFlidsZ/FGvWaVudO9NEZcRbK4fELL4YkSkpHNivjBdLXeA+D
 qMGzU+H7T5qfRKk9l25OhffEffJetG7i8N9fnuhDvMasjUml4QNjEo9fYqQG/FtPLhNi
 QIrvHQkrVtnQE953te3q/wanP2bPN507BeemfDU6ATLcY7qeRnagX3NfNs4vboikygsa
 PAaFEOaM/24lgXKPtUywDXY7T8E25tI8HGvxlKc8GWX2JZ8Y0xDV+xSYBaubfoneOVkT
 2eT6YG6GVeL49j3R8Ot5WOiGJh7xjBIM7b8m4NldqfBgpmE2cQC8G8jh3NKUiuyxlwQe
 mT5g==
X-Gm-Message-State: APjAAAWDKNTSfubxoedzkTqEEGUpmHpKpiVCVstnSO32ELUfCnnWL51E
 AHDKCN6MSIAlEeEHWCbgjwr91v6q2hBeixm0SbxX+9nerEeinw==
X-Google-Smtp-Source: APXvYqwF4Um2eQASdyB1QbpeDxPHDKFaw+drJsuhp/6S4NmLnVDB5L55w+iUAgAPXXUpMb+mUXSxphJxvzOcmwE6KsY=
X-Received: by 2002:a02:55c4:: with SMTP id e187mr14894132jab.32.1568927553110; 
 Thu, 19 Sep 2019 14:12:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAL8PJZ8B_CSoEPxKJJ8Rv7RLxXFgehfhtWCFN8ELJAV+RJQNMA@mail.gmail.com>
In-Reply-To: <CAL8PJZ8B_CSoEPxKJJ8Rv7RLxXFgehfhtWCFN8ELJAV+RJQNMA@mail.gmail.com>
Date: Thu, 19 Sep 2019 16:12:22 -0500
Message-ID: <CAKJyDkL_c9yPZUV0SNS9C+_x=+5-N+oOF8=pngXtPQEG+rbBaA@mail.gmail.com>
To: David Smay <dsmay.public@gmail.com>
Subject: Re: [USRP-users] uhd example programs - weird environment variable
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5113281664529540532=="
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

--===============5113281664529540532==
Content-Type: multipart/alternative; boundary="0000000000007b717c0592ee69b4"

--0000000000007b717c0592ee69b4
Content-Type: text/plain; charset="UTF-8"

Your output indicates that you're executing UHD v.3.10.0.3, not version
3.14.1, so you must have multiple versions installed.

Go to /usr/local/lib (or wherever you installed UHD on your machine) and
make sure it looks something like this when you type in "ls -l uhd*":
lrwxrwxrwx 1 root root       16 Sep 16 11:03 libuhd.so -> libuhd.so.3.14.1
-rw-r--r-- 1 root root 15583328 Sep 16 11:01 libuhd.so.3.14.1

On Thu, Sep 19, 2019 at 3:55 PM David Smay via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I recently did a clean installation of UHD 3.14.1 and gnuradio 3.7.13.5 on
> Ubuntu 18.04 LTS, following the steps outlined in the Ettus knowledge base
> for installation from source.
>
> The installation worked great, and I started experimenting with the
> example programs installed with UHD (located in /usr/lib/uhd/examples/).
> At first they ran correctly and I was able to run the gpio and
> benchmark_rate programs without issue, getting the normal expected output
> for my b205mini-i.
>
> Without making any changes to the system, and in the same shell session,
> all of a sudden the example programs all started consistently generating
> errors when I tried to run them:
>
> dsmay4@UbuntuPrecision7530:/usr/lib/uhd/examples$ ./benchmark_rate
> --rx_rate 10e6
> linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
>
>
>
> UHD Warning:
>     EnvironmentError: IOError: Could not find path for image:
> usrp_b200_fw.hex
>     Using images directory: <no images directory located>
>     Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow
> the below instructions to download the images package.
>     Please run:
>      "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
> Creating the usrp device with: ...
>
> UHD Warning:
>     EnvironmentError: IOError: Could not find path for image:
> usrp_b200_fw.hex
>     Using images directory: <no images directory located>
>     Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow
> the below instructions to download the images package.
>     Please run:
>      "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
> Error: LookupError: KeyError: No devices found for ----->
> Empty Device Address
>
> This is quite strange as my uhd_images_downloader isn't installed to that
> directory, but it does run just fine.  uhd_find_devices and uhd_usrp_probe
> run fine and indicate no problems with the radio itself.  Other sdr apps
> using the b205 work just fine - the problem seems to only impact these
> example programs.
>
> I tried rebooting, as well as uninstalling and reinstalling UHD (which
> reinstalled the example programs) but the problem persists.  I'm mostly
> interested in figuring out what caused the spontaneous change in system
> behavior.  I can't for the life of me figure out why just these apps can't
> find the fpga images but everything else works just fine...
>
> TIA,
>
> Dave
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007b717c0592ee69b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Your output indicates that you&#39;re executing UHD v.3.10=
.0.3, not version 3.14.1, so you must have multiple versions installed.<div=
><br></div><div>Go to /usr/local/lib (or wherever you installed UHD on your=
 machine) and make sure it looks something like this when you type in &quot=
;ls -l uhd*&quot;:</div><div>lrwxrwxrwx 1 root root =C2=A0 =C2=A0 =C2=A0 16=
 Sep 16 11:03 libuhd.so -&gt; libuhd.so.3.14.1<br>-rw-r--r-- 1 root root 15=
583328 Sep 16 11:01 libuhd.so.3.14.1<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 19, 2019 at 3:55 =
PM David Smay via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello=
,</div><div><br></div><div>I recently did a clean installation of UHD 3.14.=
1 and gnuradio 3.7.13.5 on Ubuntu 18.04 LTS, following the steps outlined i=
n the Ettus knowledge base for installation from source.</div><div><br></di=
v><div>The installation worked great, and I started experimenting with the =
example programs installed with UHD (located in /usr/lib/uhd/examples/).=C2=
=A0 At first they ran correctly and I was able to run the gpio and benchmar=
k_rate programs without issue, getting the normal expected output for my b2=
05mini-i.</div><div><br></div><div>Without making any changes to the system=
, and in the same shell session, all of a sudden the example programs all s=
tarted consistently generating errors when I tried to run them:</div><div><=
br></div><div>dsmay4@UbuntuPrecision7530:/usr/lib/uhd/examples$ ./benchmark=
_rate --rx_rate 10e6<br>linux; GNU C++ version 7.3.0; Boost_106501; UHD_003=
.010.003.000-0-unknown<br><br><br><br>UHD Warning:<br>=C2=A0 =C2=A0 Environ=
mentError: IOError: Could not find path for image: usrp_b200_fw.hex<br>=C2=
=A0 =C2=A0 Using images directory: &lt;no images directory located&gt;<br>=
=C2=A0 =C2=A0 Set the environment variable &#39;UHD_IMAGES_DIR&#39; appropr=
iately or follow the below instructions to download the images package.<br>=
=C2=A0 =C2=A0 Please run:<br>=C2=A0 =C2=A0 =C2=A0&quot;/usr/lib/x86_64-linu=
x-gnu/uhd/utils/uhd_images_downloader.py&quot;<br>Creating the usrp device =
with: ...<br><br>UHD Warning:<br>=C2=A0 =C2=A0 EnvironmentError: IOError: C=
ould not find path for image: usrp_b200_fw.hex<br>=C2=A0 =C2=A0 Using image=
s directory: &lt;no images directory located&gt;<br>=C2=A0 =C2=A0 Set the e=
nvironment variable &#39;UHD_IMAGES_DIR&#39; appropriately or follow the be=
low instructions to download the images package.<br>=C2=A0 =C2=A0 Please ru=
n:<br>=C2=A0 =C2=A0 =C2=A0&quot;/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_ima=
ges_downloader.py&quot;<br>Error: LookupError: KeyError: No devices found f=
or -----&gt;<br>Empty Device Address<br></div><div><br></div><div>This is q=
uite strange as my uhd_images_downloader isn&#39;t installed to that direct=
ory, but it does run just fine.=C2=A0 uhd_find_devices and uhd_usrp_probe r=
un fine and indicate no problems with the radio itself.=C2=A0 Other sdr app=
s using the b205 work just fine - the problem seems to only impact these ex=
ample programs.</div><div><br></div><div>I tried rebooting, as well as unin=
stalling and reinstalling UHD (which reinstalled the example programs) but =
the problem persists.=C2=A0 I&#39;m mostly interested in figuring out what =
caused the spontaneous change in system behavior.=C2=A0 I can&#39;t for the=
 life of me figure out why just these apps can&#39;t find the fpga images b=
ut everything else works just fine...</div><div><br></div><div>TIA,</div><d=
iv><br></div><div>Dave<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000007b717c0592ee69b4--


--===============5113281664529540532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5113281664529540532==--

