Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7A74732A3
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 18:03:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BF903851F7
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 12:03:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QeNDHXiT";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 6775C384882
	for <usrp-users@lists.ettus.com>; Mon, 13 Dec 2021 12:02:53 -0500 (EST)
Received: by mail-qt1-f176.google.com with SMTP id f20so15850054qtb.4
        for <usrp-users@lists.ettus.com>; Mon, 13 Dec 2021 09:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=Sby2FEafljH9i6ToHwKaD2FVCtmCWIX+boHURBiiT8M=;
        b=QeNDHXiTuxi3CkqFTQLAl+Pzg6NxX+ITPRI4umY1tD7Jt12GZKKQwHOPGifBJp9++1
         /zlK+XK3TRf/ey56LWn4acZQv2Jz6BAau62p+7rAaKZ5K+Hgcwn27a6yowBnjGttPw1f
         MfIutZM8s7OFdZWzmiFf20YA3UTtaQM4vndOFdeP4pU9gnz9Jt3KdUm6/ce6aarIcb7E
         mycfvYtkfSuxFcYYDDSJ7EKsyX/b8NMdbjhqUsmMP8JpOIlVAsvUBHqfYfJRin0M9pNR
         CfU3U+JrS22P2axPe2Uxbj81SLxAimvIbz57Duv8BuPkTrd5zlHwFwjQIlGAiVDxT82f
         5r2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=Sby2FEafljH9i6ToHwKaD2FVCtmCWIX+boHURBiiT8M=;
        b=NnTTcveYiaGHMM+iPo2v5lZqsfZan82n/6qAX/8EqjlZsYzAz4cZAJ/2TSJoF8SNM+
         Z6Z9vXKXr09Qnk4shlP3kUSd470ATAzuZ5Ar47kalfrtbVr43k1eUr4AfM4eavvdVtkj
         zjparqdKky8I5d0kW+tOHy2AX6GHL/6JJzJV2SfG5ys3RCroJFlgCBAeBUNX2iFBCfX/
         nUQEJgngo5t+5A/3lQ8JwPvZdoYqa6fqRVrjQw2WTB3ey1XSJPh63OfGC3W5eK0DL529
         ky6YydnvOER6R3JFoz3jAMIhPY7LUTaRN0aXp3hYZIWnNwuxhAwVQpD2mUJV6hao5GXA
         cx6g==
X-Gm-Message-State: AOAM531Pt3ElC2clDR4Y79VW9NJ0wz0Lk4EeEOidq0X3dlz4NqE5Mtc+
	9N8DJqAt6ix5qUplr3gW9ut0L659qUmaTg==
X-Google-Smtp-Source: ABdhPJzimUFlHORPrOyRRzfstweoT7F6+FBtUliOgWtyu8/6fcIWU3zqtXhVteMADDdGXFC+DB5xeQ==
X-Received: by 2002:ac8:b87:: with SMTP id h7mr47580836qti.637.1639414972478;
        Mon, 13 Dec 2021 09:02:52 -0800 (PST)
Received: from [192.168.2.221] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id bk39sm6146496qkb.35.2021.12.13.09.02.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Dec 2021 09:02:51 -0800 (PST)
Message-ID: <bd195efc-9705-b026-4060-217350c0fd25@gmail.com>
Date: Mon, 13 Dec 2021 12:02:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <j993ZQjG9UoYDBiAShtG9zCLKRnOb3jRcGMkrhrZM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <j993ZQjG9UoYDBiAShtG9zCLKRnOb3jRcGMkrhrZM@lists.ettus.com>
Message-ID-Hash: 67KGIGI3BHJHH5XYGIKYI2IFXTEJO232
X-Message-ID-Hash: 67KGIGI3BHJHH5XYGIKYI2IFXTEJO232
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/67KGIGI3BHJHH5XYGIKYI2IFXTEJO232/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8746671205258495001=="

This is a multi-part message in MIME format.
--===============8746671205258495001==
Content-Type: multipart/alternative;
 boundary="------------eeSsPih2nSn06Ksh3SAB3amS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------eeSsPih2nSn06Ksh3SAB3amS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-13 11:44, iw1fnw@gmail.com wrote:
