Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B90286AF8
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 00:41:04 +0200 (CEST)
Received: from [::1] (port=42700 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQI7K-0006V8-HB; Wed, 07 Oct 2020 18:41:02 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:38605)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kQI7G-0006Iz-GM
 for usrp-users@lists.ettus.com; Wed, 07 Oct 2020 18:40:58 -0400
Received: by mail-oi1-f170.google.com with SMTP id 26so4282797ois.5
 for <usrp-users@lists.ettus.com>; Wed, 07 Oct 2020 15:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=OdMlaeVPlqB1dyWJ+nwLpTczLr8WI4coZqnKYT1bgSw=;
 b=O/aPgMHv8Sj7iag/KmGSA8+rGdINBrcD2dX4l5BZl48zefXg194ZQssJQnD/J5nkZu
 qZUcIhEHLBb/saVtsvSEUmICX8dPZF8nh4CLhha9UzzumQXGTBbp9dWVefo9rgQAK20T
 /wykn5tN8Z/v0tTv361J0BUZJYmkR2g01PlFDO4qwYmbhDp9U3/wcQ1OCw2ua9j+L5bS
 fOKa8l38pbpK/B+jrbKTKEP5840cO8CLvg4ZLj86z+nwtg1XrItGwysdkFueylWCcKNR
 DoIl3mb01sbBJk6OLmYjKZTU5W08Sleo9cN50wgy7weItEBtLfiLJ6wlmSiR8PmZm+wO
 nLGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=OdMlaeVPlqB1dyWJ+nwLpTczLr8WI4coZqnKYT1bgSw=;
 b=cnofUSCx0lrTkgP+paeQYHcuaeJ326jna10uQh5R8CvmqMHOz4XB5HvVNMJ+sbSHMo
 +eKL3Fj+4VeFaJxJvOIuQuw5wDrYA7zfg9CkK/SUyPkf8NbaP7ndBkP5GGCK5lDcQ+2s
 O1mXReKf+DrVC+FxWeQtJj8x4ThPqpXACw/yJtSaUmphAIKhofu9bTfZ6NemdEGgUleW
 VS2kOyjM2+N6GM0GJMqbh6by2v/444dM8Lygr/tvvQNWo0ALNtSbR8F1cmuzrh3suwX/
 miOC3qcwvBlAkq1VcAJXwtdVYlP4M4gXNHFHXQ9JShUmIJTG0BuWb3aO68TEs5kutNLI
 GlDQ==
X-Gm-Message-State: AOAM5308y+1rtFJZ6PrPM6eAiWfbTEKR1Buve1S61Xb7IscGWyml2utZ
 nTNooDG+hk4wXlnkFOYOkRfD5wUsL5tHvPd0IFzd34yR6lyM9A==
X-Google-Smtp-Source: ABdhPJzB2z1tw+MWUfS5r5eNebivkHmQMwkh6poM7Baqfcc5wywUfYLkkbmZGQFN/xiJIHa/liiwu3eTfCnqdzl9a2Q=
X-Received: by 2002:a05:6808:216:: with SMTP id
 l22mr3147091oie.124.1602110417495; 
 Wed, 07 Oct 2020 15:40:17 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 7 Oct 2020 18:40:06 -0400
Message-ID: <CAB__hTTpgdLBBRBMFT7HrPdctcofvtw0VeLbCH4Z_4o+qdquDQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] UHD 4 "properties"
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
Content-Type: multipart/mixed; boundary="===============0939922319535157433=="
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

--===============0939922319535157433==
Content-Type: multipart/alternative; boundary="00000000000053ac3705b11c66cf"

--00000000000053ac3705b11c66cf
Content-Type: text/plain; charset="UTF-8"

Hi,
I have 2 issues related to properties in UHD 4.0.

