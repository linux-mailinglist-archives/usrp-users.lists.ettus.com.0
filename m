Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 659573EADEC
	for <lists+usrp-users@lfdr.de>; Fri, 13 Aug 2021 02:28:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46EFB384691
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 20:28:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jwuuvvR4";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id DC9F0384193
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 20:27:21 -0400 (EDT)
Received: by mail-qk1-f173.google.com with SMTP id p22so7722261qki.10
        for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 17:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:mime-version:subject:from:in-reply-to:cc
         :date:message-id:references:to;
        bh=kM7YMRWeyndQAYB/dDDYUHh7zeVmQUPzSGRiE/ofcAU=;
        b=jwuuvvR45rh7CcQHuIaNONBOlat5itGitdikabb6BjJmcSECS9E4OnFXDtt7qQ9RuD
         jxItHzrbzY3yMpxtwZmCnKJ41qNyDXAyOJUjrgNXyf079Crvlrhs0bg+zhTdigiNn87O
         +lWi+kwZ/+DW3Bli5U1xkGho4K9AgtzfUT3YqI3vKP2n9JrjGZNI/vPX7FQ4YNjQZ4e2
         V/qohv/SHVjPwqn7B3EUx4se7I/28pxEA8Hlxo/UhzmyKRALIT5DEbZ+PGXKY5XO6EZg
         AXYc05kXBs6Y3+54SGhMLZQn7b+mmXaxP1ckbxpT+BzCskAdpfmawE8uOibUY9Gxwd7m
         B3lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:mime-version:subject
         :from:in-reply-to:cc:date:message-id:references:to;
        bh=kM7YMRWeyndQAYB/dDDYUHh7zeVmQUPzSGRiE/ofcAU=;
        b=CoI8PNcNQyEFkD/p9hRzsCyOibx0c8z+7zI069rCrZLi5TWsH14gXH5SZ8v0wWJGu3
         2ZvULkyLn9GR1ucrFQNaYH6Xf905B6CM97w/UiO5/4zzdUfZ14DKQ2r6VGJDTX/VlN4n
         H4/zX1Dar8tWjv3IpGM45Ky6H/6tiBebnW+OvuiQFlijrE/JIVW4pSWbSMTHPYncOIpy
         Jou1MKKbJ6I0HX2T7Mmv0EJA8+iiteKS/NhqyyE4FMcjU7OaBeLbWBEtwlMt7h89CuG8
         lPL2xsG5PB0nURPYfAEm9ENviNdvaCJ0N/sUeQM0Es3uRjocaMrxeq4p9dU5Ex5WqNgz
         2Q+Q==
X-Gm-Message-State: AOAM530mBdAm5jSoGz9OcpeMcHdHjoMdlJQJB6f6lJSixHVn+a8f5L6i
	pyAenkujNPa+B9CiET67gGrG4LmWTQE=
X-Google-Smtp-Source: ABdhPJzR0pv8L1BAJxI3XTqJhE+d72O8mn/AgrKC7Yw0WEmNzYKkrHrEaHo07Bu6YAm07A4cT5E3YA==
X-Received: by 2002:a05:620a:140d:: with SMTP id d13mr7476337qkj.94.1628814441074;
        Thu, 12 Aug 2021 17:27:21 -0700 (PDT)
Received: from smtpclient.apple ([2601:151:c000:a810:9dc:aff4:95dc:5202])
        by smtp.gmail.com with ESMTPSA id m197sm2317381qke.54.2021.08.12.17.27.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 17:27:20 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Paul Atreides <maud.dib1984@gmail.com>
