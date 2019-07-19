Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4921E6D7B7
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2019 02:18:31 +0200 (CEST)
Received: from [::1] (port=53916 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoGbV-00071C-Ig; Thu, 18 Jul 2019 20:18:29 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:35019)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <tayloreisman2012@gmail.com>)
 id 1hoGbS-0006uJ-0d
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 20:18:26 -0400
Received: by mail-io1-f49.google.com with SMTP id m24so54846768ioo.2
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 17:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=YGsaqvP7sJ54TT8kWXdlpsjH1m75QIU7A6lg1N3o0P4=;
 b=AhxVH673cZq9Dgr5tk05YYKTZlFTlPXKLG2fuQdjdxC4L+LYzSmPi6anFAkGGgo6Wk
 c5l4sqpQ/MNHkRlvijid8uDjjzTaOQbCbmmZmeAmy8mKpX4dHRwEphAiGeDu/vOHwaLi
 qqcu51iDzRLpksNpxj9ev/8e9Rut/Itonj6J32maTpGpD1HM5xWZ01wxBN+Lgrdj24oa
 i538TqQ+7v4xVfWZzFypvu2T2ud7DlD+ww5PVu9A7I4A0bhRJ2WzY6hnWtmPIHT58FWr
 05wijt9tHyw/s12MCjEqCjzjImnbqKzldJry3wib39MnBBFQDjKn0QU1Z6wnUaytzEQT
 WL5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=YGsaqvP7sJ54TT8kWXdlpsjH1m75QIU7A6lg1N3o0P4=;
 b=jVvy2zA8deIYUZqmOYBMhyCPF30rBW/P5vIPspSp1aWX9aeTKuKVscnZKJw9Y18TjU
 1gxJFGgrH3yW4EA0t9QVux5y37ScH5l7qlM/s3C56nfDEWZUYR15VgAKJeipTZxCd1ZN
 OEM/EKVMdJczcIfSZFaS8ilnqeV7+ECpoEuabjHRWD1lGffamhCWIKJoiiC4Y/XcJSjB
 K4eLQBeS72R2pWNQJuD1VjrivqzWzMvIZJwkUpSKobiK3ynHF6QOGDWlkCNV5gs6B4ej
 9vxMp/x8oIU/pLHKS+K0HhkJ8vu+JAGE6LKHDSzlbx/NTFBXmjJmHsbS9pd+p3pfWt/S
 9HMA==
X-Gm-Message-State: APjAAAWaCR/L15jWN4Ox1QqIVCM8aBimCCzjsdOnjdZ9Q21FL+Q7UFiI
 jKBIMN3+IZpX5WCgyW9rmMWqtcZauLPs5cBFIABIaQ==
X-Google-Smtp-Source: APXvYqwGcI9M/dk8srV20NJ0D3l+zeFPwkiy/IE8t+UN+VZHOuWRmlNRekDONZlx9tEGQpgvgDsREPrU1o5omKfWdDc=
X-Received: by 2002:a5e:d611:: with SMTP id w17mr36576977iom.63.1563495465155; 
 Thu, 18 Jul 2019 17:17:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAFB_ak+rtm3xVuF9GFkZ09qhUYLP1G1mzhAxDxeV7d-wR1LNmw@mail.gmail.com>
 <CAKJyDkKCRujVNv99RW594t7embavu4J=rAgu=vsOgkSHzg9Gyw@mail.gmail.com>
 <CAKJyDkLmZY-yw7QWMzg8oWRNzU4scuqkJC0Z9ErfxRKjKf+UCw@mail.gmail.com>
 <CAFB_ak+Nm5+VBi8F=UwtgerchzRGrXjTZYgWWA3Z45a+Nj=uPA@mail.gmail.com>
 <CAFB_akKiC_jtf0mMZK7Dk2JaJBi1BPTvfWM=4M=POWOfxmKhdw@mail.gmail.com>
 <CAKJyDk+4kYDLWypDhaPzEGhkjJLKNK0sEscT5dRSXCTYWU7mQA@mail.gmail.com>
 <C9ED4D1D-D79E-4A11-B294-0E606B0B3BD2@gmail.com>
In-Reply-To: <C9ED4D1D-D79E-4A11-B294-0E606B0B3BD2@gmail.com>
Date: Thu, 18 Jul 2019 19:17:34 -0500
Message-ID: <CAFB_ak+_x=neOMA--p-=WGzvmOoP5djT=W6hwzw4GGzfTLJ+TQ@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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
From: Taylor Eisman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Taylor Eisman <tayloreisman2012@gmail.com>
Content-Type: multipart/mixed; boundary="===============4634364175995932365=="
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

--===============4634364175995932365==
Content-Type: multipart/alternative; boundary="000000000000cf05c0058dfda70c"

