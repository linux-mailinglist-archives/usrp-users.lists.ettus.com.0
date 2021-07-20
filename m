Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DA03CF09F
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jul 2021 02:18:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7628638468B
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 20:18:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l270VlKr";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 9BF8E383EFD
	for <usrp-users@lists.ettus.com>; Mon, 19 Jul 2021 20:17:23 -0400 (EDT)
Received: by mail-qk1-f170.google.com with SMTP id t185so18553625qkd.3
        for <usrp-users@lists.ettus.com>; Mon, 19 Jul 2021 17:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=fsNW54Zl3Z2knB6x/RJgnbFzG+CyN4p4TSC6MwPIb+M=;
        b=l270VlKr2NsPo6A8u945MHfdOWnaGC6ckGGF9uh6soCmhdZ1Rbq0H3huaHXpG5U35J
         BgsGXDdT0qtwWN5Z6zJ9qnLo5NXGot5R5GUqpBc7cCA5+avvr1KPWUI7O9LA8s6te+HB
         NovTloNv5ToACUpGwgq7NrOOPqOXdxaDqfO+bhXGhesNKwd9kdxkHHlzYMT2wKRj5oZZ
         m1XlbpQdmZiqxhrnmpE3wCeadOA4+AKdw4BdxzdaxPm29itvIl8boU98GUigCTsU7xYl
         j/sEIWVkXQs8OzWAVu9+YOXNpMxgc5rB0jCmTzRqvkSK5NSLdsSKXVqD8WpRUrC2sQ1z
         wD7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=fsNW54Zl3Z2knB6x/RJgnbFzG+CyN4p4TSC6MwPIb+M=;
        b=Wb4wVUiHSHO1RAdyy1qwP+jfP3lhJY11HiECXb4AnvZ98I0e0CJhAcfBfkpcCwSqzb
         DIPohQUjEeIbtCyDsBgTOq2aOkKv0KVswDDYZTTAPylxC6CUwVJVTG+LmJCPHZkmBHhE
         llnxYrcxx07yXAjV5bqjB5+V2XdOmaXQsCiFgiNx045D5QIFhSWMMPH+6CITpIkzboQX
         4K+LWYeogB1mqaEoX3T9V9hURQIluPI3kzy/We99jAUK1w5F/FyculmH8nqr8T5scz4k
         bsfIJetWTAvTYrVG4JjIdBSZ8P/GjG5/eQRZDAp+rWi2yh/eOLsYblEZxt4LXpWwJPc1
         boFg==
X-Gm-Message-State: AOAM531a2QuvKXkrBxIF6NehOcinImbynBm3HApgf6SGBIpGdaux6y+s
	UOfccdP/YqR3Pu6Jn44iyIk=
X-Google-Smtp-Source: ABdhPJwxEgZKe28KGCVheIwqzIP+m5mkBfe4n6mpYJe4ocgDHehXKPiCDCmaYT0UjmIVw81AGel9wg==
X-Received: by 2002:a05:620a:1367:: with SMTP id d7mr27344976qkl.243.1626740243060;
        Mon, 19 Jul 2021 17:17:23 -0700 (PDT)
Received: from smtpclient.apple ([2601:151:c000:a810:750f:d5ce:63a0:6b97])
        by smtp.gmail.com with ESMTPSA id t74sm8822758qka.56.2021.07.19.17.17.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 17:17:22 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Jul 2021 20:17:21 -0400
Message-Id: <C9129E7E-C27B-456F-AB01-1C25F7322316@gmail.com>
References: <CAL7q81uZBTVbmzN13uV3T83eYnO1BcN9QNY_0ystN8Boov2TAg@mail.gmail.com>
In-Reply-To: <CAL7q81uZBTVbmzN13uV3T83eYnO1BcN9QNY_0ystN8Boov2TAg@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 5QPQ2AWGRCJNFIYTUEWEFBJZA347KHAK
X-Message-ID-Hash: 5QPQ2AWGRCJNFIYTUEWEFBJZA347KHAK
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: rblack@swri.org, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: available RFNoc blocks for UHD 4.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5QPQ2AWGRCJNFIYTUEWEFBJZA347KHAK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1944478968019296357=="


--===============1944478968019296357==
Content-Type: multipart/alternative; boundary=Apple-Mail-F4D8AC80-741C-4D87-9364-186F058B5D59
Content-Transfer-Encoding: 7bit


