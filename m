Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C502D220CBF
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jul 2020 14:13:59 +0200 (CEST)
Received: from [::1] (port=60068 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvgIM-0000EM-Nw; Wed, 15 Jul 2020 08:13:54 -0400
Received: from mail-ej1-f48.google.com ([209.85.218.48]:43880)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <pbasaras@gmail.com>) id 1jvgII-00009G-PW
 for usrp-users@lists.ettus.com; Wed, 15 Jul 2020 08:13:50 -0400
Received: by mail-ej1-f48.google.com with SMTP id a21so1893134ejj.10
 for <usrp-users@lists.ettus.com>; Wed, 15 Jul 2020 05:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BGQHfwZVKd54S45Tk1OXQ1OonqyvZ3C000K2Tq6KM6s=;
 b=Qh5LZj9D37kYTPeAwOhcn58Yl0+peAJiUNTm/8R0gYNDRguOQFHem47AvkmedNrmpl
 34VGblsbQzXwiQyK5JoPPPdLbjIKcSMRpHSGTArLPiW7cxOI+dsehO3s8iVSxjbw9VLi
 bdi8sJT0mSntUenZ96D60oJ8RROO3HBPiPh69LfLO+jccOZ9cdRh8rbz3+4Am0pccV2P
 uw/k39RF3o7N0Q9pU9jw5fmpfqdP71d6CHmxWgQ3A62hP6oJv3vpP2B0fr/Pgsl+TkHV
 MJtBK3by6jCHuKZhUgCTSUPFFsYPvxw2+eUVHXcy9M7mn5VCGe/kmUnb7YSUjBx5wsb0
 RqMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BGQHfwZVKd54S45Tk1OXQ1OonqyvZ3C000K2Tq6KM6s=;
 b=mP7uArh+FBIVs1hrJTW+ZWCUe2cNVlrz8yG6VmVwmiUhXgqNS4r2uNpc7yZ6UwdXuz
 mI+HQMj+n1y/7BTFp989slh2WDYA6osF/ensnTBscU4k5NsdJjFHLMsxdytVXv8EVSpY
 YFfnkbT6heLB6o8vjdiJrdQ4DH8nuMjE00smr8HiSkXwroOe3ymMb6CgzI4VNJht0ojn
 pddwYOMwSsNIiGO3CAgc8XHnU570VWgXzZllcuviKlYP06qc7fOHgFD0pxPT6nbwFaIO
 SDZ93eDTlbNZc5dVONxqS0gbaEIbSHndt8NqF61WaxaEQhjmLkPns+txp9ZuAsMn+SoG
 YM2Q==
X-Gm-Message-State: AOAM531QUCfQx8x3RBcmVduhc582H4Gy+3jz8a70wRRuyxJSk3IztjUG
 fyrE3cv8NQ4Y26lSg2rpZN4xNCHKO15uxySDWDLNvuQRtWs=
X-Google-Smtp-Source: ABdhPJw7B2ivBSEAseg6t/TjNNtx9VkPiVWEPGMl4Uj+QTDPmC2DFi0Oy2aNMnpvJrVtiya0ZjqXR1JLJID8x2tmfEc=
X-Received: by 2002:a17:906:3c10:: with SMTP id
 h16mr8906022ejg.87.1594815189245; 
 Wed, 15 Jul 2020 05:13:09 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 15 Jul 2020 15:12:58 +0300
Message-ID: <CAMVZM+-xgHc1dGUM9T2BncCPVcLuC7j1uPqVLQeFvPmhf3FE2A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] error at updating the filesystem for usrp n310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Pavlos Basaras via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Pavlos Basaras <pbasaras@gmail.com>
Content-Type: multipart/mixed; boundary="===============2249968384032799878=="
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

--===============2249968384032799878==
Content-Type: multipart/alternative; boundary="000000000000d660df05aa79d852"

--000000000000d660df05aa79d852
Content-Type: text/plain; charset="UTF-8"

Dear community,

i am using the usrp n310 device. I am following the start up guide from
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setting_up_a_Serial_Console_Connection
for the initial setup of the usrp.

I completed the installation instructions for the host from
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux
everything seemed ok.

I can connect to the device through both ssh and by the serial port.

I am trying to use mender to update the filesystem at the usrp device.

