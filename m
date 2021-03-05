Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC8732F02F
	for <lists+usrp-users@lfdr.de>; Fri,  5 Mar 2021 17:37:42 +0100 (CET)
Received: from [::1] (port=48030 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lIDSM-0001ZM-V6; Fri, 05 Mar 2021 11:37:38 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:42639)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lIDSJ-0001Vr-7Q
 for usrp-users@lists.ettus.com; Fri, 05 Mar 2021 11:37:35 -0500
Received: by mail-oi1-f180.google.com with SMTP id l64so3118735oig.9
 for <usrp-users@lists.ettus.com>; Fri, 05 Mar 2021 08:37:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=U/GppDt7/r7CjBv2GIpAV1dux5zqoGksW75WJCivQJ4=;
 b=g1l7JD05ghWXTpTopeIfm/K+jBKHxay70g4GcWH3PoTBbO2u9XjWReer97rkk9CvQ6
 lwmmVGki7Qy9lxJEVP6xtdRBN8XceKbCeR+ti74H4Zsn58iC737wQwwPLJk1ud33Qd3h
 hxSOAqAO0YFZlkcxXtZmfglR6aUWXo6QadSiMs0GIWL++qpv9k8UFBokWO9lRoMusHBN
 mZscQCQy5SjqRRuvokInwdnqamQdfbmZnWvFf+1DpneCzpe41swFk6naZo1wN0cqrcdq
 s62dTvSQbHuM30aj8NOvzM6jUhkW9YyM73YGoOkIGrl4fABTCNV4EltKr7wSYEIridny
 /LVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=U/GppDt7/r7CjBv2GIpAV1dux5zqoGksW75WJCivQJ4=;
 b=XnSLGyiilrLWGaPaCgMER9h79htIXcs0OFkBf/G8y4aMo+7+cSFutIY1ilDgBIgCvB
 mMDBoeU9+QvANlpU9PW86BibirKxBzeZ7wGdimW/nL8J9GqXnoTdL0W1Qp4qK6hZcvK9
 XdTl4H+6uwm8OTp2K9XFATURZL7YcXXNW45PODPmRdqeM11aKq7Msd5vYsNsxkqZXqh+
 DxvZUD2QzmkdYwdAT9IygYnRSQHVAp2U7o29bWm/TX7U5zKha3xwrBtUlB51eLGaFel3
 7ls8ydz9FRmcIcfDb2iPTnBtvmlg3mJJqaC98+TcpLGj5ZOHNqs9jES9o515Lrhb03tF
 wBQg==
X-Gm-Message-State: AOAM530WooXOdPVoWlNrvqnssZWHg8PAya3h/m0Z99pIb3rVcFKzdSCA
 1VxjTrML7LODBteLVU0u66P4XCLjgyK3J6aCUKUtaGyGsdA=
X-Google-Smtp-Source: ABdhPJyGR5kCq9qVig99OPw+n/QJ5S6B6WDzhvnTJbQ7waWTNzCKADun840tHpaxn449xjrZp277it40QyBpAsYrwzg=
X-Received: by 2002:a05:6808:d47:: with SMTP id
 w7mr7684115oik.150.1614962214050; 
 Fri, 05 Mar 2021 08:36:54 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTpgdLBBRBMFT7HrPdctcofvtw0VeLbCH4Z_4o+qdquDQ@mail.gmail.com>
In-Reply-To: <CAB__hTTpgdLBBRBMFT7HrPdctcofvtw0VeLbCH4Z_4o+qdquDQ@mail.gmail.com>
Date: Fri, 5 Mar 2021 11:36:43 -0500
Message-ID: <CAB__hTSPrE27F7kjz+LxOUXP2-aByPVt_53047BOMAbwKKpZLA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD 4 "properties"
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
Content-Type: multipart/mixed; boundary="===============3802998613802426097=="
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

--===============3802998613802426097==
Content-Type: multipart/alternative; boundary="00000000000018573c05bcccb10a"

--00000000000018573c05bcccb10a
Content-Type: text/plain; charset="UTF-8"

Hi,
I wanted to revisit a couple of issues with UHD 4.0 properties and ask
whether Ettus is planning any changes to the property architecture that
would address these issues.  The 2 issues are the following:

   - There is presently not a good way to use a property with a read-only
   register (where the register values are dynamic).  As seen in the exchange
   below, Martin suggests the ALWAYS_DIRTY setting, but it seems that is
   impractical because of the unnecessary register I/O that occurs.  I
   inserted some LOG messages in my code which showed that the register was
   being read at numerous times, not just in response to a user-initiated
   query of the given property (as would be the case if there was a "get"
   callback function in a similar way to UHD 3.15 args).
   - If the user "sets" the value of a property such that the value does
   not change, the "set" callback does not execute. This again differs from
   behavior of 3.15 args.  In 3.15, I used an "arg" that was a string which
   identified a window coefficient file.  Whenever I set the arg, the callback
   read the file and downloaded the coefficients to the FPGA.  I could
   externally update the coefficients inside the file and then set the arg
   again and the coefficients would be reloaded even though the filename
   itself did not change. With UHD 4 properties, this does not happen.  If the
   property string does not change (i.e., the filename does not change), the
   "set" callback does not execute.

Rob