>
> Last update for today=E2=80=A6 Installed latest UHD from ETTUS reposito=
ry,=20
> downloaded new images and tried the loader without success (the USRP=20
> probe shows the incompatibility of the FPGA image with new UHD version)=
:
>
> |abusso@ttclabsdr:~$ uhd_usrp_probe [INFO] [UHD] linux; GNU C++=20
> version 7.5.0; Boost_106501; UHD_4.1.0.4-release [INFO] [X300] X300=20
> initialization sequence... Error: RuntimeError: Expected FPGA=20
> compatibility number 38, but got 33: The FPGA image on your device is=20
> not compatible with this host code build. Download the appropriate=20
> FPGA images for this version of UHD. Please run:=20
> "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py" Then=20
> burn a new image to the on-board flash storage of your USRP X3xx=20
> device using the image loader utility. Use this command:=20
> "/usr/lib/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.40=
.2"=20
> For more information, refer to the UHD manual:=20
> http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash=20
> abusso@ttclabsdr:~$ sudo /usr/lib/uhd/utils/uhd_images_downloader.py=20
> [INFO] Using base URL: https://files.ettus.com/binaries/cache/ [INFO]=20
> Images destination: /usr/share/uhd/images [INFO] No inventory file=20
> found at /usr/share/uhd/images/inventory.json. Creating an empty one.=20
> 09147 kB / 09147 kB (100%) x4xx_x410_fpga_default-gd5c2750.zip 21070=20
> kB / 21070 kB (100%) x3xx_x310_fpga_default-gd5c2750.zip 19740 kB /=20
> 19740 kB (100%) x3xx_x300_fpga_default-gd5c2750.zip 01149 kB / 01149=20
> kB (100%) e3xx_e310_sg1_fpga_default-gd5c2750.zip 01137 kB / 01137 kB=20
> (100%) e3xx_e310_sg3_fpga_default-gd5c2750.zip 10188 kB / 10188 kB=20
> (100%) e3xx_e320_fpga_default-gd5c2750.zip 20727 kB / 20727 kB (100%)=20
> n3xx_n310_fpga_default-gd5c2750.zip 14296 kB / 14296 kB (100%)=20
> n3xx_n300_fpga_default-gd5c2750.zip 27186 kB / 27186 kB (100%)=20
> n3xx_n320_fpga_default-gd5c2750.zip 00481 kB / 00481 kB (100%)=20
> b2xx_b200_fpga_default-g325e8e9.zip 00463 kB / 00463 kB (100%)=20
> b2xx_b200mini_fpga_default-g325e8e9.zip 00882 kB / 00882 kB (100%)=20
> b2xx_b210_fpga_default-g325e8e9.zip 00511 kB / 00511 kB (100%)=20
> b2xx_b205mini_fpga_default-g325e8e9.zip 00167 kB / 00167 kB (100%)=20
> b2xx_common_fw_default-g7f7d016.zip 00007 kB / 00007 kB (100%)=20
> usrp2_usrp2_fw_default-g6bea23d.zip 00450 kB / 00450 kB (100%)=20
> usrp2_usrp2_fpga_default-g6bea23d.zip 02415 kB / 02415 kB (100%)=20
> usrp2_n200_fpga_default-g6bea23d.zip 00009 kB / 00009 kB (100%)=20
> usrp2_n200_fw_default-g6bea23d.zip 02757 kB / 02757 kB (100%)=20
> usrp2_n210_fpga_default-g6bea23d.zip 00009 kB / 00009 kB (100%)=20
> usrp2_n210_fw_default-g6bea23d.zip 02123 kB / 02123 kB (100%)=20
> n230_n230_fpga_default-ge57dfe0.zip 00319 kB / 00319 kB (100%)=20
> usrp1_usrp1_fpga_default-g6bea23d.zip 00522 kB / 00522 kB (100%)=20
> usrp1_b100_fpga_default-g6bea23d.zip 00006 kB / 00006 kB (100%)=20
> usrp1_b100_fw_default-g6bea23d.zip 00017 kB / 00017 kB (100%)=20
> octoclock_octoclock_fw_default-g14000041.zip 04839 kB / 04839 kB=20
> (100%) usb_common_windrv_default-g14000041.zip [INFO] Images download=20
> complete. abusso@ttclabsdr:~$ uhd_image_loader --args=20
> "type=3Dx300,addr=3D192.168.30.2"=20
> --fpga-path=3D"/usr/share/uhd/images/usrp_x310_fpga_XG.bit" [INFO] [UHD=
]=20
> linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-release Unit:=20
> USRP X310 (31D7872, 192.168.30.2) FPGA Image:=20
> /usr/share/uhd/images/usrp_x310_fpga_XG.bit failed. Error:=20
> RuntimeError: Device reported an error during initialization.|
>
Could you make sure you're using the correct version of=20
uhd_images_downloader? /usr/lib/uhd/utils/uhd_images_downloader.py vs

|/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py|

||

--------------eeSsPih2nSn06Ksh3SAB3amS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-13 11:44, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:iw1fnw@gmail.com">iw1fnw@gmail.com</a=
>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:j993ZQjG9UoYDBiAShtG9zCLKRnOb3jRcGMkrhrZM@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Last update for today=E2=80=A6 Installed latest UHD from ETTUS
        repository, downloaded new images and tried the loader without
        success (the USRP probe shows the incompatibility of the FPGA
        image with new UHD version):</p>
      <pre><code>abusso@ttclabsdr:~$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-rele=
