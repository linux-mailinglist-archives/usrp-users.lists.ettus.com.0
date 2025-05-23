Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F5AAC2429
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 15:38:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBBF63808ED
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 09:38:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748007512; bh=OTwkSUMDhktRWf365GjTOsawHHnu8x+ykEpoh9Shx6A=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=UkQUznJFhNn5EQUGuLHccPb9vLkppT2ko4wfYBRWWRM+qREPDe7lh7+3Lx3vntHNE
	 kg5YFf0O23PDHckNr8+hUpQb5n3J8JewE+SfnON7ZttzTK1EEDLXZ++b2gW5Av8hz1
	 8Yh7I9/CO3ncem+EgoOHxrl+WL+HTzU26IuPKKSDw1YRLGvvPrkULAdTI2yf4PmBWH
	 W6Y7gJdMyvMSqr5kBaY5UO2mT74lI3j9cKR96YEgR/62dqmqrxGU33twPMSpI4nTqi
	 Fum4kfJjPWry3PezQQx2fCYfrB2oeWdzrI/YdeuWN1H0Aph/ZM8BiXh1eSRLEsxh0q
	 C0OPUBp9Jx2BQ==
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 75875385631
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 09:37:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="V5s5DYvf";
	dkim-atps=neutral
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-742c27df0daso5367730b3a.1
        for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 06:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1748007457; x=1748612257; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MSLo5ND8HYBZ1ibK5ECmng3FXtaAfoo/bN+0TabdJq8=;
        b=V5s5DYvf3ATv8Aq1q98O0ccYpScaRk7w5LZe6OXXwVfUL5FKIsFI2WGV99VV5+xF1y
         xPD3PQ/GULK+y3NNq5Tw7jn/NxaoF2dST8Wt2G8BwPt5xm5KYujnaK8nPjQmlsHpuoYH
         /SF1OGFqve/WF/RtiTyC2xPGqpL7Hbr9CtinBIsme8LnRLjGV1A32MBRbkU4n4j/xMh7
         zNxslWc1VFNKX7ooKbic9Uzv8POAY+lDK/hBAQdrSlfXlzOEvdAmhGnGCJAZ4tuFO59U
         v6HWGRW80faYElrod5kcZXWS2sncfd6oT3S2wOCqMBwFneUlzha9nyObxeHRiTtDZ7vj
         WwVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748007457; x=1748612257;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MSLo5ND8HYBZ1ibK5ECmng3FXtaAfoo/bN+0TabdJq8=;
        b=BxwxPjTa9dUApDLprhs3WS6F4JSekMg51eAdolBS8QLgBWhNj1QxDT9ij3MxDbV0SG
         87p0go0U5B80BQPwjxSlVdto6SnHZb2rsPamGRtNsdNMh18PYLwnZ0BpfE1lnF56Fp+d
         gyLRYZ1WbBDqp38DmuR3Co4pVSmwRb0dYsyL1RnlFDRvbGNgcHzP4BhVUNC9v0pxlgJG
         Ix/n8mi/O6Zhm/tK4EdkvC5LiG+FUikAwh6N0zyQvVeJbzn72Xyh3yurqD9cGhtXHfCK
         4lwWozO3OihgfyaO+9OxbRkmCPwvW7BYIsrc9CrOWt4z7VO3g9t9qDHCgIBazGN5uRz9
         5W0g==
X-Gm-Message-State: AOJu0Yz9yeqfsAedtXJgjeARRe4RHilK5UtzDS2kSicT9PtH9k43Pepl
	2IvW8eLo6lXlJ68ErybPQvbaCnNajERRUbPmCpUu5d52NknF0IMkveNCvRPVuUacrz5BUhVgExI
	T39x/Lpq5igEFLYUdzvyyxBVRFq5Y8Bpu74B2qXO5vmiaMykK2Gw=
X-Gm-Gg: ASbGncuGEUgDc+jHl5ZzrhFIGNw1I7ptGZq8e17kVYj7H3xvKoGeyamARWimUzVgveW
	BZ5iTxsoTd/AfyRC13jY4rL45ra5zHO6XEZ9sP6LDshkwHpTDN6QIWj698gyCSTVzJOxVZEaE73
	rVJsdkFrpEM6rrITPj7h11SeGw2v15NaqvJ9bnmfOJXaQ=
X-Google-Smtp-Source: AGHT+IEEEPt8PT9gYddNtX9nrApXa5NfX/QTKsfUyKzruoPBJyWOALITSELacUjFaIjyRA2/0fpMONWAys5vpnF5cLg=
X-Received: by 2002:a05:6a00:ca:b0:742:aecc:c47c with SMTP id
 d2e1a72fcca58-742aeccc69cmr32523489b3a.7.1748007457336; Fri, 23 May 2025
 06:37:37 -0700 (PDT)
MIME-Version: 1.0
References: <06fc5d04db3c4177904569150e0e304f@vastech.co.za>
 <CAB__hTSsONuCyQnpOMbSviitzzquiCP-r1evSbYg14cA1kLE-g@mail.gmail.com>
 <CAFOi1A7-TjVcBPKPijcXEk4hUzgix7VNQp+yCYg3r_myOWw6ug@mail.gmail.com>
 <30cbe3e83ca7428a9539c30cdc2044d7@vastech.co.za> <CAFOi1A7vjYrEdbbN8-Wo7==y98mR2svSSYiv3Z17mdgC6bjhjg@mail.gmail.com>
