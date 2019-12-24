Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A72FD12A3EA
	for <lists+usrp-users@lfdr.de>; Tue, 24 Dec 2019 19:31:15 +0100 (CET)
Received: from [::1] (port=60448 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ijoxe-00063r-LU; Tue, 24 Dec 2019 13:31:14 -0500
Received: from mail-qk1-f181.google.com ([209.85.222.181]:35480)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <subu.rama@gmail.com>) id 1ijoxa-0005wI-JD
 for usrp-users@lists.ettus.com; Tue, 24 Dec 2019 13:31:10 -0500
Received: by mail-qk1-f181.google.com with SMTP id z76so16921890qka.2
 for <usrp-users@lists.ettus.com>; Tue, 24 Dec 2019 10:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Qhr9HNu2trkhzhWc9oN0acWwBxBrzs9UxqmLptEozj4=;
 b=UVOWDgxGzCgfygS9soNgrydFvD6uesvWZo924g+jH7wF6FM6uMXOpXwZ4f8sfLtY6H
 s/5bXqzsOxwqBjYr/kfX7yY470tb16+fO2DEmJ+KS1UXFgGyXaTaQr3+lvWDZGNE28Dt
 8vMoOd3H6Tdwg0s16J0IJT689srQCn35E7g88Zjy4rPoICMsk36DC5eMDzGNN2vlKn8Z
 l2rrxKoZDHEaf8lNe0mH2LpS/M4Tre3T8ou8U9cVvVtKUbEg4EgmHXcx+LxrIC/dDbcP
 sNG7UoZWLHK3DCRmt6JmNI25W8arobjWteQ2mpWt3sI5EI7QKSMbG8o3eouR95LWS0MU
 QrZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Qhr9HNu2trkhzhWc9oN0acWwBxBrzs9UxqmLptEozj4=;
 b=ILEnNebNLMty6JssEP1zRjdVLnJpkV+s+9OZ22PdJ0sNBWw/b5kjT29ZeI3bFPGdCD
 jpdATSvrjjKP/yn6aUvessj7PLxwuJwx3N3lF7VUgaxS2eG+gbPQDdkhi5RuCJqHLxvN
 K5LMIY/oWW6rhFRIsUTmUiUx1wN16UUUCU6zT42ejZdoZ6Yk75awxgHBNTiCZ8+37Uz3
 QqyA3602/oN17OinN5UhKr5lupF6hL8CRhTAaJFTm0u4vd8ST3ansN916Cq6JDVeTEKi
 Jj3QS+zH+l2Ea7xiyBnTl2H7ah4FkKOhPv7hzdjJ958jGQ8dwaBsOKVtsOJ68vUsjYB2
 GiaA==
X-Gm-Message-State: APjAAAXnCWeqSgyCxQMS4AsW21/bqfSdVFmPwAZouBE6Wkx5dlf3fMT4
 NSHCV4nk4p8RJycZ23+NEwCrTVjvbeV1vHRNqLjp5CaQ
X-Google-Smtp-Source: APXvYqxvpiDyCYZSUTx6qvfGiRpmK3IqY7MKavtUhxboW/v7UgC1NKjA97mloNzwulEgG3FtW47lkDuij15S9UWqbXI=
X-Received: by 2002:a37:ac16:: with SMTP id e22mr31957147qkm.186.1577212229630; 
 Tue, 24 Dec 2019 10:30:29 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 24 Dec 2019 18:29:52 +0000
Message-ID: <CAL1aUnocYvbbZ4r6DV9tzFCSM_3SAmX+V=7L2NtsGvjJ+TMQFQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] rc3 URLs for mender update .. incorrect ...
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Subu Rama via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Subu Rama <subu.rama@gmail.com>
Content-Type: multipart/mixed; boundary="===============8885445272916931713=="
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

--===============8885445272916931713==
Content-Type: multipart/alternative; boundary="000000000000aebf46059a775650"

--000000000000aebf46059a775650
Content-Type: text/plain; charset="UTF-8"

In uhd_images_downloader (and in the corresponding .py file), the following
URLs exist.

# E320 Filesystems, etc
e3xx_e320_sdk_default         meta-ettus-v3.15.0.0-rc2
 e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e320_sdk_default-v3.15.0.0-rc3.zip
  0
e3xx_e320_mender_default      meta-ettus-v3.15.0.0-rc3
e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e320_mender_default-v3.15.0.0-rc2.zip
 0
e3xx_e320_sdimg_default       meta-ettus-v3.15.0.0-rc3
e3xx/meta-ettus-v3.15.0.0-rc2/e3xx_e320_sdimg_default-v3.15.0.0-rc3.zip
0

However, this results in uhd_images_downloader failing.

gnuradio@nuc-qrc3 /usr/local/bin >> sudo uhd_images_downloader -t mender -t
e320 --yes
[INFO] Images destination: /usr/local/share/uhd/images
[ERROR] Downloader raised an unhandled exception: URL does not exist:
http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e320_mender_default-v3.15.0.0-rc3.zip
You can run this again with the '--verbose' flag to see more information
If the problem persists, please email the output to: support@ettus.com

Note that http://files.ettus.com/binaries/cache/e3xx/?C=M;O=D does NOT yet
have the rc3 versions.

I do see :

e3xx_e320_fpga_default-gfde2a94e.zip
<http://files.ettus.com/binaries/cache/e3xx/fpga-fde2a94eb/e3xx_e320_fpga_default-gfde2a94e.zip>

in http://files.ettus.com/binaries/cache/e3xx/fpga-fde2a94eb/

