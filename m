Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F76B75A1
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 11:03:21 +0200 (CEST)
Received: from [::1] (port=53314 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iAsLK-0004ya-LM; Thu, 19 Sep 2019 05:03:14 -0400
Received: from mail-ed1-f45.google.com ([209.85.208.45]:41301)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <engr.khizarabbas14@gmail.com>)
 id 1iAsLG-0004qe-Sn
 for usrp-users@lists.ettus.com; Thu, 19 Sep 2019 05:03:10 -0400
Received: by mail-ed1-f45.google.com with SMTP id f20so2463326edv.8
 for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2019 02:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9HgHjojRdJ5uYjdmFFddSZYrekPYdTFHPx5UZjDcNFU=;
 b=YkJ2sKZwqs1gJQKKTmwyZyEvvrSEiOV8LcMOysP/LJrWyniTsDRBR0Nr4RxeaD6H0u
 J4YFKvpFDDfUaHuwZZ77WjlbF/cxW9qeNmcxBLFDPkkfONyFZtoWA0dOohSzbKOE/YYf
 9nKQ20I5jyPKzHURpbKLqFrVCWUfaQ/CiCrCMnGeUaxL54Ad9CoL5fSMvary1drZ0Vmw
 L0nyfmmwacw1h+zyXFi7xFmS68UkJJontrpwLBNxAiusKMmmbl/vZHaNuyjEUg5O4kFw
 wmrffjqPuNOg4hIKo7XROiY6doqRK0OWiEUHKuXunESj9YKGFjyFM3fZrzlBKOXM0vSM
 hFKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9HgHjojRdJ5uYjdmFFddSZYrekPYdTFHPx5UZjDcNFU=;
 b=sn7+8C+M6iaR67gJuFtfx0scpbsdxcMmx6O8aCWcbSCveVxBUof2jZWrIeXrJ34DTd
 gE7zXzJaqeheLtRkjPr/E+L+eQXq9RsjQurH9MKiuOdDSXWzD91GjZ+3GSICJOJ+0xs2
 d5cH+HqAv6LhPgkGBJuBpM7dvP/v92dod2JSFMlzakpJGkxtOExChkpw0y4lzaGz2t+h
 GSgjZtpEJkGo0kjWpEzSKwOSAUJsRROHN0qnMWSAQQMSEapvzDYvMQ3g78PbeKPOfzrz
 SdovE94aGnDg5b0TRsUWPgnoeh9BUaZNymKQ/hfudek3CR2TaIy7nB/Gdteiq6Cpp/dX
 AAhQ==
X-Gm-Message-State: APjAAAUpr/KYBBJSablj2CObl7mea8nrfJdKvvy1JfQtzTlAU3QZ8kGv
 1ZRfmo16GPE3RZVLfpkJY4JPUA7BcsW1936l9ecTLhxm
X-Google-Smtp-Source: APXvYqymXtYc83yYCcIUYdoRG6pJ6EHxzH5W/7Mn4iJ+Ph27KDTTx3hH23rROVWNZqPrGQ+c2kUCguO+MYcpWyYQ5bA=
X-Received: by 2002:a17:906:3717:: with SMTP id
 d23mr13328959ejc.266.1568883749647; 
 Thu, 19 Sep 2019 02:02:29 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 19 Sep 2019 18:02:18 +0900
Message-ID: <CALHv-k--jOYk6t40MwJ2aTsup2unhqVg3r84TFj8zPn9_yy58Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP B210 Error
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
From: Khizar Abbas via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Khizar Abbas <engr.khizarabbas14@gmail.com>
Content-Type: multipart/mixed; boundary="===============5656934657065587790=="
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

--===============5656934657065587790==
Content-Type: multipart/alternative; boundary="00000000000097797b0592e43678"

--00000000000097797b0592e43678
Content-Type: text/plain; charset="UTF-8"

Dear all,
i am using two USRP b210 device for my project. My goal is to deploy LTE
connection . but one of my device is working properly and other one is
showing error no device found.
when i used the sudo uhd_usrp_probecommand. its shows error
UHD Warning:
    EnvironmentError: IOError: Could not find path for image:
usrp_b200_fw.hex
    Using images directory: <no images directory located>
    Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow
the below instructions to download the images package.
    Please run:
     "/usr/local/lib/uhd/utils/uhd_images_downloader.py"
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

I have already tried many solution from internet but dont get
success.Please suggest me any proper solution for this error.

Thanks
Khizar abbas
Jeju national University SOuth Korea

--00000000000097797b0592e43678
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear all,</div><div>i am using two USRP b210 device f=
or my project.
 My goal is to deploy LTE connection . but one of my device is working=20
properly and other one is showing error no device found.</div><div>when i u=
sed the sudo uhd_usrp_probecommand. its shows error <br></div><div>UHD Warn=
ing:<br>=C2=A0 =C2=A0 EnvironmentError: IOError: Could not find path for im=
age: usrp_b200_fw.hex<br>=C2=A0 =C2=A0 Using images directory: &lt;no image=
s directory located&gt;<br>=C2=A0 =C2=A0 Set the environment variable &#39;=
UHD_IMAGES_DIR&#39; appropriately or follow the below instructions to downl=
oad the images package.<br>=C2=A0 =C2=A0 Please run:<br>=C2=A0 =C2=A0 =C2=
=A0&quot;/usr/local/lib/uhd/utils/uhd_images_downloader.py&quot;<br>Error: =
LookupError: KeyError: No devices found for -----&gt;<br>Empty Device Addre=
ss</div><div><br></div><div>I have already tried many solution from interne=
t but dont get success.Please suggest me any proper solution for this error=
.</div><div><br></div><div>Thanks <br></div><div><span class=3D"gmail-HOEnZ=
b gmail-adL"><font color=3D"#888888"><div>Khizar abbas</div><div>Jeju natio=
nal University SOuth Korea</div></font></span></div></div>

--00000000000097797b0592e43678--


--===============5656934657065587790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5656934657065587790==--

