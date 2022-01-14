Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6A048EC61
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 16:16:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B5C3385185
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 10:16:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Jlb86jFp";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id B9FE8385294
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 10:15:52 -0500 (EST)
Received: by mail-qt1-f177.google.com with SMTP id q14so10931195qtx.10
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 07:15:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=HK6bTRl6ZkNuoPLUQgCRrqnhuVgXN6V+D1GAkXLvqI8=;
        b=Jlb86jFpQWSDnzjORVkxoiwLM5WO1DEBo6DkzWKwLeTLMLDkVfXK9XJHR3XFNXE80z
         nIUrWE/EEysxD90lnth772yR+iZGxvLouqVFf3i4H19TXQU/TMCQz63DgoNSCj0V/Hji
         C3FurQ4YHBC9iizXhqA3tjr0zbidMA3C9sfYhfbFldm8re+Z9AqtXC/lN0QMOEkHDXfq
         9aRJk2zUAojXzsbH6hphFsjGxQ0b6cTCGR0MRrURht9M/dX+jwU4GoZqSbEwDlu5MuDp
         gaI8REDXvWezcBnBkrzPnObamReuD8YJOzMW/SzXGRqhJmaNWlJhFC2qStl5gKJhh4sR
         1V6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=HK6bTRl6ZkNuoPLUQgCRrqnhuVgXN6V+D1GAkXLvqI8=;
        b=UhJpmMsAjVMCZkoQMnjIXzyydGeKexPDdA1bHp0qOZbXMwVfzvKPXADtyGe99AP3cP
         Zs1IA9bnYSpBW/vlCd3Pv2ButuCfdTcpSrjMytRVhc0PyN4XncfdKMtGV7XrnanOADCk
         CCnNPZfJKFOTD67u+ecvIv8X/ObprbjRBMi5RmX5lz6UkLn0gdL2Mp3qJL+wfZ6rJL2M
         u8KWmq0tVg+rLY0lf2Md4tE/WbvrNTDpR7FShMfoPFfstzvT27vjvXrGhSHjLHJAkFjL
         luF5IIFu9MCGdc5PR/TjWpz/HWaHk0f5fBzOdVXtkA8hwaCMFeZbPNnwJWjba9cvZWXi
         3+HQ==
X-Gm-Message-State: AOAM533zB6lwyUrro4MCxoMTjfxpo+YXNYZn363b86ifK270fvt3Kz9S
	7CglRlK7XxWlHtkDG5757+x/l5DKdgE=
X-Google-Smtp-Source: ABdhPJx88HvadhFJfRDNuJDqCjW6DAm3vi9VgRkdaTZ3toriXfPRR2gDCuF3cnJPTK8oVawh6z3kVA==
X-Received: by 2002:ac8:5ac3:: with SMTP id d3mr8218318qtd.388.1642173351784;
        Fri, 14 Jan 2022 07:15:51 -0800 (PST)
Received: from smtpclient.apple ([2600:380:407d:5347:5c46:c86d:a4da:e916])
        by smtp.gmail.com with ESMTPSA id c25sm3973821qkp.31.2022.01.14.07.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 07:15:51 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 14 Jan 2022 10:15:50 -0500
Message-Id: <169FCCA6-36C3-40F0-A3B5-7B347D796154@gmail.com>
References: <CAB__hTQ6tr3TTmRChFu__utx+H1-0GJY0p-rU91PBg4HZMx0zA@mail.gmail.com>
In-Reply-To: <CAB__hTQ6tr3TTmRChFu__utx+H1-0GJY0p-rU91PBg4HZMx0zA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: WBLY4THTJCRSU5D4V6VJGJQOIJE3AALT
X-Message-ID-Hash: WBLY4THTJCRSU5D4V6VJGJQOIJE3AALT
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WBLY4THTJCRSU5D4V6VJGJQOIJE3AALT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4224421373472645077=="


--===============4224421373472645077==
Content-Type: multipart/alternative; boundary=Apple-Mail-975499EF-CC0F-4051-B35D-A93AF8D21E42
Content-Transfer-Encoding: 7bit