The first is regarding the concept of a read-only property where the
property is monitoring some HW status. This was discussed in another thread
(which I copied  below) but I decided to move it here to a new thread. The
proposed solution doesn't seem practical if ALWAYS_DIRTY causes numerous
register reads as it appears to.

The second issue is related to setting a property to a value that does not
change. This may seem stupid but in the past (UHD 3.15), I could use a
block arg as representing a string filename (e.g., a file containing Window
coefficients).  If I registered a function as a publisher for this arg,
then my function would run whenever this property was set (whether or not
it changed) so that I could read my file and load the coefficients.  But,
with UHD4 properties, my function is not getting called when the property
is set to the same filename as it was before the set.  So, even though the
coefficients in the file are changed, they are never loaded because the
filename itself did not change.

Let me know if you have any suggestions on either issue.
Rob


> Rob, you might want to check out host/tests/rfnoc_graph_mock_nodes.hpp,
> and look at the RSSI property. It's supposed to mock a property that
> only represents a value that is read back from the radio (none of our
> RFNoC radios actually have that property, but we provisioned for it in
> the specification, and this is an example of that).
>
> Instead of updating a counter (which we only do because this is a mock
> for unit testing), you would peek a register.

Hi Martin,
I looked at this and implemented a property using the ALWAYS_DIRTY
dependency shown in the mock case. This does work, but it causes my
actual register peek to occur quite a lot - not just when a user calls
get_property for that property.

--00000000000053ac3705b11c66cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I have 2 issues related to properties in UHD 4=
.0.=C2=A0</div><div><br></div><div>The first is regarding the concept of a =
read-only property where the property is monitoring some HW status. This wa=
s discussed in another thread (which I copied=C2=A0 below) but I decided to=
 move it here to a new thread. The proposed solution doesn&#39;t seem pract=
ical if ALWAYS_DIRTY causes numerous register reads as it appears to.</div>=
<div><br></div><div>The second issue is related to setting a property to a =
value that does not change. This may seem stupid but in the past (UHD 3.15)=
, I could use a block arg as representing a string filename (e.g., a file c=
ontaining Window coefficients).=C2=A0 If I registered a function as a publi=
sher for this arg, then my function would run whenever this property was se=
t (whether or not it changed) so that I could read my file and load the coe=
fficients.=C2=A0 But, with UHD4 properties, my function is not getting call=
ed when the property is set to the same filename as it was before the set.=
=C2=A0 So, even though the coefficients in the file are changed, they are n=
ever loaded because the filename itself did not change.</div><div><br></div=
><div>Let me know if you have any suggestions on either issue.</div><div>Ro=
b</div><div><br></div><div><br></div><div><span class=3D"gmail-im" style=3D=
"color:rgb(80,0,80)">&gt; Rob, you might want to check out host/tests/rfnoc=
_graph_mock_nodes.hpp,<br>&gt; and look at the RSSI=C2=A0<span class=3D"gma=
il-il">property</span>. It&#39;s supposed to mock a=C2=A0<span class=3D"gma=
il-il">property</span>=C2=A0that<br>&gt; only represents a value that is re=
ad back from the radio (none of our<br>&gt; RFNoC radios actually have that=
=C2=A0<span class=3D"gmail-il">property</span>, but we provisioned for it i=
n<br>&gt; the specification, and this is an example of that).<br>&gt;<br>&g=
t; Instead of updating a counter (which we only do because this is a mock<b=
r>&gt; for unit testing), you would peek a register.<br><br></span>Hi Marti=
n,<br>I looked at this and implemented a=C2=A0<span class=3D"gmail-il">prop=
erty</span>=C2=A0using the ALWAYS_DIRTY<br>dependency shown in the mock cas=
e. This does work, but it causes my<br>actual register peek to occur quite =
a lot - not just when a user calls<br>get_property for that=C2=A0<span clas=
s=3D"gmail-il">property</span>.<br></div></div>

--00000000000053ac3705b11c66cf--


--===============0939922319535157433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0939922319535157433==--