In-Reply-To: <CAFOi1A7vjYrEdbbN8-Wo7==y98mR2svSSYiv3Z17mdgC6bjhjg@mail.gmail.com>
Date: Fri, 23 May 2025 09:37:23 -0400
X-Gm-Features: AX0GCFvYwCmBgISdI065rasQI0HSuZ73sz3RR7-Ydn392bfYAuOC3dHN7lN_X5w
Message-ID: <CAB__hTSakjqU4gUExqn2yScuLqcCgyy0d79pkUNHew1AZ+a3OA@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: OEWS6LOH4OB2RJAKG2YZVY3F5Z2J47ED
X-Message-ID-Hash: OEWS6LOH4OB2RJAKG2YZVY3F5Z2J47ED
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: rfnoc loopback to tx ports, and other warnings
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OEWS6LOH4OB2RJAKG2YZVY3F5Z2J47ED/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1785815076846462470=="

--===============1785815076846462470==
Content-Type: multipart/alternative; boundary="0000000000008f4c360635cdb3ba"

--0000000000008f4c360635cdb3ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you haven't seen it, the stock example rfnoc_radio_loopback
<https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc_radio=
_loopback.cpp>
might
be helpful to look at. This should work with a stock image to show a simple
loopback from Rx to Tx.  If you modify freqs (ddc/duc or radio freqs), you
can have your loopback implement frequency conversion.
Rob

On Fri, May 23, 2025 at 7:17=E2=80=AFAM Martin Braun <martin.braun@ettus.co=
m> wrote:

>
>
> On Fri, May 23, 2025 at 9:44=E2=80=AFAM Kevin Williams <
> kevin.williams@vastech.co.za> wrote:
>
>> Hi Martin,
>>
>>
>>
>> I read too quickly =E2=80=93 you said splitter and duc DON=E2=80=99T acc=
ept stream
>> commands.
>>
>
> Misunderstanding: The Radio-input-ports do not accept stream commands. Th=
e
> split-stream and DUC blocks will happily forward them.
>
>
>> Is it not correct, then, to DROP streaming commands instead?
>>
>
> Your PolConverter should one-to-fan (which it seems it does).
>
>>
>>
>> What I would really like is for a streaming command that starts the whol=
e
>> pol converter stream processing to start the TX side as well, automatica=
lly.
>>
>
> If you remove the timestamps, then TX will start automatically. If neithe=
r
> your PolConverter nor your UHD host code needs timestamps, you can simply
> turn them off in the radio:
> https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1radio__control.=
html#a4a8f86f1fac5a9c356a76744aebfcc91
>
> --M
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008f4c360635cdb3ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you haven&#39;t seen it, the stock example <a href=3D"h=
ttps://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc_radio_l=
oopback.cpp">rfnoc_radio_loopback</a>=C2=A0might be helpful to look at. Thi=
s should work with a stock image to show a simple loopback from Rx to Tx.=
=C2=A0 If you modify freqs (ddc/duc or radio freqs), you can have your loop=
back implement frequency conversion.<div>Rob</div></div><br><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Fri, May 23, 2025 at 7:17=E2=80=AFAM Martin Braun &lt;<a href=3D"mailto:mar=
tin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr=
"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Fri, May 23, 2025 at 9:44=E2=80=AFAM Kevin Williams &lt;<a href=3D=
"mailto:kevin.williams@vastech.co.za" target=3D"_blank">kevin.williams@vast=
ech.co.za</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div><div lang=3D"EN-ZA"><div><p class=3D"MsoNormal"><span>Hi Ma=
rtin,<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u>=
</u></span></p><p class=3D"MsoNormal"><span>I read too quickly =E2=80=93 yo=
u said splitter and duc DON=E2=80=99T accept stream commands.</span></p></d=
iv></div></div></blockquote><div><br></div><div>
<div dir=3D"ltr">Misunderstanding: The=20
Radio-input-ports do not accept stream commands. The split-stream and=20
DUC blocks will happily forward them.</div>=C2=A0=C2=A0 <span><br></span></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div lang=3D"EN-=
ZA"><div><p class=3D"MsoNormal"><span>Is it not correct, then, to DROP stre=
aming commands instead?</span></p></div></div></div></blockquote><div><br><=
/div><div>Your PolConverter should one-to-fan (which it seems it does). <br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div lang=3D"=
EN-ZA"><div><p class=3D"MsoNormal"><span><u></u><u></u></span></p><p class=
=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal">=
<span>What I would really like is for a streaming command that starts the w=
hole pol converter stream processing to start the TX side as well, automati=
cally.</span></p></div></div></div></blockquote><div><br></div><div>If you =
remove the timestamps, then TX will start automatically. If neither your Po=
lConverter nor your UHD host code needs timestamps, you can simply turn the=
m off in the radio: <a href=3D"https://uhd.readthedocs.io/en/latest/classuh=
d_1_1rfnoc_1_1radio__control.html#a4a8f86f1fac5a9c356a76744aebfcc91" target=
=3D"_blank">https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1radio=
__control.html#a4a8f86f1fac5a9c356a76744aebfcc91</a></div><div><br></div><d=
iv>--M</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008f4c360635cdb3ba--

--===============1785815076846462470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1785815076846462470==--
