Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FD113FA8E
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jan 2020 21:26:24 +0100 (CET)
Received: from [::1] (port=37638 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1isBic-0007UF-7m; Thu, 16 Jan 2020 15:26:18 -0500
Received: from mail-qv1-f44.google.com ([209.85.219.44]:41848)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1isBiZ-0007Lm-0p
 for USRP-users@lists.ettus.com; Thu, 16 Jan 2020 15:26:15 -0500
Received: by mail-qv1-f44.google.com with SMTP id x1so9722555qvr.8
 for <USRP-users@lists.ettus.com>; Thu, 16 Jan 2020 12:25:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=toV7H+y4v1YBiH9jpS/DXugXoTvuWQ8Z2sFWIhaGn24=;
 b=FqX5adU6PcB2PkUVftHWxzhD6YMwrE/iNRbxeGNUBoinyLsIQc6SHinxxzifVG1Wag
 QCrQkI6/y7rVg7AnKIohXU6bOObzPscGo7BFg+Ktvt64rjG743c552gY26xyB8gcUR7V
 33aDUiS3fQ8r2x31dEGdQko481m3tBYSKBRCegZz1AMUvcD2RYN2rOwRrLjwgQx/nVRX
 JjUWn2B3nzR2wsxJo7xEGG31q7QhgaUAWwhb2J8Cl424QvTEAmHZ3t7KLrJxuQni8p73
 3TigHehdKXtxgKxHi/T4+YcvUZqsvi2CZ1ifilmS5/IpndlHznon1NHNz5JUhDVaVxvx
 6Y4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=toV7H+y4v1YBiH9jpS/DXugXoTvuWQ8Z2sFWIhaGn24=;
 b=CnGRekO2i6dUZOEgVTBOqnb3DJkrESTyLy1PvqzBJ69ZMoFcme3P+HcDJp7gHWOKya
 VhIy8wIvxE7l3a8nu+fVv4RIqX/PQM8B7sH0lU25XnjeRglGHJFPX4olonoBNK4el7di
 yboGzS7vWtwhYuKg4UEnOmThnPty0eTQ1EEXHKueAn68WNM58WqlhBvfr8RNi48M8bGq
 5xV4bh4H0QdZE+O+s52+VYDbXUlzjxVMLHEd3I/7QBVeCk+gLb9iInbZCjSx4gdcuBA8
 8CS+wyo+sRrztVkYEIXSscKGGDM3YaQVrppvBxXB8lNk4Dxd6zbsnaFvjTKfQnUYjyus
 f/ww==
X-Gm-Message-State: APjAAAXIc4urk0qSoIlMUcFTR3kOryHRe8TJCLxtL+n/BTW8iDazsRR9
 Efs+6JdxSsLTAk6h+2X7YNdYv0+V0SU=
X-Google-Smtp-Source: APXvYqxL7DV5ruYQAI7WmC9WDuHIY3iWkGkS5z4TYYJWOmU3bHNOQvPU7/g13LmkcSbMCOI6qiU7WA==
X-Received: by 2002:a05:6214:c3:: with SMTP id
 f3mr4414712qvs.226.1579206333904; 
 Thu, 16 Jan 2020 12:25:33 -0800 (PST)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.gmail.com with ESMTPSA id s20sm10606250qkj.100.2020.01.16.12.25.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jan 2020 12:25:33 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 16 Jan 2020 15:25:32 -0500
Message-Id: <12C3BA73-E38D-4C79-B957-7C09D2475D56@gmail.com>
References: <1898489352.210189.1579168634008@mail.yahoo.com>
In-Reply-To: <1898489352.210189.1579168634008@mail.yahoo.com>
To: voonna santosh <santu_voonna@yahoo.com>
X-Mailer: iPhone Mail (17C54)
Subject: Re: [USRP-users] Supported ethernet controllers : X300 and UBX
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9210932940161217927=="
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


--===============9210932940161217927==
Content-Type: multipart/alternative; boundary=Apple-Mail-780ADD0D-D740-4F4B-A131-A2A9117FBD3F
Content-Transfer-Encoding: 7bit


--Apple-Mail-780ADD0D-D740-4F4B-A131-A2A9117FBD3F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This sounds like a PHY issue, and that level
Of issue is usually some SFP+ module compatibility issue.=20

The 10GIG MAC in the X310 is implemented in the FPGA, and I believe uses Xil=
inx Modules within the FPGA.=20



Sent from my iPhone

> On Jan 16, 2020, at 4:58 AM, voonna santosh via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi Sam,
>    The reason for this is that, I am seeing something strange here with fi=
bre connection. The PC comes up and doesn't negotiate the speed with SDR. No=
w we are in a situation to find the root cause of this. Either the HW/SW at P=
C side is causing the issue or HW/SW at PC side is not compatible with SDR.
>=20
> I have tried following methods at PC side and no luck:
> Bring down the fibre interface and up again
> Turned on auto neg and at PC side and no luck
> Used ethtool to set the speed and no luck
> Many other option being tried, but doesn't help
>=20
> All I want:
> What is(are) the Ethernet controller(s) being used in X300(HW and SW if it=
 is OK to reveal)? This will allow us to check with Intel to select a right c=
ontroller at PC side
>=20
> What are the ethernet controllers that are being tested at PC side?=20
>=20
> Any information in this front would be highly appreciated.
>=20
> BR,
> Santosh
>=20
> On Wednesday, January 15, 2020, 07:07:58 PM GMT, Sam Reiter <sam.reiter@et=
tus.com> wrote:
>=20
>=20
> Santosh,
>=20
> That card should be fine for streaming, that controller just hasn't been e=
xplicitly tested as far as I know. Are you planning on using DPDK?
>=20
> Sam Reiter=20
>=20
> On Wed, Jan 15, 2020 at 12:26 PM voonna santosh via USRP-users <usrp-users=
@lists.ettus.com> wrote:
> Hi There,
>    Good morning. As I could see in the documentation, Ettus recommends "X5=
20 (Ethernet Controller)" at PC/host side. Is this a must?=20
>    We are planning to use X552 Ethernet Controller and I am wondering will=
 it cause any issue. Can you please let me know what are the Ethernet Contro=
llers can be used at PC side for SFP+ ports?
> BR,
> Santosh=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-780ADD0D-D740-4F4B-A131-A2A9117FBD3F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This sounds like a PHY issue, and that leve=
l<div>Of issue is usually some SFP+ module compatibility issue.&nbsp;</div><=
div><br></div><div>The 10GIG MAC in the X310 is implemented in the FPGA, and=
 I believe uses Xilinx Modules within the FPGA.&nbsp;</div><div><br></div><d=
iv><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><b=
lockquote type=3D"cite">On Jan 16, 2020, at 4:58 AM, voonna santosh via USRP=
-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><=
blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div class=3D"ydp36a7a3f2=
yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial, san=
s-serif;font-size:16px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Sam,</div><div dir=3D"ltr"=
 data-setdir=3D"false">&nbsp; &nbsp;The reason for this is that, I am seeing=
 something strange here with fibre connection. The PC comes up and doesn't n=
egotiate the speed with SDR. Now we are in a situation to find the root caus=
e of this. Either the HW/SW at PC side is causing the issue or HW/SW at PC s=
ide is not compatible with SDR.</div><div dir=3D"ltr" data-setdir=3D"false">=
<br></div><div dir=3D"ltr" data-setdir=3D"false">I have tried following meth=
ods at PC side and no luck:</div><div dir=3D"ltr" data-setdir=3D"false">Brin=
g down the fibre interface and up again</div><div dir=3D"ltr" data-setdir=3D=
"false">Turned on auto neg and at PC side and no luck</div><div dir=3D"ltr" d=
ata-setdir=3D"false">Used ethtool to set the speed and no luck</div><div dir=
=3D"ltr" data-setdir=3D"false">Many other option being tried, but doesn't he=
lp</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" da=
ta-setdir=3D"false"><b>All I want:</b></div><div dir=3D"ltr" data-setdir=3D"=
false">What is(are) the Ethernet controller(s) being used in X300(HW and SW i=
f it is OK to reveal)? This will allow us to check with Intel to select a ri=
ght controller at PC side</div><div dir=3D"ltr" data-setdir=3D"false"><br></=
div><div dir=3D"ltr" data-setdir=3D"false">What are the ethernet controllers=
 that are being tested at PC side?&nbsp;</div><div dir=3D"ltr" data-setdir=3D=