I also see the following at
https://github.com/EttusResearch/uhd/tree/UHD-3.15.LTS

fpga-src @ fde2a94
<https://github.com/EttusResearch/fpga/tree/fde2a94eb7231af859653db8caaf777ae2b66199>
Prepare
branch for 3.15.0.0 release
<https://github.com/EttusResearch/uhd/commit/4e06022c383a78434b054a349130c218540ea6f4>
10
days ago


Overall there seems to be some disconnect between github, files.ettus.com,
rc2/rc3 confusion etc.
How do I correct this and get the E320 updated to rc3?

Thank you
Subu

--000000000000aebf46059a775650
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>In uhd_images_downloader (and in the corresponding .p=
y file), the following URLs exist.</div><div><br></div><div># E320 Filesyst=
ems, etc<br>e3xx_e320_sdk_default =C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-ettus-v3=
.15.0.0-rc2 =C2=A0e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e320_sdk_default-v3.15=
.0.0-rc3.zip =C2=A0 =C2=A0 =C2=A0 0<br>e3xx_e320_mender_default =C2=A0 =C2=
=A0 =C2=A0meta-ettus-v3.15.0.0-rc3=C2=A0 e3xx/meta-ettus-v3.15.0.0-rc3/e3xx=
_e320_mender_default-v3.15.0.0-rc2.zip =C2=A0 =C2=A00<br>e3xx_e320_sdimg_de=
fault =C2=A0 =C2=A0 =C2=A0 meta-ettus-v3.15.0.0-rc3=C2=A0 e3xx/meta-ettus-v=
3.15.0.0-rc2/e3xx_e320_sdimg_default-v3.15.0.0-rc3.zip =C2=A0 =C2=A0 0</div=
><div><br></div><div>However, this results in uhd_images_downloader failing=
.</div><div><br></div><div>gnuradio@nuc-qrc3 /usr/local/bin &gt;&gt; sudo u=
hd_images_downloader -t mender -t e320 --yes<br>[INFO] Images destination: =
/usr/local/share/uhd/images<br>[ERROR] Downloader raised an unhandled excep=
tion: URL does not exist: <a href=3D"http://files.ettus.com/binaries/cache/=
e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e320_mender_default-v3.15.0.0-rc3.zip">h=
ttp://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e32=
0_mender_default-v3.15.0.0-rc3.zip</a><br>You can run this again with the &=
#39;--verbose&#39; flag to see more information<br>If the problem persists,=
 please email the output to: <a href=3D"mailto:support@ettus.com">support@e=
ttus.com</a></div><div><br></div><div>Note that <a href=3D"http://files.ett=
us.com/binaries/cache/e3xx/?C=3DM;O=3DD">http://files.ettus.com/binaries/ca=
che/e3xx/?C=3DM;O=3DD</a> does NOT yet have the rc3 versions.</div><div><br=
></div><div>I do see : <br><pre><a href=3D"http://files.ettus.com/binaries/=
cache/e3xx/fpga-fde2a94eb/e3xx_e320_fpga_default-gfde2a94e.zip">e3xx_e320_f=
pga_default-gfde2a94e.zip</a> <br><br></pre><pre>in <a href=3D"http://files=
.ettus.com/binaries/cache/e3xx/fpga-fde2a94eb/">http://files.ettus.com/bina=
ries/cache/e3xx/fpga-fde2a94eb/</a><br><br></pre><pre>I also see the follow=
ing at <a href=3D"https://github.com/EttusResearch/uhd/tree/UHD-3.15.LTS">h=
ttps://github.com/EttusResearch/uhd/tree/UHD-3.15.LTS</a><br></pre><table c=
lass=3D"gmail-files gmail-js-navigation-container gmail-js-active-navigatio=
n-container"><tbody><tr class=3D"gmail-js-navigation-item gmail-navigation-=
focus"><td class=3D"gmail-content"><span class=3D"gmail-css-truncate gmail-=
css-truncate-target"><span title=3D"fpga-src @ fde2a94"><a href=3D"https://=
github.com/EttusResearch/fpga/tree/fde2a94eb7231af859653db8caaf777ae2b66199=
">fpga-src @ fde2a94</a></span></span>
          </td>
          <td class=3D"gmail-message">
            <span class=3D"gmail-css-truncate gmail-css-truncate-target">
                  <a title=3D"Prepare branch for 3.15.0.0 release

- Updated CHANGELOG
- Udated Debian-related files
- Updated images package

Signed-off-by: Michael West &lt;michael.west@ettus.com&gt;" class=3D"gmail-=
link-gray" href=3D"https://github.com/EttusResearch/uhd/commit/4e06022c383a=
78434b054a349130c218540ea6f4">Prepare branch for 3.15.0.0 release</a>
            </span>
          </td>
          <td class=3D"gmail-age">
            <span class=3D"gmail-css-truncate gmail-css-truncate-target"><s=
pan datetime=3D"2019-12-15T06:27:26Z" class=3D"gmail-no-wrap" title=3D"Dec =
15, 2019, 6:27 AM UTC">10 days ago<br><br><br>Overall there seems to be som=
e disconnect between github, <a href=3D"http://files.ettus.com">files.ettus=
.com</a>, rc2/rc3 confusion etc.<br>How do I correct this and get the E320 =
updated to rc3?<br><br>Thank you<br>Subu<br><br><br></span></span></td></tr=
></tbody></table></div></div>

--000000000000aebf46059a775650--


--===============8885445272916931713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8885445272916931713==--