--Apple-Mail-F4D8AC80-741C-4D87-9364-186F058B5D59
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hey Jonathan,
I=E2=80=99m starting the process of expanding gr-Ettus to include most (if n=
ot all) of the existing blocks in the library. My thought was that I could u=
se =E2=80=9Cgr_modtool add=E2=80=9D to create the basic block structure insi=
de of gr-ettus then go ahead creating the impl and header files to reflect t=
he available functions in control.hpp (just like the DDC/DUC).=20

I=E2=80=99m starting with the siggen block and I=E2=80=99ve gotten it to bui=
ld but if i open a flowgraph that contains any RFNoC blocks I get a segfault=
 right away with the message=20

Warning: restarting the docstring loader (crashed while loading =E2=80=A6

The message lists the RFNoC blocks as the problem and I=E2=80=99ve repeated i=
t across 2 systems.=20

Apart from my yaml code being wrong somewhere Is there any reason this shoul=
dn=E2=80=99t work? Do you have another suggestion for a quasi-automated proc=
ess i could use to finally get these blocks out to the GR community?

Thanks

<end transmission>

> On Jun 30, 2021, at 11:26, Jonathon Pendlum <jonathon.pendlum@ettus.com> w=
rote:
>=20
> =EF=BB=BF
> Hi,
>=20
> While all the blocks in the KB article are available for UHD apps, not all=
 of them have GNU Radio / gr-ettus support. The eventual goal is to port mos=
t of the missing blocks, although I don't have a timeline on when that will h=
appen.
>=20
> Jonathon
>=20
>> On Wed, Jun 30, 2021, 10:26 <rblack@swri.org> wrote:
>> My understanding is that the currently available in-tree blocks does not m=
atch the list in the reference that you point to. FOr instance, the =E2=80=9C=
replay=E2=80=9D block shown in that list is not available. I=E2=80=99m not s=
ure that siggen is available either.
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-F4D8AC80-741C-4D87-9364-186F058B5D59
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hey Jonathan,<div>I=E2=80=99m starting the p=
rocess of expanding gr-Ettus to include most (if not all) of the existing bl=
ocks in the library. My thought was that I could use =E2=80=9Cgr_modtool add=
=E2=80=9D to create the basic block structure inside of gr-ettus then go ahe=
ad creating the impl and header files to reflect the available functions in c=
ontrol.hpp (just like the DDC/DUC).&nbsp;</div><div><br></div><div>I=E2=80=99=
m starting with the siggen block and I=E2=80=99ve gotten it to build but if i=
 open a flowgraph that contains any RFNoC blocks I get a segfault right away=
 with the message&nbsp;</div><div><span style=3D"caret-color: rgb(34, 34, 34=
); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 15.008=
000373840332px; -webkit-text-size-adjust: 100%; background-color: rgb(255, 2=
55, 255);"><br></span></div><div><span style=3D"caret-color: rgb(34, 34, 34)=
; color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 15.0080=
00373840332px; -webkit-text-size-adjust: 100%; background-color: rgb(255, 25=
5, 255);">Warning: restarting the docstring loader (crashed while loading =E2=
=80=A6</span></div><div><br></div><div>The message lists the RFNoC blocks as=
 the problem and I=E2=80=99ve repeated it across 2 systems.&nbsp;</div><div>=
<br></div><div>Apart from my yaml code being wrong somewhere Is there any re=
ason this shouldn=E2=80=99t work? Do you have another suggestion for a quasi=
-automated process i could use to finally get these blocks out to the GR com=
munity?</div><div><br></div><div>Thanks</div><div><br></div><div><div dir=3D=
"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-co=
lor: rgba(26, 26, 26, 0.298);">end transmission&gt;</span></div><div dir=3D"=
ltr"><br><blockquote type=3D"cite">On Jun 30, 2021, at 11:26, Jonathon Pendl=
um &lt;jonathon.pendlum@ettus.com&gt; wrote:<br><br></blockquote></div><bloc=
kquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"auto"><div>Hi,</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">While all the blocks in the=
 KB article are available for UHD apps, not all of them have GNU Radio / gr-=
ettus support. The eventual goal is to port most of the missing blocks, alth=
ough I don't have a timeline on when that will happen.</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Jonathon<br><br><div class=3D"gmail_quote" dir=
=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 30, 2021, 10:26 =
 &lt;<a href=3D"mailto:rblack@swri.org">rblack@swri.org</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><p>My understanding is that the currently a=
vailable in-tree blocks does not match the list in the reference that you po=
int to.  FOr instance,  the =E2=80=9Creplay=E2=80=9D block shown in that lis=
t is not available. I=E2=80=99m not sure that siggen is available either.</p=
>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.co=
m</a><br>
</blockquote></div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-F4D8AC80-741C-4D87-9364-186F058B5D59--

--===============1944478968019296357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1944478968019296357==--