"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Any information in t=
his front would be highly appreciated.</div><div dir=3D"ltr" data-setdir=3D"=
false"><br></div><div dir=3D"ltr" data-setdir=3D"false">BR,</div><div dir=3D=
"ltr" data-setdir=3D"false">Santosh</div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_9256781730" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sa=
ns-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, January 15, 2020, 07:07:58 PM GMT, Sam Rei=
ter &lt;sam.reiter@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv4343609832"><div><div dir=3D"ltr"><div>Sa=
ntosh,</div><div><br clear=3D"none"></div><div>That card should be fine for s=
treaming, that controller just hasn't been explicitly tested as far as I kno=
w. Are you planning on using DPDK?</div><div><br clear=3D"none"></div><div><=
div class=3D"yiv4343609832gmail_signature" dir=3D"ltr"><div dir=3D"ltr"><div=
><div dir=3D"ltr">Sam Reiter <br clear=3D"none"></div></div></div></div></di=
v></div><br clear=3D"none"><div class=3D"yiv4343609832gmail_quote"><div clas=
s=3D"yiv4343609832yqt6093841100" id=3D"yiv4343609832yqt59140"><div class=3D"=
yiv4343609832gmail_attr" dir=3D"ltr">On Wed, Jan 15, 2020 at 12:26 PM voonna=
 santosh via USRP-users &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank" href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br clear=3D"none=
"></div><blockquote class=3D"yiv4343609832gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex;"><div>=
<div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-=
size:16px;"><div dir=3D"ltr">Hi There,</div><div dir=3D"ltr">&nbsp; &nbsp;Go=
od morning. As I could see in the documentation, Ettus recommends "X520 (Eth=
ernet Controller)" at PC/host side. Is this a must?&nbsp;</div><div dir=3D"l=
tr">&nbsp; &nbsp;We are planning to use X552 Ethernet Controller and I am wo=
ndering will it cause any issue. Can you please let me know what are the Eth=
ernet Controllers can be used at PC side for SFP+ ports?</div><div dir=3D"lt=
r">BR,</div><div dir=3D"ltr">Santosh&nbsp;</div></div></div>________________=
_______________________________<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.ettus.=
com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-users=
@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://lists.et=
tus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div><span>_______________________________________________</span><b=
r><span>USRP-users mailing list</span><br><span>USRP-users@lists.ettus.com</=
span><br><span>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com</span><br></div></blockquote></div></body></html>=

--Apple-Mail-780ADD0D-D740-4F4B-A131-A2A9117FBD3F--


--===============9210932940161217927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9210932940161217927==--