--Apple-Mail-975499EF-CC0F-4051-B35D-A93AF8D21E42
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I see what you=E2=80=99re saying. Are you recommending setting both to exter=
nal so the paths are equal?

<end transmission>

> On Jan 14, 2022, at 09:25, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> Hi Paul,
> Based on the block diagram, I think I would set both LOs to use an externa=
l source. I would set the Tx0 export the LO on Tx Output 0 and then route it=
 directly back into Tx Input 1 which then goes to a 1:2 splitter to feed bot=
h inputs.  In addition to exporting the LO and setting the LO source to exte=
rnal for both ports, you also need to enable the Tx Output 0 (disabled by de=
fault). I've forgotten the command to do so.
> Rob
>=20
>=20
>=20
>> On Fri, Jan 14, 2022 at 1:11 AM Paul Atreides <maud.dib1984@gmail.com> wr=
ote:
>> I am trying to configure the N321 to take some TX phase measurements betw=
een RF0 and RF1=20
>> I have updated the file system to the latest release using the KB guidanc=
e.=20
>>=20
>> My host/software side is:
>> GNURadio 3.9.5
>> UHD 4.1.0.5
>> Ubuntu 20.04
>>=20
>> My gr-uhd block has the LO settings:
>> Channel 0 export =3D true
>> Channel 0 LO =3D internal
>>=20
>> Channel 1 export =3D false
>> Channel 1 LO =3D external
>>=20
>> On the hardware side am I understanding the LO diagram correctly that in o=
rder to achieve the highest phase accuracy between channels i need to share t=
he LO between the transmit ports of RF0 and RF1?=20
>> If so, would I do that by physically connecting the TX LO OUT0 (really 0-=
3) to TX LO IN1?=20
>>=20
>> Am I missing anything obvious for the settings and/or is there a more des=
irable way to do this?
>>=20
>> Thanks
>>=20
>> <end transmission>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-975499EF-CC0F-4051-B35D-A93AF8D21E42
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I see what you=E2=80=99re saying. Are you r=
ecommending setting both to external so the paths are equal?<div><br><div di=
r=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-highligh=
t-color: rgba(26, 26, 26, 0.298);">end transmission&gt;</span></div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Jan 14, 2022, at 09:25, Rob Kossle=
r &lt;rkossler@nd.edu&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi Paul,<div>Based on the<=
a href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_rh_lo_shar=
ing"> block diagram</a>, I think I would set both LOs to use an external sou=
rce. I would set the Tx0&nbsp;export the LO on Tx Output 0 and then route it=
 directly back into Tx Input 1 which then goes to a 1:2 splitter to feed bot=
h inputs.&nbsp; In addition to exporting the LO and setting the LO source to=
 external for both ports, you also need to enable the Tx Output 0 (disabled b=
y default). I've forgotten the command to do so.</div><div>Rob</div><div><br=
></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Jan 14, 2022 at 1:11 AM Paul Atreides &lt;<a hre=
f=3D"mailto:maud.dib1984@gmail.com">maud.dib1984@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">I am trying to confi=
gure the N321 to take some TX phase measurements between RF0 and RF1 <br>
I have updated the file system to the latest release using the KB guidance. <=
br>
<br>
My host/software side is:<br>
GNURadio 3.9.5<br>
UHD 4.1.0.5<br>
Ubuntu 20.04<br>
<br>
My gr-uhd block has the LO settings:<br>
Channel 0 export =3D true<br>
Channel 0 LO =3D internal<br>
<br>
Channel 1 export =3D false<br>
Channel 1 LO =3D external<br>
<br>
On the hardware side am I understanding the LO diagram correctly that in ord=
er to achieve the highest phase accuracy between channels i need to share th=
e LO between the transmit ports of RF0 and RF1? <br>
If so, would I do that by physically connecting the TX LO OUT0 (really 0-3) t=
o TX LO IN1? <br>
<br>
Am I missing anything obvious for the settings and/or is there a more desira=
ble way to do this?<br>
<br>
Thanks<br>
<br>
&lt;end transmission&gt;<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-975499EF-CC0F-4051-B35D-A93AF8D21E42--

--===============4224421373472645077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4224421373472645077==--
