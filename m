Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNstEYSKcGkEYQAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jan 2026 09:12:52 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E445534C7
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jan 2026 09:12:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 427D1386A6B
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jan 2026 03:12:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768983170; bh=55+YjZT00xiqHVjJboE4eSip4PQnZ80URltOmlNdQtg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tRvQ3WEF5a0eq51/jHeNcmyCCxdM4UHhiNTHnpjMXn9x0ZVg28uBEI0aCBZ5ZT3Jb
	 ph58/nyhFRu8UPX4Q8UdhFzdfEp2jSZy4FLNl4OZCNkyBBXr6IABf63KwkYIQ5BPk3
	 0BLYvkindwXYv+nDJ2ALhhe37RA5d7taCJh06zYH+aGOHfA0VoE940rzHGbeW9R+ct
	 OgilWcCjv2LyOiwLHCwuUZbTZYFQmhy1W6Bb2mhk5ipuNs2TTdHXVJqCxoDMTnKI/R
	 jHml7gHTss7W0zCJlhIz10aiCeF6VIh5hwZInzg3mVGqleru3VPSf3u1qjK3SnotN6
	 oJQbAL2TeN3uQ==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C096384E6F
	for <usrp-users@lists.ettus.com>; Wed, 21 Jan 2026 03:11:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="iKh4UJvR";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-894724bc5cbso4234296d6.1
        for <usrp-users@lists.ettus.com>; Wed, 21 Jan 2026 00:11:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768983106; cv=none;
        d=google.com; s=arc-20240605;
        b=C7BEDBqCnuZo1syVYRQNsLbrV7oVEG+i3i5mkRKNk8JzTdRhVcH7Dou95BaYGsSgpN
         hsebnz3akbRUwWKVeeVKwUtHe4bXP8q4Eqq598DMgmwb1pKkAjhyNo3FtHqsYeBWpr4B
         V5bb6j4WYPVxqibBeXTUbFRHw+pdUE6soa0QJzo9eeLrkeeR2nG3WIWChzB+3YGpIRLw
         xxoFtI41DeB75X9e0BVAAfdu7zdUNj8yv7hjXNBfLLq/tWM3m+blMcbV6HpPXa9tPyyC
         zYZI7aEs8Cdq3KAlBzQ+cuo6LFuPiD75UzYXr1CESWlg4Sh6OanuKBjhr5rfsHBX5rr3
         0v4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=MTRCwWq7P/CcmbnA8xU6Vur6unV0uIfHeFkm7nQl2pY=;
        fh=9CUBuACEF7a4/qEm7ltrWraAgj2qU8WjZ8LgOx5Sr9U=;
        b=FZ9GM+Ch4NyO1+BZwwTUh1yMOPtZiWWHGnkz5SVcndayi4mSPX0dLa2tFdQCZ/udk8
         pC+gCviI9LSmPKYbiMDJKO09zWoW+mQtnAzzaINY5k1Cs/JpsEynLz6dGBslxFMaLdpx
         qF/hLN7NcWqS4uWW8R3ZVAxeYwCvoaF3GrorDU7XFfI33SPonhp4SAAv83dLWaP9oIai
         +Z60rBSRfcvyMZECdtKrv95yEgM1WMTaiETLqUIlfCO/RMTsi1X6VjEIEgL8jELR1lKn
         fIYmjP5EqiWmBi7io2jVYhJCaIjVoOrO5T2adSYvS6Gbw411UvbdyD1nmvhu0B7zptaC
         5BMQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1768983106; x=1769587906; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MTRCwWq7P/CcmbnA8xU6Vur6unV0uIfHeFkm7nQl2pY=;
        b=iKh4UJvRVqhTNI6VpJoi2Pv4Dga/hzMHeQMIHb8/2/3X4tQImxgbmJbLyrrxnzl99O
         A4zPeayfIwZii37B9iBfQaE8G1gqUwjVAyRDo3NwdPA2Ak9k7lp/3amQnX1hDTFxGV7v
         LdiJPtHXy46lU/98zI11tBgwjy/xR2p3pza4GMokYB+4JTz4yv8mMWy8DaqCpJnwec5F
         7QvB8pEXPQP9YCyg1dluHdqtgYvrEJAVTVvfRbrSsm7HVOHaS5F7dOPmlntp92ew9me9
         ZRuKJ7QaHLasIOjA8vnxXYALOAgQ+exawTslokafevvqAzJyhp4vqcpT4Cd1jdV9SLlQ
         oOMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768983106; x=1769587906;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MTRCwWq7P/CcmbnA8xU6Vur6unV0uIfHeFkm7nQl2pY=;
        b=cKFWSNjDLKEZr+evJhq5WVYozdSa8f0d9iqGeJfXnI3mvJf+D5lOfoUcv8SsywPbcw
         Pbdt7M+wxjc8pn/KnZG4pyYZ6+Qy4TAvAXGa/NseEbjLhAiMNDpsFRfyzGs9e06AAKZI
         cboZYBDQbiDaQBig3pVZnE3v92XE9XR7fgsDfHXzBIZXERXda7N21Jaw5nlYPJNtxf2P
         rZgteCsvu7rODe6QCsmnGiuZbWbBVGfiq6UaI05v4Rgs01mjFBIAd8cHkzBnYLhejt3x
         SvPg705kd9QIBHxXb8MA4H57TdCUkBRlYxXciPOdAm8aNXjVnBuWUFUA6oEKaWjyWPTb
         9ojQ==