ase
[INFO] [X300] X300 initialization sequence...
Error: RuntimeError: Expected FPGA compatibility number 38, but got 33:
The FPGA image on your device is not compatible with this host code build=
.
Download the appropriate FPGA images for this version of UHD.
Please run:

 "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"

Then burn a new image to the on-board flash storage of your
USRP X3xx device using the image loader utility. Use this command:

"/usr/lib/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.40.2=
"

For more information, refer to the UHD manual:

 <a class=3D"moz-txt-link-freetext" href=3D"http://files.ettus.com/manual=
/page_usrp_x3x0.html#x3x0_flash">http://files.ettus.com/manual/page_usrp_=
x3x0.html#x3x0_flash</a>


abusso@ttclabsdr:~$ sudo /usr/lib/uhd/utils/uhd_images_downloader.py
[INFO] Using base URL: <a class=3D"moz-txt-link-freetext" href=3D"https:/=
/files.ettus.com/binaries/cache/">https://files.ettus.com/binaries/cache/=
</a>
[INFO] Images destination: /usr/share/uhd/images
[INFO] No inventory file found at /usr/share/uhd/images/inventory.json. C=
reating an empty one.
09147 kB / 09147 kB (100%) x4xx_x410_fpga_default-gd5c2750.zip
21070 kB / 21070 kB (100%) x3xx_x310_fpga_default-gd5c2750.zip
19740 kB / 19740 kB (100%) x3xx_x300_fpga_default-gd5c2750.zip
01149 kB / 01149 kB (100%) e3xx_e310_sg1_fpga_default-gd5c2750.zip
01137 kB / 01137 kB (100%) e3xx_e310_sg3_fpga_default-gd5c2750.zip
10188 kB / 10188 kB (100%) e3xx_e320_fpga_default-gd5c2750.zip
20727 kB / 20727 kB (100%) n3xx_n310_fpga_default-gd5c2750.zip
14296 kB / 14296 kB (100%) n3xx_n300_fpga_default-gd5c2750.zip
27186 kB / 27186 kB (100%) n3xx_n320_fpga_default-gd5c2750.zip
00481 kB / 00481 kB (100%) b2xx_b200_fpga_default-g325e8e9.zip
00463 kB / 00463 kB (100%) b2xx_b200mini_fpga_default-g325e8e9.zip
00882 kB / 00882 kB (100%) b2xx_b210_fpga_default-g325e8e9.zip
00511 kB / 00511 kB (100%) b2xx_b205mini_fpga_default-g325e8e9.zip
00167 kB / 00167 kB (100%) b2xx_common_fw_default-g7f7d016.zip
00007 kB / 00007 kB (100%) usrp2_usrp2_fw_default-g6bea23d.zip
00450 kB / 00450 kB (100%) usrp2_usrp2_fpga_default-g6bea23d.zip
02415 kB / 02415 kB (100%) usrp2_n200_fpga_default-g6bea23d.zip
00009 kB / 00009 kB (100%) usrp2_n200_fw_default-g6bea23d.zip
02757 kB / 02757 kB (100%) usrp2_n210_fpga_default-g6bea23d.zip
00009 kB / 00009 kB (100%) usrp2_n210_fw_default-g6bea23d.zip
02123 kB / 02123 kB (100%) n230_n230_fpga_default-ge57dfe0.zip
00319 kB / 00319 kB (100%) usrp1_usrp1_fpga_default-g6bea23d.zip
00522 kB / 00522 kB (100%) usrp1_b100_fpga_default-g6bea23d.zip
00006 kB / 00006 kB (100%) usrp1_b100_fw_default-g6bea23d.zip
00017 kB / 00017 kB (100%) octoclock_octoclock_fw_default-g14000041.zip
04839 kB / 04839 kB (100%) usb_common_windrv_default-g14000041.zip
[INFO] Images download complete.


abusso@ttclabsdr:~$ uhd_image_loader --args "type=3Dx300,addr=3D192.168.3=
0.2" --fpga-path=3D"/usr/share/uhd/images/usrp_x310_fpga_XG.bit"
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-rele=
ase
Unit: USRP X310 (31D7872, 192.168.30.2)
FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit
failed.
Error: RuntimeError: Device reported an error during initialization.</cod=
e></pre>
      <br>
    </blockquote>
    Could you make sure you're using the correct version of
    uhd_images_downloader?=C2=A0=C2=A0=C2=A0=C2=A0
    /usr/lib/uhd/utils/uhd_images_downloader.py vs <br>
    <pre><font size=3D"5"><code>/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_i=
mages_downloader.py</code></font></pre>
    <pre><code>
</code></pre>
  </body>
</html>
--------------eeSsPih2nSn06Ksh3SAB3amS--

--===============8746671205258495001==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8746671205258495001==--
