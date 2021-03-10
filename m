Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E923349FC
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 22:44:43 +0100 (CET)
Received: from [::1] (port=45354 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lK6dE-0002EM-VD; Wed, 10 Mar 2021 16:44:40 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:35416)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lK6dB-0001X3-LD
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 16:44:37 -0500
Received: by mail-oi1-f178.google.com with SMTP id u6so13478879oic.2
 for <usrp-users@lists.ettus.com>; Wed, 10 Mar 2021 13:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=upq7+R5oBXnjzA+lb2E45q8Y+NXxsOjGiluXwZN33mk=;
 b=YGTFAiZOaJMTUEOmUPhX5yzj+xlPrgjKbK1CAccK9EKLhJQFllkQ00tZJdJNmuC4ZX
 b94SFlJxU9Oets7RG1/1Im0P1LVCldkzIPfcr8UJ3bMd7Gm7lTS2ZeLV0QwS3VKqZ3iL
 3nlBZko0r/3balKf6k+shiZubNDUJTiXadNgrFlb8mVVci03/xsDNmVamCBNT2KerJd8
 aYyYlDM0vWX1GM5CY0xzA3F+7RDmw2jnqkSJ0G2le6qVw3VniSVcv8mY5qeivT0GYOp8
 2hPX0lHA3/dX/CF1Q2CewXa18+TMeYAXrsRY/q5WAFiFYGS2kpIpfoKiPbRqH7cXcEyr
 d3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=upq7+R5oBXnjzA+lb2E45q8Y+NXxsOjGiluXwZN33mk=;
 b=m66QRiaOxqNUa7v0/UZ247jM92c+UoJKDbx7pInegSCT+EuGZoM0gW0LVGrqExKXHJ
 kGYElq7YxPfvWn37kIbgH0qvWDLdU4ZGOA1+AdzPyVZCIB5bv63heUwBNTD/1oxUHaQb
 x3/mp8vNsI1QL9gnluVP3s1uHNUQuiDA3RMZPI20u+8xlP5sDTpCjiT53zM28vWglsXp
 Ip+cL2hQduK0roEoxTGSN7VvS5ZSrLCumK8YRaJhPoeuP5YeQcnVOWyzQNKbs4w9hIxd
 ElY+z/30Rvmr4ycTiKBQfUKJFn+qyvgYk6/hJvV7rKXIqN+WF2BwtJISocxhJkRT+jJQ
 RMSQ==
X-Gm-Message-State: AOAM531xZHXiaD8sPcgMDtw+9tKK8nKI6Ml0Sk2XCYCrZVlcVDtmKVOe
 NwXs5iEZtMDKf5l/7zaGMi23TqgWQMejZAHBPHnkczdlgqg=
X-Google-Smtp-Source: ABdhPJxg6S9RWSCevcoq3AYEvzpd3g9DR1D46Kw2BLgeLWqE3tAoxA9cE07New0dWmklAk3O7DCpZaHY7gua/lvoPXs=
X-Received: by 2002:a05:6808:10ca:: with SMTP id
 s10mr3943226ois.33.1615412636013; 
 Wed, 10 Mar 2021 13:43:56 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 10 Mar 2021 16:43:45 -0500
Message-ID: <CAB__hTSd+rVfZ+OavTZZOE0Qzr6RksbnwZ0ofsDBPpw_oXeWdg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] RFNoC 4 metadata
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5346346240530904825=="
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

--===============5346346240530904825==
Content-Type: multipart/alternative; boundary="000000000000561ef205bd359098"

--000000000000561ef205bd359098
Content-Type: text/plain; charset="UTF-8"

Hi,
I just modified one of my RFNoC blocks to use metadata for the first time.
The following remarks identify issues I encountered along the way and some
suggestions that would make things a bit easier.

   - You can't use axis_data (with sideband signals) if you want access to
   metadata. While I realize that Ettus has indicated that metadata is an
   "advanced" use case and that the axis_data interface is a "simple"
   interface model, it still seems like it wouldn't be that difficult to
   expand the axis_data model to accommodate some metadata capability
   - Along the same lines, any block that uses axis_data will discard any
   metadata from an upstream block.  This is probably the bigger issue.  For
   example, if the rx radio were to insert a metadata word, it would be
   discarded by the DDC since the DDC uses the axis_data model
   - There is no structure to the metadata.  I fully understand that this
   is by intent.  However, I did start to wonder if some skeleton structure
   would make sense. For example, maybe some bits of the metadata should be
   designated for the NOC_ID of the block that inserts it.  Or, instead, maybe
   some bits could hold a unique WORD_ID that identifies the type of metadata
   word.  Ettus could reserve some IDs for itself to allow for future use of
   metadata by Ettus blocks.
   - It would be nice if it was easier for a block to just "insert" a
   metadata word.  With my own limited FPGA skills, I just decided to ignore
   any upstream metadata words and create 1 metadata word that gets sent to
   downstream blocks.  But, that's not very friendly to the upstream blocks.
   If it were easier to do, I would have preferred to just add my block's
   metadata word to the incoming metadata words.

--000000000000561ef205bd359098
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I just modified one of my RFNoC blocks to use =
metadata for the first time.=C2=A0 The following remarks identify issues I =
encountered along the way and some suggestions that would make things a bit=
 easier.</div><div><ul><li>You can&#39;t use axis_data (with sideband signa=
ls) if you want access to metadata. While I realize that Ettus has indicate=
d that metadata is an &quot;advanced&quot; use case and that the axis_data =
interface is a &quot;simple&quot; interface model, it still seems like it w=
ouldn&#39;t be that difficult to expand the axis_data model to accommodate=
=C2=A0some metadata capability</li><li>Along the same lines, any block that=
 uses axis_data will discard any metadata from an upstream block.=C2=A0 Thi=
s is probably the bigger issue.=C2=A0 For example, if the rx radio were to =
insert a metadata word, it would be discarded by the DDC since the DDC uses=
 the axis_data model</li><li>There is no structure to the metadata.=C2=A0 I=
 fully understand that this is by intent.=C2=A0 However, I did start to won=
der if some skeleton structure would make sense. For example, maybe some bi=
ts of the metadata should be designated for the NOC_ID of the block that in=
serts it.=C2=A0 Or, instead, maybe some bits could hold a unique WORD_ID th=
at identifies the type of metadata word.=C2=A0 Ettus could reserve some IDs=
 for itself to allow for future use of metadata by Ettus blocks.</li><li>It=
 would be nice if it was easier for a block to just &quot;insert&quot; a me=
tadata word.=C2=A0 With my own limited FPGA skills, I just decided to ignor=
e any upstream metadata words and create 1 metadata word that gets sent to =
downstream blocks.=C2=A0 But, that&#39;s not very friendly to the upstream =
blocks.=C2=A0 If it were easier to do, I would have preferred to just add m=
y block&#39;s metadata word to the incoming metadata words.</li></ul></div>=
<div><br></div></div>

--000000000000561ef205bd359098--


--===============5346346240530904825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5346346240530904825==--