X-Gm-Message-State: AOJu0YzvwJoTsGD7u3BHald1STUcrjFI2A14VTMiYdsa2X5+8fyJiaSY
	qAttO14WuAOCMw5Bp18T5iOT9m/yhQhbtAEtUepOU0ekecsdD9JHK+zAXvNVUNh55K4Hya8iK/z
	gv85Cq6mVKpWImmleFzFwDKxFQTFg4beVSKlc1hyGI2Q93H7QUvK6TLE=
X-Gm-Gg: AZuq6aINx9/+2ie1OYCAVCRcfAA44RWFid4slWQCBCOgSOmg0jU2cIL6xlpFCOfFaIB
	GKhzGZVkzZnELXJ4IIc3nwBhGW+M2m9w43I0/XL5v77CAAv0ug7L4JBqZuIMNvTnI/XQiS7AQVS
	p329wLj+7m+agvPpFjkdjCmfODiTLjNTAwm0xcQ8R4EzdcEdWSNH7kLh3lAW2cjLznmGJwgdWvj
	OvT3Id6EO5jJaFbGQFcWPl2n2Tm1HpPJ85a+gGsQ99oY5yCd/j+aIze/McpCQv7GjxDoLseKFsm
	K3QriirjoMao9k6ZyRzgShqriuypmGeUXvrZ
X-Received: by 2002:ad4:5bc1:0:b0:888:804f:3098 with SMTP id
 6a1803df08f44-8942d5f7c70mr240332456d6.3.1768983105757; Wed, 21 Jan 2026
 00:11:45 -0800 (PST)
MIME-Version: 1.0
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 21 Jan 2026 09:11:34 +0100
X-Gm-Features: AZwV_Qhm_Op_0kxvKWDyxdY7Rj0XdCUvyGGW5VRLMM3aLTg_U0-Ve4BAjT0krN4
Message-ID: <CAFOi1A6LeWXW04k7srqWNz1Y4ZHVLOBkLw6=3aBeb2MOpgR62w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: AI7HSS67E5DQAYLIYOLWPEQBH47CYNNM
X-Message-ID-Hash: AI7HSS67E5DQAYLIYOLWPEQBH47CYNNM
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GPIO Support for RFNoC Blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AI7HSS67E5DQAYLIYOLWPEQBH47CYNNM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5746660210604470492=="
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6E445534C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============5746660210604470492==
Content-Type: multipart/alternative; boundary="000000000000a1ef960648e17962"

--000000000000a1ef960648e17962
Content-Type: text/plain; charset="UTF-8"

Hi all,

Since GPIO support for RFNoC blocks has been requested so often, and by so
many people, it deserves its own email.

With the latest push of commits onto our master branch, we now have support
for connecting your RFNoC blocks to front-panel GPIOs on *all* of our RFNoC
devices (so including the often requested X310, the recently requested
N310, but also all the other devices, i.e. X410/X440/E320). If you're
interested in the details, see this and the following commits:
https://github.com/EttusResearch/uhd/commit/789301bde1c612a09290a54a4d36ff8962b36dfa.
In a nutshell, RFNoC blocks can be connected to the front panel through
regular IO ports. All the RFNoC tooling will make it reasonably simple to
build blocks that require access to GPIOs. You can even select which GPIO
pins are driven by your RFNoC block, and which pins are driven by the radio
(so you don't lose any features this way).

We will be also providing an example in the rfnoc-oot-blocks repository,
but that is not quite ship-shape yet. Keep your eyes on that repo (
https://github.com/EttusResearch/rfnoc-oot-blocks). We just want to give
you usrp-users subscribers a heads-up!

Thanks to all the folks who provided feedback on this feature!

--Martin and the UHD team

--000000000000a1ef960648e17962
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>Sin=
ce GPIO support for RFNoC blocks has been requested so often, and by so man=
y people, it deserves its own email.</div><div><br></div><div>With the late=
st push of commits onto our master branch, we now have support for connecti=
ng your RFNoC blocks to front-panel GPIOs on *all* of our RFNoC devices (so=
 including the often requested X310, the recently requested N310, but also =
all the other devices, i.e. X410/X440/E320). If you&#39;re interested in th=
e details, see this and the following commits:=C2=A0<a href=3D"https://gith=
ub.com/EttusResearch/uhd/commit/789301bde1c612a09290a54a4d36ff8962b36dfa" t=
arget=3D"_blank">https://github.com/EttusResearch/uhd/commit/789301bde1c612=
a09290a54a4d36ff8962b36dfa</a>. In a nutshell, RFNoC blocks can be connecte=
d to the front panel through regular IO ports. All the RFNoC tooling will m=
ake it reasonably simple to build blocks that require access to GPIOs. You =
can even select which GPIO pins are driven by your RFNoC block, and which p=
ins are driven by the radio (so you don&#39;t lose any features this way).<=
br><br></div><div>We will be also providing an example in the rfnoc-oot-blo=
cks repository, but that is not quite ship-shape yet. Keep your eyes on tha=
t repo (<a href=3D"https://github.com/EttusResearch/rfnoc-oot-blocks" targe=
t=3D"_blank">https://github.com/EttusResearch/rfnoc-oot-blocks</a>). We jus=
t want to give you usrp-users subscribers a heads-up!</div><div><br></div><=
div>Thanks to all the folks who provided feedback on this feature!</div><di=
v><br></div><div>--Martin and the UHD team</div><div><br></div></div>
</div>

--000000000000a1ef960648e17962--

--===============5746660210604470492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5746660210604470492==--
