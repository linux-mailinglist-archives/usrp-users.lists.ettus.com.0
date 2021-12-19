Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C459C47A00F
	for <lists+usrp-users@lfdr.de>; Sun, 19 Dec 2021 10:42:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A716384A5C
	for <lists+usrp-users@lfdr.de>; Sun, 19 Dec 2021 04:42:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BCh8jWZN";
	dkim-atps=neutral
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id AF7BE384800
	for <usrp-users@lists.ettus.com>; Sun, 19 Dec 2021 04:41:05 -0500 (EST)
Received: by mail-yb1-f176.google.com with SMTP id j2so19550247ybg.9
        for <usrp-users@lists.ettus.com>; Sun, 19 Dec 2021 01:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=vM59xTPPwyDMgfkGDLUtdGnHC+sYKF1Xkpcvl9DNkYg=;
        b=BCh8jWZNa1GHyAT94WhXH8rL6QPxw3sspbYVpi/h7YbXBngpJsc5zxcYaafMC0qGUy
         PgfGPoau64Gz7ztwDVD0UB9vx7neNnyxaRN2RrFyPp0wZj0odWfN+f/8cqimnQeSs4dL
         3iMTjG2fRi588co7vncrTSvKU/46YSHPAsEoeVWnkDXwhbMkFNb6k2HzhHfCUitqCR/J
         mPxRqOoG/ovFGObUhO217sWKIFces08agLhFGrGbOMtFdh2oBoOi5UIxgyc3TS6mYRiI
         p5/mOC+i1U67DJcfrU2ewtPX1mtdSnSdne20yMQT8uOmb9MAxJkKmWKnFD3SeQl3zglb
         1cHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vM59xTPPwyDMgfkGDLUtdGnHC+sYKF1Xkpcvl9DNkYg=;
        b=tNA+L8swXXWVbet8GlaprVXMdzM+vywOjkdCZPrTmcC2nniMcHu/6cUWOf40oVkRW/
         oZTWmugw5A7bw3XB3Yr8WaaIl7U8X9wyPSHHWTK+tsyozF7Ku7L8nEi4NNo9gUqJdl25
         NlKyWB6ib/EyRGaNvuMQlsoYuI9Xftsm/Op1cTrKGksdfd4b2jLE2KW1CkeD0AJDiC2H
         iP+TTf5iu+qlrOJKGNLBNQFfXI0av0Zc8SqLu1ZJp80r/s4pz3AlE2PC7Msd+4vlZSWu
         NyfCnDYfznM7MrVIgkRleu/neaAdhI7dw/KUA+Z7SnMtjfn9gmauCUpCESE6zk+x3P2v
         7nFw==
X-Gm-Message-State: AOAM532BvndFjQYxQvXcLTY7Z+RkqrvWdRUKfIyEj30DTVMF0g4kWeQR
	tCHzUGE697SiOITCHSamgdCn5nTH9e8aq2TTTRfeI9OgpbjPGj0+TbI=
X-Google-Smtp-Source: ABdhPJyB+PRSFMSp734fxAObRjTRp4TdCGO7rjUxBkVfbX7lz8hTFe+AlVw0/0oNTUbH77cPx/SLVog/nKzxixTw7Uo=
X-Received: by 2002:a25:a449:: with SMTP id f67mr14952010ybi.368.1639906864269;
 Sun, 19 Dec 2021 01:41:04 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sun, 19 Dec 2021 13:10:53 +0330
Message-ID: <CAA=S3PvatKct3yuqkE+=j7n2YXmGJhb2nVzVvWTPyfMMay5BuQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 2H5WCI2MEWWJKXHXGPMK5UWQXETQ4JRW
X-Message-ID-Hash: 2H5WCI2MEWWJKXHXGPMK5UWQXETQ4JRW
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] In installing gr-ettus when i built Gnuradio and UHD from source i faced with strange errors...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2H5WCI2MEWWJKXHXGPMK5UWQXETQ4JRW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8238951862428490109=="

--===============8238951862428490109==
Content-Type: multipart/alternative; boundary="0000000000001c0c7c05d37c92b2"

--0000000000001c0c7c05d37c92b2
Content-Type: text/plain; charset="UTF-8"