--000000000000cf05c0058dfda70c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don=E2=80=99t want to make this about gnuradio, because this isn=E2=80=99=
t the place.
However, why would gnuradio know to link the ab,a,b,ba antennas to tx/rx
and rx2?

On Thu, Jul 18, 2019 at 7:14 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> There IS no RX2 or TX/RX antenna names on Basic_rx or Basic_tx boards.
>
> You can see In the probe output what the legit antenna names are for the
> boards you have installed.
>
> Sent from my iPhone
>
> On Jul 18, 2019, at 6:33 PM, Robin Coxe via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Sorry, I misunderstood your question-- did you set up the mode in UHD
> correctly?
> http://files.ettus.com/manual/page_dboards.html
>
> Also, you might want to double-check the SMA connections just in case.
> Not sure if the subdev spec has changed in the last year.  Someone who
> knows the UHD codebase better than I do would have to answer that questio=
n.
>
>
>
> On Thu, Jul 18, 2019 at 3:26 PM Taylor Eisman via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Robin,
>>
>> We've set it up so that the RX Daughterboard connects to RX2 and the TX
>> Daughterboard connects to TX/RX. Previously, we've been able to use thes=
e
>> ports, but now it no longer identifies that we even have these ports. I
>> don't think the issue is the Daughterboard as this worked less than a ye=
ar
>> ago.
>>
>> Thanks,
>>
>> Taylor
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
>

--000000000000cf05c0058dfda70c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I don=E2=80=99t want to make this about gnuradio, be=
cause this isn=E2=80=99t the place. However, why would gnuradio know to lin=
k the ab,a,b,ba antennas to tx/rx and rx2?</div></div><div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 18, 2019=
 at 7:14 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">p=
atchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"auto">There IS no RX2 or TX/RX antenna names on Basic_rx or =
Basic_tx boards.=C2=A0<div><br></div><div>You can see In the probe output w=
hat the legit antenna names are for the boards you have installed.=C2=A0<br=
><br><div id=3D"m_5511048838064977734AppleMailSignature" dir=3D"ltr">Sent f=
rom my iPhone</div></div></div><div dir=3D"auto"><div><div dir=3D"ltr"><br>=
On Jul 18, 2019, at 6:33 PM, Robin Coxe via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr"><div=
 dir=3D"ltr">Sorry, I misunderstood your question-- did you set up the mode=
 in UHD correctly?<div><a href=3D"http://files.ettus.com/manual/page_dboard=
s.html" target=3D"_blank">http://files.ettus.com/manual/page_dboards.html</=
a><br></div><div><br></div><div>Also, you might want to double-check the SM=
A connections just in case.</div><div>Not sure if the subdev spec has chang=
ed in the last year.=C2=A0 Someone who knows the UHD codebase better than I=
 do would have to answer that question.<br></div><div><br></div><div><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Jul 18, 2019 at 3:26 PM Taylor Eisman via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><table class=3D"m_551104883806=
4977734gmail-m_4732337847213854491gmail-cf m_5511048838064977734gmail-m_473=
2337847213854491gmail-gJ" cellpadding=3D"0"><tbody><tr class=3D"m_551104883=
8064977734gmail-m_4732337847213854491gmail-acZ"><td class=3D"m_551104883806=
4977734gmail-m_4732337847213854491gmail-gF m_5511048838064977734gmail-m_473=
2337847213854491gmail-gK"><table class=3D"m_5511048838064977734gmail-m_4732=
337847213854491gmail-cf m_5511048838064977734gmail-m_4732337847213854491gma=
il-ix" cellpadding=3D"0"><tbody><tr><td class=3D"m_5511048838064977734gmail=
-m_4732337847213854491gmail-c2"><div>Robin, <br></div><div><br></div><div>W=
e&#39;ve set it up so that the RX Daughterboard connects to RX2 and=20
the TX Daughterboard connects to TX/RX. Previously, we&#39;ve been able to=
=20
use these ports, but now it no longer identifies that we even have these
 ports. I don&#39;t think the issue is the Daughterboard as this worked les=
s
 than a year ago.<br><br></div><div>Thanks,<br><br></div><div>Taylor</div><=
/td></tr></tbody></table></td><td class=3D"m_5511048838064977734gmail-m_473=
2337847213854491gmail-gH m_5511048838064977734gmail-m_4732337847213854491gm=
ail-bAk"><br></td></tr></tbody></table></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>_______=
________________________________________</span><br><span>USRP-users mailing=
 list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a href=3D"http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
></span><br></div></blockquote></div></div></blockquote></div></div>

--000000000000cf05c0058dfda70c--


--===============4634364175995932365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4634364175995932365==--

