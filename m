Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BBE326540
	for <lists+usrp-users@lfdr.de>; Fri, 26 Feb 2021 17:08:04 +0100 (CET)
Received: from [::1] (port=45226 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lFfer-000892-5F; Fri, 26 Feb 2021 11:08:01 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:38950)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lFfeo-0007xc-3u
 for usrp-users@lists.ettus.com; Fri, 26 Feb 2021 11:07:58 -0500
Received: by mail-oi1-f178.google.com with SMTP id z126so10204641oiz.6
 for <usrp-users@lists.ettus.com>; Fri, 26 Feb 2021 08:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=zg5Cy5rGUIcWl7LJvyNJfZrX6hc+2zCnI/FgQ1W+tNU=;
 b=glxsEqOb3Mx0jzfbkHu6RAVlbmVxQdrIsZkits348AczMIs8sHH67pbwFunpFq+3wY
 VPdaSnGFZW/wfJml82OQ2sOidYvOZ50gTXtSrnVWvXNyhj+rrW3qiXcOJNtEFt1Mt/4b
 qk6RM16CjLWfCqgi1N16stCCgPwshLdlLrlwBpT6BHe8qUTHSijG5q1uzknU+hsJzWBD
 WfuqbwkI4ruw6yByI8Cnp8rx/i+bvvuEMtJ7lizLlSiENdV0gVBczgQjyitrZG1aHXYB
 MXaRfooWOosD5RNQG2y9ZQDqFJUCRkCcZE7/QRPYDnbb4b/Wx3uW+e+HjvbExhbczE87
 Jtng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=zg5Cy5rGUIcWl7LJvyNJfZrX6hc+2zCnI/FgQ1W+tNU=;
 b=ctYAR9vSVY1EmPjzAWpZEI99KHrQqsxINQtY+PFDMpPqnxhbTFK8kpaaHYrjI9hSjB
 7kgYnCNR0/9dLMGnYeFMNvhtHvw3iHY+JrEqLgUR/+AfBk15TGjSfrZQ5s0ABJtIxoSM
 ckKBF0KtVebheUk7zZZ1HVA1ZjP1BfHEyssyfsXc8ALHWCTPx1tq7sPsskrUbpDVa+pp
 u6mSKmOLGdL5oeBIco+O8SH8TiSKxMIA3MvUx24Z6pz2PBN2DOXSxCdFSj2ZiDBvkF35
 28Qr9AkkIeHIzOGQfB9jiW6I+E9ifi6ASquxgefozazUq+Wd7lUQy/PW5dI51hpB4X2G
 Fs2w==
X-Gm-Message-State: AOAM530z4KslVFsnzyCD3j2nUBYB4mLpokrgk2Mvv7guzZ3yR21vFSc7
 qWwANbafPAR56jjx3jmRWxuA73YaRSrJblCD2ZJgvdUNUvQ=
X-Google-Smtp-Source: ABdhPJykVUB5kjQE5d8GQ3DTook/WJqtkehIMBj12AWzNkYsRN3kt/Z9Jg6uij6qAxGAC/Fdz9ORiKPrwE/wetRiwjQ=
X-Received: by 2002:a05:6808:10ca:: with SMTP id
 s10mr2548006ois.33.1614355636821; 
 Fri, 26 Feb 2021 08:07:16 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 26 Feb 2021 11:07:06 -0500
Message-ID: <CAB__hTTepTD=OzJDHNV_ve7WdKiEYHcx-NsZ1G1cQX65YJ92Qw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] rfnoc architecture suggestions
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
Content-Type: multipart/mixed; boundary="===============4206856224328257818=="
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

--===============4206856224328257818==
Content-Type: multipart/alternative; boundary="000000000000468e5805bc3f7679"

--000000000000468e5805bc3f7679
Content-Type: text/plain; charset="UTF-8"

While I am a big fan of the architectural changes to RFNoC with the release
of UHD 4.0, I have a couple of suggestions for improvement. I am admittedly
a novice FPGA developer so it's certainly possible that these suggestions
are "easier said than done" or poor choices for other reasons. But, that
won't stop me from suggesting them...

   - Remove to a greater extent the requirement for user logic to "care"
   about packet lengths.  In many cases, the user logic does not care about
   packet lengths and MTU sizes and such.  For example, if I am writing a
   signal generator that is feeding a DUC/Radio, I may care about a time stamp
   and EOB, but I simply do not care about RFNoC packet sizes. This is true in
   several custom blocks I have written.  However, in the current RFNoc
   architecture, I am forced to care about them. At a minimum, I must set
   tlast and depending upon the context model I choose, I may also have to
   make sure that my context payload length matches this. It seems to me that
   the custom noc_shell could be tweaked further to alleviate this burden for
   more use cases.
   - Provide an automatic "bypass" mode (or an option to enable this in the
   block yml) in the custom noc_shell. I am talking about a capability that
   would allow the user to bypass user logic by setting a register such that
   the custom block would become a "thru" block.  While I recognize that this
   functionality is not appropriate to all blocks (e.g., 2 input, 3 output),
   there are a large number of blocks for which this would be helpful.  Given
   the new capability for static routing, this would allow the user to bypass
   a statically routed block. And, while I could certainly implement such
   logic in all of my custom blocks, it would be more useful if this were
   standard across all blocks including Ettus blocks such as DDC & DUC.

Rob

--000000000000468e5805bc3f7679
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">While I am a big fan of the architectural changes to RFNoC=
 with the release of UHD 4.0, I have a couple of suggestions for improvemen=
t. I am admittedly a novice FPGA developer so it&#39;s certainly possible t=
hat these suggestions are &quot;easier said than done&quot; or poor choices=
 for other reasons. But, that won&#39;t stop me from suggesting them...<div=
><ul><li>Remove to a greater extent the requirement for user logic to &quot=
;care&quot; about packet lengths.=C2=A0 In many cases, the user logic does =
not care about packet lengths and MTU sizes and such.=C2=A0 For example, if=
 I am writing a signal generator that is feeding a DUC/Radio, I may care ab=
out a time stamp and EOB, but I simply do not care about RFNoC packet sizes=
. This is true in several custom blocks I have written.=C2=A0 However, in t=
he current RFNoc architecture, I am forced to care about them. At a minimum=
, I must set tlast and depending upon the context model I choose, I may als=
o have to make sure that my context payload length matches this. It seems t=
o me that the custom noc_shell could be tweaked further to alleviate this b=
urden for more use cases.</li><li>Provide an automatic &quot;bypass&quot; m=
ode (or an option to enable this in the block yml) in the custom noc_shell.=
 I am talking about a capability that would allow the user to bypass user l=
ogic by setting a register such that the custom block would become a &quot;=
thru&quot; block.=C2=A0 While I recognize that this functionality is not ap=
propriate to all blocks (e.g., 2 input, 3 output), there are a large number=
 of blocks for which this would be helpful.=C2=A0 Given the new capability =
for static routing, this would allow the user to bypass a statically routed=
 block. And, while I could certainly implement such logic in all of my cust=
om blocks, it would be more useful if this were standard across all blocks =
including Ettus blocks such as DDC &amp; DUC.</li></ul><div>Rob</div></div>=
</div>

--000000000000468e5805bc3f7679--


--===============4206856224328257818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4206856224328257818==--