I executed the command: sudo uhd_images_downloader -t mender -t n3xx --yes
at the host  to obtain usrp_n3xx_fs.mender, which i then copied to the usrp.

At the usrp i am using the command: mender -rootfs
/home/root/usrp_n3xx_fs.mender
to start the update of the system but i have the following incompatibility
issue :

ERRO[0000] Installation failed: installer: failed to read and install
update: installer: image (device types [ni-sulfur-rev6-mender
ni-sulfur-rev5-mender ni-sulfur-rev4-mender ni-sulfur-rev3-mender
ni-sulfur-rev6 ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not
compatible with device ni-sulfur-rev11-mender  module=rootfs
ERRO[0000] installer: failed to read and install update: installer: image
(device types [ni-sulfur-rev6-mender ni-sulfur-rev5-mender
ni-sulfur-rev4-mender ni-sulfur-rev3-mender ni-sulfur-rev6 ni-sulfur-rev5
ni-sulfur-rev4 ni-sulfur-rev3]) not compatible with device
ni-sulfur-rev11-mender  module=main


How can i resolve this?


Details on the UHD intalled on both the host and the usrp device"

HOST computer uhd: [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
Boost_105800; UHD_3.14.1.HEAD-0-g0347a6d8
USRP uhd:   [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
UHD_3.14.1.1-0-g0347a6d8


all the best,
Pavlos.

--000000000000d660df05aa79d852
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear community,</div><div><br></div><div></div><div>i=
 am using the usrp n310 device. I am following the start up guide from <a h=
ref=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#=
Setting_up_a_Serial_Console_Connection">https://kb.ettus.com/USRP_N300/N310=
/N320/N321_Getting_Started_Guide#Setting_up_a_Serial_Console_Connection</a>=
</div><div>for the initial setup of the usrp.</div><div><br></div><div>I co=
mpleted the installation instructions for the host from <a href=3D"https://=
kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_an=
d_GNU_Radio)_on_Linux">https://kb.ettus.com/Building_and_Installing_the_USR=
P_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux</a></div><div>everythi=
ng seemed ok.<br></div><div><br></div><div>I can connect to the device thro=
ugh both ssh and by the serial port.</div><div><br></div><div>I am trying t=
o use mender to update the filesystem at the usrp device.</div><div><br></d=
iv><div>I executed the command: sudo uhd_images_downloader -t mender -t n3x=
x --yes</div><div>at the host=C2=A0 to obtain usrp_n3xx_fs.mender, which i =
then copied to the usrp.</div><div><br></div><div>At the usrp i am using th=
e command: mender -rootfs /home/root/usrp_n3xx_fs.mender <br></div><div>to =
start the update of the system but i have the following incompatibility iss=
ue :</div><div><br></div><div>ERRO[0000] Installation failed: installer: fa=
iled to read and install update: installer: image (device types [ni-sulfur-=
rev6-mender ni-sulfur-rev5-mender ni-sulfur-rev4-mender ni-sulfur-rev3-mend=
er ni-sulfur-rev6 ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not compat=
ible with device ni-sulfur-rev11-mender =C2=A0module=3Drootfs<br>ERRO[0000]=
 installer: failed to read and install update: installer: image (device typ=
es [ni-sulfur-rev6-mender ni-sulfur-rev5-mender ni-sulfur-rev4-mender ni-su=
lfur-rev3-mender ni-sulfur-rev6 ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev=
3]) not compatible with device ni-sulfur-rev11-mender =C2=A0module=3Dmain</=
div><div><br></div><div><br></div><div>How can i resolve this?<br></div><di=
v></div><div><br></div><div><br></div><div>Details on the UHD intalled on b=
oth the host and the usrp device&quot;<br></div><div><br></div><div>HOST co=
mputer uhd: [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_10580=
0; UHD_3.14.1.HEAD-0-g0347a6d8</div><div>USRP uhd:=C2=A0=C2=A0 [INFO] [UHD]=
 linux; GNU C++ version 7.3.0; Boost_106600; UHD_3.14.1.1-0-g0347a6d8</div>=
<div><br></div><div><br></div><div>all the best,</div><div>Pavlos.<br></div=
></div>

--000000000000d660df05aa79d852--


--===============2249968384032799878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2249968384032799878==--