In-Reply-To: <zsi2JYLqfQVMpCAZsAFONuGliMFLd787E2AXuXERgLM@lists.ettus.com>
Date: Thu, 12 Aug 2021 20:27:19 -0400
Message-Id: <F3210046-476F-47F6-98CA-CC7654F4CF85@gmail.com>
References: <zsi2JYLqfQVMpCAZsAFONuGliMFLd787E2AXuXERgLM@lists.ettus.com>
To: rblack@swri.org
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: EB4KGE2733LBNOG5ZNTOG6XDNQAPOFZN
X-Message-ID-Hash: EB4KGE2733LBNOG5ZNTOG6XDNQAPOFZN
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Software Loopback RFNoC TX/RX same flowgraph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EB4KGE2733LBNOG5ZNTOG6XDNQAPOFZN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6803470381451535547=="


--===============6803470381451535547==
Content-Type: multipart/alternative; boundary=Apple-Mail-A854A336-5EDC-4023-980E-7790D6A6B417
Content-Transfer-Encoding: 7bit


--Apple-Mail-A854A336-5EDC-4023-980E-7790D6A6B417
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Your email responses don=E2=80=99t have the previous thread messages in them=
, so I=E2=80=99m not totally sure which post you=E2=80=99re talking about, b=
ut you=E2=80=99re welcome.=20

If you apply Jonathan=E2=80=99s patch it installs a tx/rx loopback GRC flowg=
raph through patch itself.=20
It=E2=80=99ll get placed in the examples directory with the original DDC exa=
mple. When you open that flowgraph you=E2=80=99ll see that it sets everythin=
g up to demonstrate the following changes:
-=E2=80=9Cskip property propagation=E2=80=9D is now a boolean variable (prev=
iously it was hard coded to false) and for loopback it=E2=80=99s set to true=

-the pre/post init Python snippets that enable/disable time stamps and start=
/stop the rx radio stream.=20

Is that helpful?


<end transmission>

> On Aug 12, 2021, at 07:47, rblack@swri.org wrote:
> =EF=BB=BF
> Hi, and thanks Paul again for this post.
>=20
>=20
>=20
> Would you mind forwarding your implementation for loopback (grc picture, o=
r yml file, or whatever)? I=E2=80=99d like to check connections and block pa=
rameters for loopback.
>=20
> Thanks in advance rb
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-A854A336-5EDC-4023-980E-7790D6A6B417
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><span style=3D"caret-color=
: rgb(0, 0, 0); color: rgb(0, 0, 0);">Your email responses don=E2=80=99t hav=
e the previous thread messages in them, so I=E2=80=99m not totally sure whic=
h post you=E2=80=99re talking about, but you=E2=80=99re welcome.&nbsp;</span=
></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><meta http-equiv=3D"conte=
nt-type" content=3D"text/html; charset=3Dutf-8">If you apply Jonathan=E2=80=99=
s patch it installs a tx/rx loopback GRC flowgraph through patch itself.&nbs=
p;</div><div dir=3D"ltr">It=E2=80=99ll get placed in the examples directory w=
ith the original DDC example. When you open that flowgraph you=E2=80=99ll se=
e that it sets everything up to demonstrate the following changes:</div><div=
 dir=3D"ltr">-=E2=80=9Cskip property propagation=E2=80=9D is now a boolean v=
ariable (previously it was hard coded to false) and for loopback it=E2=80=99=
s set to true</div><div dir=3D"ltr">-the pre/post init Python snippets that e=
nable/disable time stamps and start/stop the rx radio stream.&nbsp;</div><di=
v dir=3D"ltr"><br></div><div dir=3D"ltr">Is that helpful?</div><div dir=3D"l=
tr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div dir=3D"ltr">&=
lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-color: rg=
ba(26, 26, 26, 0.298);">end transmission&gt;</span></div><div dir=3D"ltr"><b=
r><blockquote type=3D"cite">On Aug 12, 2021, at 07:47, rblack@swri.org wrote=
:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<p>Hi,  and thanks Paul again for this post.</p><p><br></p><p>Would you m=
ind forwarding your implementation for loopback (grc picture,  or yml file, o=
r whatever)?  I=E2=80=99d like to check connections and block parameters for=
 loopback.</p><p>Thanks in advance  rb</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-A854A336-5EDC-4023-980E-7790D6A6B417--

--===============6803470381451535547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6803470381451535547==--
