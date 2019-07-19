Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 169756D7B2
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2019 02:15:26 +0200 (CEST)
Received: from [::1] (port=51762 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoGYW-0006W1-7A; Thu, 18 Jul 2019 20:15:24 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:44826)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hoGYS-0006RO-Ip
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 20:15:20 -0400
Received: by mail-qt1-f181.google.com with SMTP id 44so1602330qtg.11
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 17:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=5a4hHrfRXmXx2s/iYatAswl4szkHXkwlSbWJrryzRA4=;
 b=AVZ+YEpj3b48YvUFg04fd41TcqCWIJN8DbipOrEfS+H1ECR55z2+ElFt+Grw7iMeUD
 gcTTENkWgtRUUJUHjYGgeviNBqSoV9EEh8NjC+3PgRhziCcmnjaUEbMr7L6lWzWg0KI8
 DNZUtCwn2Ve2RT5aKP7Ptt9J9NyT2VDEuSgJsZmBiZu0wGaMzbiUH1QaPH2PcUX1O/3+
 uU/Ymhw+DMIJ6Cxo2eeI6iHUpewiicuLX1cbLpNFd0yb0kgb/5H5d51LTQbpPTWNhLjM
 FjqqYaAZa3zSeX0AWe4GmN45lLLllMUHfVCoioR+OViKjYr6ZKMPfDeLvnMT/Dz6hRg0
 8whw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=5a4hHrfRXmXx2s/iYatAswl4szkHXkwlSbWJrryzRA4=;
 b=gYhJUW8U7RuoH8EHEVPuTewSAhA80V4F8F8OBIdK5+r5Vh1PEei4LiFbki3lQq2131
 uubwpM4phH516OhX6WmVHFsrXYIISbl+Cl3TRiTHDkEzqN9ADTFjusWQDNkZXoDA9VSQ
 +vCQWb6KtZhV9kqsiNRsxXa6UXWlR2VBTbjCqlJN4iDZbJi1rwlMhLLT8Uz+vvQOG6Vs
 bM9yn5UY1owfFUBx7vgGmR1McuVl00+ij+U7+CHVrgFkPZIqS5fk9dvp566BQ7EZZaxi
 GUUfGCW02Hyi+Wz6bL/Ipo34TDofkkuKC6dnA42y3V+aUYPBU6svioALOekL8prJBhgS
 sqrw==
X-Gm-Message-State: APjAAAVwhwDwCtFCwZxQo5D1ZUCzH+RRMBHFWtgnWLLCWrr59XOxXx/g
 J05kiyBoTZOZiBqmwbgSPRy2u5iC
X-Google-Smtp-Source: APXvYqx59vpsI3YpJVSVIlG32m9J3keT8xBikjwu9gK/6NvoWiG0vRV2XPNMDqmW1nVGbyLejMEmDA==
X-Received: by 2002:ad4:55a9:: with SMTP id f9mr35143029qvx.133.1563495279697; 
 Thu, 18 Jul 2019 17:14:39 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.gmail.com with ESMTPSA id j8sm13173357qki.85.2019.07.18.17.14.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 17:14:39 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <CAKJyDk+4kYDLWypDhaPzEGhkjJLKNK0sEscT5dRSXCTYWU7mQA@mail.gmail.com>
Date: Thu, 18 Jul 2019 20:14:38 -0400
Message-Id: <C9ED4D1D-D79E-4A11-B294-0E606B0B3BD2@gmail.com>
References: <CAFB_ak+rtm3xVuF9GFkZ09qhUYLP1G1mzhAxDxeV7d-wR1LNmw@mail.gmail.com>
 <CAKJyDkKCRujVNv99RW594t7embavu4J=rAgu=vsOgkSHzg9Gyw@mail.gmail.com>
 <CAKJyDkLmZY-yw7QWMzg8oWRNzU4scuqkJC0Z9ErfxRKjKf+UCw@mail.gmail.com>
 <CAFB_ak+Nm5+VBi8F=UwtgerchzRGrXjTZYgWWA3Z45a+Nj=uPA@mail.gmail.com>
 <CAFB_akKiC_jtf0mMZK7Dk2JaJBi1BPTvfWM=4M=POWOfxmKhdw@mail.gmail.com>
 <CAKJyDk+4kYDLWypDhaPzEGhkjJLKNK0sEscT5dRSXCTYWU7mQA@mail.gmail.com>
