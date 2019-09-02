Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A58FCA5BB1
	for <lists+usrp-users@lfdr.de>; Mon,  2 Sep 2019 19:08:03 +0200 (CEST)
Received: from [::1] (port=56278 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i4po9-0002IA-Oz; Mon, 02 Sep 2019 13:08:01 -0400
Received: from mail-io1-f50.google.com ([209.85.166.50]:35760)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1i4po5-0002Dg-Kv
 for usrp-users@lists.ettus.com; Mon, 02 Sep 2019 13:07:57 -0400
Received: by mail-io1-f50.google.com with SMTP id b10so30379934ioj.2
 for <usrp-users@lists.ettus.com>; Mon, 02 Sep 2019 10:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RCmVMywz1rB5I5BPeq/pWgKadrgBXvfbZM5xGXX+S+I=;
 b=fh1m4iLWQXCumKB50uK+6bS0AnO0+XeWY268lfIlP2bTeYAnlUPH9dQH6yVeYpxfW2
 k5H5Q8Y1CQ10DEHY4GjTWmfzr1/m1AHDh36GXTGAOYYjHmHM4FJv3gr+/2qTb6tqjITr
 SRSjlbNcTR2BU1lBG/SVcHNMAd6VPsN0J6q669wWakfknbCigpGYbpSDMp/ZTAez7SAc
 1UXV5sJEJaHVHJ+t4couKw24YthRiz6jaOKWJjyFqmDaeCuhSjUSNocUT2+FGTfper+0
 5c8B03WYfMibhvYH2QAKYd7NIFibbSXJSEPAhMyOQQnKoSXAbI0SC/GNgg5HdpPTecf5
 3VnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RCmVMywz1rB5I5BPeq/pWgKadrgBXvfbZM5xGXX+S+I=;
 b=eS0SVE3nW7LjlOpORAaJozkqZut6+xEkrRu3CsdCW09X4O2C58tkdXeOdFFWIRfZdA
 2HGHC/ln8We3oj9Aa9lqKoDEiFIBR1+jQw/IXBIwPZlcPbBAkgfV2nb6DCkzcrtUt5BL
 KSUv8kJja388kjrJwThxShAAIdSycDzJbWYD3BwhXm9d7/Xw05JvtZp4UgFDE6QhFLPj
 dFnRHu1RfT2Dz2tFuwuvhd38SvFxJ2/EqdR0GeP+G0Y96AGMxibr2lM0HZjwxs1KG0Qy
 KkiL437nmy5JRgDa9PPxA1p+Tj+nRiujmEBZQChFl8uazMkr8z19PaxS9esFUQYoD3p+
 yJpQ==
X-Gm-Message-State: APjAAAWceAieUbA2SWgJ9zXJOeDAVdz6whav22hMRuP9aIgPb1weXB31
 t710zTo8P602J4xA49DyXu0XJAohuMLdlr82ryPzMQ==
X-Google-Smtp-Source: APXvYqwTzVTDaLiOs3bIhj12ctLvc59mLAtPvK8/2N6oa+uFr9OBaiQ3oM9yHcOj5ERFMA+PChlDXkMv83zoGnNJZdg=
X-Received: by 2002:a5d:844f:: with SMTP id w15mr20048903ior.102.1567444036843; 
 Mon, 02 Sep 2019 10:07:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAMHwfuiwk2DfqSEt1SJkxhriZraRML9XWYFYDzZHxEOW3MJpVA@mail.gmail.com>
 <CACaXmv9avqAniNLvxOs7ybiR7g5+kpdd6ZntXcFvgTU3PgUHMg@mail.gmail.com>
In-Reply-To: <CACaXmv9avqAniNLvxOs7ybiR7g5+kpdd6ZntXcFvgTU3PgUHMg@mail.gmail.com>
Date: Mon, 2 Sep 2019 10:07:06 -0700
Message-ID: <CAKJyDkL0VZfguLeN+wws7VFNu6K-a9ETz2XRA=V4844NYX5vzQ@mail.gmail.com>
To: Neel Pandeya <neel.pandeya@ettus.com>
Subject: Re: [USRP-users] Vivado Version Compatiability, X310
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
Cc: "shachar J. brown via USRP-users" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3534691330556804368=="
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

--===============3534691330556804368==
Content-Type: multipart/alternative; boundary="00000000000005977205919501e4"

--00000000000005977205919501e4
Content-Type: text/plain; charset="UTF-8"

What Neel says in the previous is correct, but it doesn't answer your
question.  This error is telling you that the script is having issues with
the Vivado licenses on your PC.  One of the first things that the
*uhd_image_builder.py
*script does is execute *setupenv.sh *in *fpga/usrp3/top/x300*.  To attempt
to debug, navigate to that directory, and execute the setup script manually
from the command line *(source ./setupenv.sh* on Linux) and then try to
launch Vivado from the command line.  If Vivado launches successfully, go
the Help-->License Manager and make sure there aren't any expired licenses
and that Vivado is properly recognizing your 2018.3 license.   If Vivado
doesn't launch, make sure that the setup script is pointing to the location
where you installed Vivado.

You might also try running *uhd_image_builder.py -c*, which will clean up
any old IP cores and regenerate them.

-Robin



On Mon, Sep 2, 2019 at 8:08 AM Neel Pandeya via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello Steve:
>
> In the UHD 3.14 release series, RFNoC requires the use of Xilinx Vivado
> version 2017.4.  In the UHD 3.15 release series, RFNoC will require the use
> of Xilinx Vivado version 2018.3.  Other versions of Vivado have not been
> tested and are not supported.  Please note that 3.15.0.0 has not been
> released yet.  I would suggest that you continue using the 3.14 release
> series until 3.15.0.0 is available, and this will allow you to continue
> using Vivado 2017.4.  Your Xilinx license should allow you to install and
> use multiple versions of Vivado.  Please let me know if you have any
> further questions.
>
> --Neel Pandeya
>
>
>
> On Mon, 2 Sep 2019 at 09:05, shachar J. brown via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi all,
>>
>> I have been working for a long while with rfnoc on an X310.
>>
>> I have lately upgraded the rfnoc, and now when I try to run
>> uhd_image_builder.py I receive an error indicating I need Vivado 2018.12,
>> while my licence is for 2018.3. Upgrading the Vivado is currently not
>> available.
>>
>> 1. Is there any workaround for using the updated rfnoc version alongside
>> Vivado 2018.3 or older?
>> 2. If the first suggestion is not an option, is there any way to
>> downgrade the rfnoc to a version that is compatiable with Vivado 2018.3 or
>> older?
>>
>> Thanks in advance!
>> Steve
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000005977205919501e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>What Neel says in the previous is correct, but it doe=
sn&#39;t answer your question.=C2=A0 This error is telling you that the scr=
ipt is having issues with the Vivado licenses on your PC.=C2=A0 One of the =
first things that the <i>uhd_image_builder.py </i>script does is execute <i=
>setupenv.sh </i>in <i>fpga/usrp3/top/x300</i>.=C2=A0 To attempt to debug, =
navigate to that directory, and execute the setup script manually from the =
command line <i>(source ./setupenv.sh</i> on Linux) and then try to launch =
Vivado from the command line.=C2=A0 If Vivado launches successfully, go the=
 Help--&gt;License Manager and make sure there aren&#39;t any expired licen=
ses and that Vivado is properly recognizing your 2018.3 license.=C2=A0 =C2=
=A0If Vivado doesn&#39;t launch, make sure that the setup script is pointin=
g to the location where you installed Vivado.</div><div><br></div><div>You =
might also try running <i>uhd_image_builder.py -c</i>, which will clean up =
any old IP cores and regenerate them.<br><div><div><div><div><div><br></div=
><div>-Robin<br><div><div><br>=C2=A0</div></div></div></div></div></div></d=
iv></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, Sep 2, 2019 at 8:08 AM Neel Pandeya via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,sans-s=
erif">Hello Steve:</div><div class=3D"gmail_default" style=3D"font-family:v=
erdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fam=
ily:verdana,sans-serif">In the UHD 3.14 release series, RFNoC requires the =
use of Xilinx Vivado version 2017.4.=C2=A0 In the UHD 3.15 release series, =
RFNoC will require the use of Xilinx Vivado version 2018.3.=C2=A0 Other ver=
sions of Vivado have not been tested and are not supported.=C2=A0 Please no=
te that 3.15.0.0 has not been released yet.=C2=A0 I would suggest that you =
continue using the 3.14 release series until 3.15.0.0 is available, and thi=
s will allow you to continue using Vivado 2017.4.=C2=A0 Your Xilinx license=
 should allow you to install and use multiple versions of Vivado.=C2=A0 Ple=
ase let me know if you have any further questions.</div><div class=3D"gmail=
_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"=
gmail_default" style=3D"font-family:verdana,sans-serif">--Neel Pandeya</div=
><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br>=
</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"=
><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, 2 Sep 2019 at 09:05, shachar J. brown via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I have been wor=
king for a long while with rfnoc on an X310.=C2=A0</div><div><br></div><div=
>I have lately upgraded the rfnoc, and now when I try to run uhd_image_buil=
der.py I receive an error indicating I need Vivado 2018.12, while my licenc=
e is for 2018.3. Upgrading the Vivado is currently not available.</div><div=
><br></div><div>1. Is there any workaround for using the updated rfnoc vers=
ion alongside Vivado 2018.3 or older?</div><div>2. If the first suggestion =
is not an option, is there any way to downgrade the rfnoc to a version that=
 is compatiable with Vivado 2018.3 or older?</div><div><br></div><div>Thank=
s in advance!</div><div>Steve</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000005977205919501e4--


--===============3534691330556804368==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3534691330556804368==--