On Wed, Oct 7, 2020 at 6:40 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi,
> I have 2 issues related to properties in UHD 4.0.
>
> The first is regarding the concept of a read-only property where the
> property is monitoring some HW status. This was discussed in another thread
> (which I copied  below) but I decided to move it here to a new thread. The
> proposed solution doesn't seem practical if ALWAYS_DIRTY causes numerous
> register reads as it appears to.
>
> The second issue is related to setting a property to a value that does not
> change. This may seem stupid but in the past (UHD 3.15), I could use a
> block arg as representing a string filename (e.g., a file containing Window
> coefficients).  If I registered a function as a publisher for this arg,
> then my function would run whenever this property was set (whether or not
> it changed) so that I could read my file and load the coefficients.  But,
> with UHD4 properties, my function is not getting called when the property
> is set to the same filename as it was before the set.  So, even though the
> coefficients in the file are changed, they are never loaded because the
> filename itself did not change.
>
> Let me know if you have any suggestions on either issue.
> Rob
>
>
> > Rob, you might want to check out host/tests/rfnoc_graph_mock_nodes.hpp,
> > and look at the RSSI property. It's supposed to mock a property that
> > only represents a value that is read back from the radio (none of our
> > RFNoC radios actually have that property, but we provisioned for it in
> > the specification, and this is an example of that).
> >
> > Instead of updating a counter (which we only do because this is a mock
> > for unit testing), you would peek a register.
>
> Hi Martin,
> I looked at this and implemented a property using the ALWAYS_DIRTY
> dependency shown in the mock case. This does work, but it causes my
> actual register peek to occur quite a lot - not just when a user calls
> get_property for that property.
>

--00000000000018573c05bcccb10a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,</div><div dir=3D"ltr">I wanted to rev=
isit a couple of issues with UHD 4.0 properties and ask whether Ettus is pl=
anning any changes to the property architecture that would address these is=
sues.=C2=A0 The 2 issues are the following:</div><div dir=3D"ltr"><ul><li>T=
here is presently not a good way to use a property with a read-only registe=
r (where the register values are dynamic).=C2=A0 As seen in the exchange be=
low, Martin suggests the ALWAYS_DIRTY setting, but it seems that is impract=
ical because of the unnecessary register I/O that occurs.=C2=A0 I inserted =
some LOG messages in my code which showed that the register was being read =
at numerous times, not just in response to a user-initiated query of the gi=
ven property (as would be the case if there was a &quot;get&quot; callback =
function in a similar way to UHD 3.15 args).=C2=A0</li><li>If the user &quo=
t;sets&quot; the value of a property such that the value does not change, t=
he &quot;set&quot; callback does not execute. This again differs from behav=
ior of 3.15 args.=C2=A0 In 3.15, I used an &quot;arg&quot; that was a strin=
g which identified a window coefficient file.=C2=A0 Whenever I set the arg,=
 the callback read the file and downloaded the coefficients to the FPGA.=C2=
=A0 I could externally update the coefficients inside the file and then set=
 the arg again and the coefficients would be reloaded even though the filen=
ame itself did not change. With UHD 4 properties, this does not happen.=C2=
=A0 If the property string does not change (i.e., the filename does not cha=
nge), the &quot;set&quot; callback does not execute.</li></ul><div>Rob</div=
><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Oct 7, 2020 at 6:40 PM Rob Kossler &lt;<a href=3D"m=
ailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I have 2=
 issues related to properties in UHD 4.0.=C2=A0</div><div><br></div><div>Th=
e first is regarding the concept of a read-only property where the property=
 is monitoring some HW status. This was discussed in another thread (which =
I copied=C2=A0 below) but I decided to move it here to a new thread. The pr=
oposed solution doesn&#39;t seem practical if ALWAYS_DIRTY causes numerous =
register reads as it appears to.</div><div><br></div><div>The second issue =
is related to setting a property to a value that does not change. This may =
seem stupid but in the past (UHD 3.15), I could use a block arg as represen=
ting a string filename (e.g., a file containing Window coefficients).=C2=A0=
 If I registered a function as a publisher for this arg, then my function w=
ould run whenever this property was set (whether or not it changed) so that=
 I could read my file and load the coefficients.=C2=A0 But, with UHD4 prope=
rties, my function is not getting called when the property is set to the sa=
me filename as it was before the set.=C2=A0 So, even though the coefficient=
s in the file are changed, they are never loaded because the filename itsel=
f did not change.</div><div><br></div><div>Let me know if you have any sugg=
estions on either issue.</div><div>Rob</div><div><br></div><div><br></div><=
div><span style=3D"color:rgb(80,0,80)">&gt; Rob, you might want to check ou=
t host/tests/rfnoc_graph_mock_nodes.hpp,<br>&gt; and look at the RSSI=C2=A0=
<span>property</span>. It&#39;s supposed to mock a=C2=A0<span>property</spa=
n>=C2=A0that<br>&gt; only represents a value that is read back from the rad=
io (none of our<br>&gt; RFNoC radios actually have that=C2=A0<span>property=
</span>, but we provisioned for it in<br>&gt; the specification, and this i=
s an example of that).<br>&gt;<br>&gt; Instead of updating a counter (which=
 we only do because this is a mock<br>&gt; for unit testing), you would pee=
k a register.<br><br></span>Hi Martin,<br>I looked at this and implemented =
a=C2=A0<span>property</span>=C2=A0using the ALWAYS_DIRTY<br>dependency show=
n in the mock case. This does work, but it causes my<br>actual register pee=
k to occur quite a lot - not just when a user calls<br>get_property for tha=
t=C2=A0<span>property</span>.<br></div></div>
</blockquote></div></div>

--00000000000018573c05bcccb10a--


--===============3802998613802426097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3802998613802426097==--