I built Gnuradio from the source, Gnuradio version 3.8.1 with UHD 4.1.04 or
UHD 4.0.0(I tested with  all UHD versions)
now when I want to install gr-ettus oot in Gnuraadio  I am faced with the
below errors...
How can I solve this problem?

Thanks in advance

[ 64%] Swig source ettus_swig.i
Deprecated command line option: -modern. This option is now always on.
/home/sp/Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:140:
Error: Template 'set_property' undefined.
/home/sp/Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:141:
Error: Template 'set_property' undefined.
/home/sp/Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:142:
Error: Template 'set_property' undefined.
/home/sp/Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:143:
Error: Template 'set_property' undefined.
/home/sp/Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:145:
Error: Template 'get_property' undefined.
/home/sp/Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:146:
Error: Template 'get_property' undefined.
/home/sp/Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:147:
Error: Template 'get_property' undefined.
/home/sp/Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:148:
Error: Template 'get_property' undefined.
/usr/local/include/uhd/types/dict.hpp:145: Warning 503: Can't wrap
'operator std::map<std::string,std::string>' unless renamed to a valid
identifier.
make[2]: ***
[swig/CMakeFiles/ettus_swig_swig_compilation.dir/build.make:65:
swig/CMakeFiles/ettus_swig.dir/ettus_swigPYTHON.stamp] Error 8
make[2]: *** Deleting file
'swig/CMakeFiles/ettus_swig.dir/ettus_swigPYTHON.stamp'
make[1]: *** [CMakeFiles/Makefile2:421:
swig/CMakeFiles/ettus_swig_swig_compilation.dir/all] Error 2
make: *** [Makefile:141: all] Error 2

--0000000000001c0c7c05d37c92b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I built Gnuradio from the source, Gnuradio version 3.8.1 w=
ith UHD 4.1.04 or UHD 4.0.0(I tested with =C2=A0all UHD versions)<br>now wh=
en I want to install gr-ettus oot in Gnuraadio =C2=A0I am faced with the be=
low errors...<div>How can I solve this problem?</div><div><br></div><div>Th=
anks in advance</div><div><br><font size=3D"1">[ 64%] Swig source ettus_swi=
g.i<br>Deprecated command line option: -modern. This option is now always o=
n.<br>/home/sp/Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/=
swig/ettus_swig.i:140: Error: Template &#39;set_property&#39; undefined.<br=
>/home/sp/Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/=
ettus_swig.i:141: Error: Template &#39;set_property&#39; undefined.<br>/hom=
e/sp/Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus=
_swig.i:142: Error: Template &#39;set_property&#39; undefined.<br>/home/sp/=
Documents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig=
.i:143: Error: Template &#39;set_property&#39; undefined.<br>/home/sp/Docum=
ents/gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:14=
5: Error: Template &#39;get_property&#39; undefined.<br>/home/sp/Documents/=
gr-ettus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:146: Er=
ror: Template &#39;get_property&#39; undefined.<br>/home/sp/Documents/gr-et=
tus-1038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:147: Error: =
Template &#39;get_property&#39; undefined.<br>/home/sp/Documents/gr-ettus-1=
038c4ce5135a2803b53554fc4971fe3de747d9a/swig/ettus_swig.i:148: Error: Templ=
ate &#39;get_property&#39; undefined.<br>/usr/local/include/uhd/types/dict.=
hpp:145: Warning 503: Can&#39;t wrap &#39;operator std::map&lt;std::string,=
std::string&gt;&#39; unless renamed to a valid identifier.<br>make[2]: *** =
[swig/CMakeFiles/ettus_swig_swig_compilation.dir/build.make:65: swig/CMakeF=
iles/ettus_swig.dir/ettus_swigPYTHON.stamp] Error 8<br>make[2]: *** Deletin=
g file &#39;swig/CMakeFiles/ettus_swig.dir/ettus_swigPYTHON.stamp&#39;<br>m=
ake[1]: *** [CMakeFiles/Makefile2:421: swig/CMakeFiles/ettus_swig_swig_comp=
ilation.dir/all] Error 2<br>make: *** [Makefile:141: all] Error 2</font></d=
iv></div>

--0000000000001c0c7c05d37c92b2--

--===============8238951862428490109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8238951862428490109==--
