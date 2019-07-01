Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E005B329
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2019 05:48:37 +0200 (CEST)
Received: from [::1] (port=58982 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hhnIv-0003pd-1J; Sun, 30 Jun 2019 23:48:33 -0400
Received: from mail-lj1-f175.google.com ([209.85.208.175]:32986)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1hhnIr-0003kQ-NN
 for usrp-users@lists.ettus.com; Sun, 30 Jun 2019 23:48:29 -0400
Received: by mail-lj1-f175.google.com with SMTP id h10so11514589ljg.0
 for <usrp-users@lists.ettus.com>; Sun, 30 Jun 2019 20:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xB1g/BaYB+kIWv+wQinTiOFBhnH89ezAVoFG+QTy9JQ=;
 b=UthcC0/661MzXvUK2HGHug+kz/eZNszl87WW9FLkiWJ3dfIEW/cdLjngI/VYPVJ6tD
 9YAFVOWBIZGDGobBWSP6MkIVsfl7DpQ6MKmoIdgLMp0b3UHYFN5r5CifAIsb4go5Qfpx
 OzFyts1s7XYp/4Pkmgnl32yHq1DdSPbdyTNnAb5S9caK65CJuuUFIs5R16Fv8Gqj++F4
 Cb+odALuPutKVA7ob1jSNHgWmcnnwukJY3TkKtz0zkkQInmBHfdyuQfpKNQBBrEdp0xm
 bxr0W7zuwQB560HQ77d6d3Qe4/BN91cF8Me39HTNSJ8y9jZDpvdL269bBlJPafbJb8uw
 tVBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xB1g/BaYB+kIWv+wQinTiOFBhnH89ezAVoFG+QTy9JQ=;
 b=rt+kjglMmhTNPfMwlOrIWYAHdN7QDKchu5/5bRA3xTYyCOcnV476IIFs+mJCCEtIOq
 r9Xf4sXb0Q2hByqQzfwL2Xvi0Dgvsg2MUGwuplLV564wG1TNVAODvhZp4ySnq5B3DXD8
 U0lfa5N3B0DZ9jcQJ3uM5D2yunwWYNzvrEVC6IX58sLlLlGQXj2nXmIzi04m7rYdEReL
 2bnKcYteeKnUghP3lmSfvvWoB2mRqf2puZNkNlN7UIfipSSUxM8fIO5Duow4DvpMeMQQ
 F63uzXu9f9Q9X8nfdspliWjsm18Yk2z379Mkvw5gj4RdNHPaUlb5qt6SKVPw0YNazxsm
 2AIA==
X-Gm-Message-State: APjAAAVTsdVZ941px+9KvawJNgc08Op+3Bc7ssqWGt2KSI5PSHKUQEf6
 V0zqVVHmH0nFHdBgxCQzgAxU3Dj9i0V8uBlJm1T8Yyzt
X-Google-Smtp-Source: APXvYqy7FfK7VRDnC5IijXY3D69MzXxmoLqtmrlfJH64eiGsY3UHh36soMVf6a9s0C0DqkvyPYBRl+vz9ugoXXOEZt4=
X-Received: by 2002:a2e:7d03:: with SMTP id y3mr12698543ljc.240.1561952868191; 
 Sun, 30 Jun 2019 20:47:48 -0700 (PDT)
MIME-Version: 1.0
References: <AM6PR04MB52221BE873AD22C1578ABD06DFFE0@AM6PR04MB5222.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB52221BE873AD22C1578ABD06DFFE0@AM6PR04MB5222.eurprd04.prod.outlook.com>
Date: Mon, 1 Jul 2019 12:47:12 +0900
Message-ID: <CAL7q81tQK-8MjrV8Q2w8G7n6O=38DSvutAhZuQGNmYLZ9cuvcA@mail.gmail.com>
To: Andrew Thommesen <andrewjohn83@outlook.com>
Subject: Re: [USRP-users] RFNoC Utilisation
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2447201674013758464=="
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

--===============2447201674013758464==
Content-Type: multipart/alternative; boundary="000000000000dd66f6058c967dce"

--000000000000dd66f6058c967dce
Content-Type: text/plain; charset="UTF-8"

Hi,

You are building an image with 1 x DDC and 7 x FIFO RFNoC blocks due to the
arg "--fill-with-fifos". Remove that arg and your utilization should be
significantly lower.

Jonathon

On Mon, Jul 1, 2019 at 1:42 AM Andrew Thommesen via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> According to this link (https://kb.ettus.com/X300/X310) the baselink
> RFNoC X310 image should use <25% of the available LUTs. However, my build
> uses more than 50% with a single DDC using the same UHD release:
>
> ./uhd_image_builder.py ddc -d x310 -t X310_RFNOC_HG -m 8 --fill-with-fifos.
>
> The DDC should not require >25% of the available LUTS, so am i missing
> something? Should I be using an alternative to the X310_RFNOC_HG base
> image to achieve this utilisation.
> I really need that 25% of LUTS for my design so any guidance would be
> gratefully received.
>
> Thanks,
>
> Andy
> X300/X310 - Ettus Knowledge Base <https://kb.ettus.com/X300/X310>
> Device Overview. The Ettus Research USRP X310 is a high-performance,
> scalable software defined radio (SDR) platform for designing and deploying
> next generation wireless communications systems.
> kb.ettus.com
>
>
> Sent from Outlook <http://aka.ms/weboutlook>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000dd66f6058c967dce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>You are building an image with 1 x =
DDC and 7 x FIFO RFNoC blocks due to the arg &quot;--fill-with-fifos&quot;.=
 Remove that arg and your utilization should be significantly lower.</div><=
div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 1, 2019 at 1:42 AM Andrew Thom=
mesen via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
According to this link (<a href=3D"https://kb.ettus.com/X300/X310" id=3D"gm=
ail-m_5111271765681641352LPlnk344939" target=3D"_blank">https://kb.ettus.co=
m/X300/X310</a>) the baselink RFNoC X310 image should use &lt;25% of the av=
ailable LUTs. However, my build uses more than 50% with a single DDC using =
the same
 UHD release:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
./uhd_image_builder.py ddc -d x310 -t X310_RFNOC_HG -m 8 --fill-with-fifos.=
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
The DDC should not require &gt;25% of the available LUTS, so am i missing s=
omething? Should I be using an alternative to the=C2=A0<span style=3D"font-=
family:Calibri,Arial,Helvetica,sans-serif;background-color:rgb(255,255,255)=
;display:inline">X310_RFNOC_HG
 base image to achieve this utilisation.</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline">I really need that 25% of LUTS for my =
design so any guidance would be gratefully received.</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline">Thanks,</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline">Andy</span></div>
<div id=3D"gmail-m_5111271765681641352LPBorder_GTaHR0cHM6Ly9rYi5ldHR1cy5jb2=
0vWDMwMC9YMzEw" class=3D"gmail-m_5111271765681641352LPBorder555056" style=
=3D"width:100%;margin-top:16px;margin-bottom:16px;max-width:800px;min-width=
:424px">
<table id=3D"gmail-m_5111271765681641352LPContainer555056" style=3D"padding=
:12px 36px 12px 12px;width:100%;border-width:1px;border-style:solid;border-=
color:rgb(200,200,200);border-radius:2px">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td style=3D"width:100%">
<div id=3D"gmail-m_5111271765681641352LPTitle555056" style=3D"font-size:21p=
x;font-weight:300;margin-right:8px;font-family:wf_segoe-ui_light,&quot;Sego=
e UI Light&quot;,&quot;Segoe WP Light&quot;,&quot;Segoe UI&quot;,&quot;Sego=
e WP&quot;,Tahoma,Arial,sans-serif;margin-bottom:12px">
<a id=3D"gmail-m_5111271765681641352LPUrlAnchor555056" href=3D"https://kb.e=
ttus.com/X300/X310" style=3D"text-decoration:none" target=3D"_blank">X300/X=
310 - Ettus Knowledge Base</a></div>
<div id=3D"gmail-m_5111271765681641352LPDescription555056" style=3D"font-si=
ze:14px;max-height:100px;color:rgb(102,102,102);font-family:wf_segoe-ui_nor=
mal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;margi=
n-bottom:12px;margin-right:8px;overflow:hidden">
Device Overview. The Ettus Research USRP X310 is a high-performance, scalab=
le software defined radio (SDR) platform for designing and deploying next g=
eneration wireless communications systems.</div>
<div id=3D"gmail-m_5111271765681641352LPMetadata555056" style=3D"font-size:=
14px;font-weight:400;color:rgb(166,166,166);font-family:wf_segoe-ui_normal,=
&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif">
<a href=3D"http://kb.ettus.com" target=3D"_blank">kb.ettus.com</a></div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_5111271765681641352Signature">
<div id=3D"gmail-m_5111271765681641352divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255);font-family:Cal=
ibri,Arial,Helvetica,sans-serif">
Sent from <a href=3D"http://aka.ms/weboutlook" target=3D"_blank">Outlook</a=
></div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000dd66f6058c967dce--


--===============2447201674013758464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2447201674013758464==--