To: Robin Coxe <coxe@quanttux.com>
Subject: Re: [USRP-users] Fwd: Ettus X300 -- NO TX/RX, RX2 Avaliability
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3781528531237449160=="
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


--===============3781528531237449160==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-8673DA25-656F-4E87-960E-973E79E82214
Content-Transfer-Encoding: 7bit


--Apple-Mail-8673DA25-656F-4E87-960E-973E79E82214
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

There IS no RX2 or TX/RX antenna names on Basic_rx or Basic_tx boards.=20

You can see In the probe output what the legit antenna names are for the boa=
rds you have installed.=20

Sent from my iPhone

> On Jul 18, 2019, at 6:33 PM, Robin Coxe via USRP-users <usrp-users@lists.e=
ttus.com> wrote:
>=20
> Sorry, I misunderstood your question-- did you set up the mode in UHD corr=
ectly?
> http://files.ettus.com/manual/page_dboards.html
>=20
> Also, you might want to double-check the SMA connections just in case.
> Not sure if the subdev spec has changed in the last year.  Someone who kno=
ws the UHD codebase better than I do would have to answer that question.
>=20
>=20
>=20
>> On Thu, Jul 18, 2019 at 3:26 PM Taylor Eisman via USRP-users <usrp-users@=
lists.ettus.com> wrote:
>>=20
>> Robin,=20
>>=20
>> We've set it up so that the RX Daughterboard connects to RX2 and the TX D=
aughterboard connects to TX/RX. Previously, we've been able to use these por=
ts, but now it no longer identifies that we even have these ports. I don't t=
hink the issue is the Daughterboard as this worked less than a year ago.
>>=20
>> Thanks,
>>=20
>> Taylor
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-8673DA25-656F-4E87-960E-973E79E82214
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">There IS no RX2 or TX/RX antenna names on B=
asic_rx or Basic_tx boards.&nbsp;<div><br></div><div>You can see In the prob=
e output what the legit antenna names are for the boards you have installed.=
&nbsp;<br><br><div id=3D"AppleMailSignature" dir=3D"ltr">Sent from my iPhone=
</div><div dir=3D"ltr"><br>On Jul 18, 2019, at 6:33 PM, Robin Coxe via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ett=
us.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr=
"><div dir=3D"ltr">Sorry, I misunderstood your question-- did you set up the=
 mode in UHD correctly?<div><a href=3D"http://files.ettus.com/manual/page_db=
oards.html">http://files.ettus.com/manual/page_dboards.html</a><br></div><di=
v><br></div><div>Also, you might want to double-check the SMA connections ju=
st in case.</div><div>Not sure if the subdev spec has changed in the last ye=
ar.&nbsp; Someone who knows the UHD codebase better than I do would have to a=
nswer that question.<br></div><div><br></div><div><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 18, 2=
019 at 3:26 PM Taylor Eisman via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">=
<table class=3D"gmail-m_4732337847213854491gmail-cf gmail-m_4732337847213854=
491gmail-gJ" cellpadding=3D"0"><tbody><tr class=3D"gmail-m_47323378472138544=
91gmail-acZ"><td class=3D"gmail-m_4732337847213854491gmail-gF gmail-m_473233=
7847213854491gmail-gK"><table class=3D"gmail-m_4732337847213854491gmail-cf g=
mail-m_4732337847213854491gmail-ix" cellpadding=3D"0"><tbody><tr><td class=3D=
"gmail-m_4732337847213854491gmail-c2"><div>Robin, <br></div><div><br></div><=
div>We've set it up so that the RX Daughterboard connects to RX2 and=20
the TX Daughterboard connects to TX/RX. Previously, we've been able to=20
use these ports, but now it no longer identifies that we even have these
 ports. I don't think the issue is the Daughterboard as this worked less
 than a year ago.<br><br></div><div>Thanks,<br><br></div><div>Taylor</div></=
td></tr></tbody></table></td><td class=3D"gmail-m_4732337847213854491gmail-g=
H gmail-m_4732337847213854491gmail-bAk"><br></td></tr></tbody></table></div>=
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>________=
_______________________________________</span><br><span>USRP-users mailing l=
ist</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users=
@lists.ettus.com</a></span><br><span><a href=3D"http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></div></body=
></html>=

--Apple-Mail-8673DA25-656F-4E87-960E-973E79E82214--


--===============3781528531237449160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3781528531237449160==--

