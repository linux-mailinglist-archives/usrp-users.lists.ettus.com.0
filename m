Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4101A86EEAE
	for <lists+usrp-users@lfdr.de>; Sat,  2 Mar 2024 05:51:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C5C7A3852C3
	for <lists+usrp-users@lfdr.de>; Fri,  1 Mar 2024 23:51:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709355117; bh=AzcxvrOKwvRarhna0WycYRNKPhNu/V34ovBCZ9tdklU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KcRqH+pRZ9bNqjL1V3CKGrXkevJffUDVY/fItrd2uy6UFM9FNJVU/Ml/erU35BpAZ
	 f4KlWzYz8cYuaN2e07R7QNG/pSsxwCXaBG/Y8Ja+xGrNnSeV6fDPoWUeDTN44CiUd4
	 P/u4lRsx2MrUXHHNm9mHkX5jTsqgs33TG9GgDYgPjVXJkomJ4/lHVnHxqpcP9UftsU
	 86AXM1sRDL9KWCs76legoM4m0e1hjEEd+9afozPaMYz0m3pthTkvALjDu98aQNCuj/
	 tYojtIJR9kabZik7KUPT9gHRZQzsygkPcrB2TegqlvgbyaA44cMqC81bpJAswnbO+5
	 bX808oJWe9piQ==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 442333852AA
	for <usrp-users@lists.ettus.com>; Fri,  1 Mar 2024 23:51:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gnuradio-org.20230601.gappssmtp.com header.i=@gnuradio-org.20230601.gappssmtp.com header.b="DKSuQBqv";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a28a6cef709so455870466b.1
        for <usrp-users@lists.ettus.com>; Fri, 01 Mar 2024 20:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gnuradio-org.20230601.gappssmtp.com; s=20230601; t=1709355109; x=1709959909; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AxbCp8YRtUXGavnn33WK2DxB8ixEh+cep/b4hWyRPdQ=;
        b=DKSuQBqvaoctvmbt2CY5oNuA7l23lcqQmNARjliY+9eVN2cpL3RbvveTyw6BoJEkEO
         BfYtfcyAorkOxPKwT9sDBrHi5guOrzTDXTrr5KRYl63Sv8lXukHcHXWoX0CQG/D12ORR
         oKizaYha1JEki+cbSgD60pFg1v2mS0s/gvy7XGtCOWfuxOd0LEW9VBmX4yoTZu4uEoy1
         k2hlFX9gEgAcOAOkYzxSMxA5KVkFxtry2HvU3RelYggi2CjNg3qj+yEtF72iyYwKvS4z
         igkZyeJFXNCefXJQUf/c/N5Zn7xeqAk8tf4tvMPFfIMMhMpDh3JraC0xN7NyyBEXRu9V
         funQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709355109; x=1709959909;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AxbCp8YRtUXGavnn33WK2DxB8ixEh+cep/b4hWyRPdQ=;
        b=JyuXkS1TsAkPVTlyI9F1a+tC5MYnKB7SH9GWAvSFNK5ur+s+rnVMknQ8/tSjBn85m7
         Lw6GrmgOpwuwQgrzoXALOjmDOqRfJ9/ydeNNXRejdNN13CHT8HyfG6uQkxpYLJqFzeyD
         gW0yZI3uZFRVjy9itku88fQWEPAg+wz3bsXCpHbFTWx2PvUifwwlAm6SX/Sfj9Owme8E
         H0Sn3jM1OA3ENTaMBbI1Bro3/TcyuB4J6dYX5fYsM8sj/RqNwki9oga/Uzo9lMbhAEWz
         josXn3nVcguzMZrpc7duTuUqDiIhRGqKeWhny6xAy66h5DhQlGwppJPzpTk3hOmHPif/
         yS0A==
X-Gm-Message-State: AOJu0YxIdVMQ7cHdMb9Bp3cvoJsM61r1ZTmBeF26N9s5mr6Id+DA1zpk
	T1pt4r3/bGAdD7gMI3T2O7fBFbYBA/wxgx1KX/sz2w5ZcHde+KQvZIE8VWmm+ek++qiqmkrIxGp
	FJ80tHHnWTGH1llZHnRgg+bwRIA4/8YMv/l5/oRknLInu7Mda5Fs=
X-Google-Smtp-Source: AGHT+IFkGqQ7GHuK0E3jR1iHgltf8BzTuZRvYVV9r+eXj49jlXOSeBwC/v9moCsLTKUGldfLOMQpi2t6uKGxrgbXLnE=
X-Received: by 2002:a17:906:c49:b0:a3e:e678:556 with SMTP id
 t9-20020a1709060c4900b00a3ee6780556mr2479900ejf.58.1709355108515; Fri, 01 Mar
 2024 20:51:48 -0800 (PST)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@gnuradio.org>
Date: Fri, 1 Mar 2024 22:51:12 -0600
Message-ID: <CAM=JgR6gWGM-bUtqES-8Z-+qnmEqK25n-o+c8DaQgfOEzBTCjw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: BOVVBBXNZZON2LXXGPIH3FOAMOG4SM7Y
X-Message-ID-Hash: BOVVBBXNZZON2LXXGPIH3FOAMOG4SM7Y
X-MailFrom: neel.pandeya@gnuradio.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Announcing GRCon24 !!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BOVVBBXNZZON2LXXGPIH3FOAMOG4SM7Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5351461783568316218=="

--===============5351461783568316218==
Content-Type: multipart/alternative; boundary="00000000000009d8ce0612a640c1"

--00000000000009d8ce0612a640c1
Content-Type: text/plain; charset="UTF-8"

Greetings GNU Radio Community!

We are excited to announce that the GNU Radio Conference 2024 (GRCon24)
will be held on September 16-20 at the Knoxville Convention Center in
Knoxville, Tennessee, USA. Please Save-the-Date! Attendee registration for
the event is already open. More details about the event for attendees,
participants, and sponsors are available on the event website.

https://www.gnuradio.org/grcon/

https://events.gnuradio.org/event/24/

The Call for Participation (CfP) opens today (Friday March 1). Submissions
for papers, posters, talks, workshops, and other contributions are now
being accepted through the GRCon24 website. The Call for Participation will
close on Monday June 17.

https://events.gnuradio.org/event/24/abstracts/

If you have any questions about attending and/or participating, or if you
would like to find out more about becoming one of our valued sponsors, then
please contact us here on the mailing list, or via email at
grcon@gnuradio.org, or via our Matrix chat server at
https://chat.gnuradio.org/. Note that this event can only be successful
because of our sponsors. The link below contains more information about
sponsorship opportunities.

https://events.gnuradio.org/event/24/page/158-sponsorship-opportunities

Since GRCon is run by a group of volunteers, we are also looking for people
to help with both the planning of the event and assisting during the
event.  If you are interested in volunteering in any capacity, please see
the link below, or please reach out to us at grcon@gnuradio.org.

https://events.gnuradio.org/event/24/page/159-volunteer-opportunities

We look forward to seeing you at GRCon24 !!

Sincerely,
The GRCon24 Organizers

--00000000000009d8ce0612a640c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">Greetings GNU Radio Community!<br><br>We are excited to an=
nounce that the GNU Radio Conference 2024 (GRCon24) will be held on Septemb=
er 16-20 at the Knoxville Convention Center in Knoxville, Tennessee, USA. P=
lease Save-the-Date! Attendee registration for the event is already open. M=
ore details about the event for attendees, participants, and sponsors are a=
vailable on the event website.<br><br><a href=3D"https://www.gnuradio.org/g=
rcon/">https://www.gnuradio.org/grcon/</a><br><br><a href=3D"https://events=
.gnuradio.org/event/24/">https://events.gnuradio.org/event/24/</a><br><br>T=
he Call for Participation (CfP) opens today (Friday March 1). Submissions f=
or papers, posters, talks, workshops, and other contributions are now being=
 accepted through the GRCon24 website. The Call for Participation will clos=
e on Monday June 17.<br><br><a href=3D"https://events.gnuradio.org/event/24=
/abstracts/">https://events.gnuradio.org/event/24/abstracts/</a><br><br>If =
you have any questions about attending and/or participating, or if you woul=
d like to find out more about becoming one of our valued sponsors, then ple=
ase contact us here on the mailing list, or via email at <a href=3D"mailto:=
grcon@gnuradio.org">grcon@gnuradio.org</a>, or via our Matrix chat server a=
t <a href=3D"https://chat.gnuradio.org/">https://chat.gnuradio.org/</a>. No=
te that this event can only be successful because of our sponsors. The link=
 below contains more information about sponsorship opportunities.<br><br><a=
 href=3D"https://events.gnuradio.org/event/24/page/158-sponsorship-opportun=
ities">https://events.gnuradio.org/event/24/page/158-sponsorship-opportunit=
ies</a><br><br>Since GRCon is run by a group of volunteers, we are also loo=
king for people to help with both the planning of the event and assisting d=
uring the event.=C2=A0 If you are interested in volunteering in any capacit=
y, please see the link below, or please reach out to us at=C2=A0</font><spa=
n style=3D"font-family:verdana,sans-serif">grcon</span><font face=3D"verdan=
a, sans-serif">@<a href=3D"http://gnuradio.org">gnuradio.org</a>.<br><br><a=
 href=3D"https://events.gnuradio.org/event/24/page/159-volunteer-opportunit=
ies">https://events.gnuradio.org/event/24/page/159-volunteer-opportunities<=
/a></font></div><div class=3D"gmail_default" style=3D""><font face=3D"verda=
na, sans-serif"><br></font></div><div class=3D"gmail_default" style=3D""><f=
ont face=3D"verdana, sans-serif">We look forward to seeing you at GRCon24 !=
!<br><br>Sincerely,<br>The GRCon24 Organizers</font><br></div><div class=3D=
"gmail_default" style=3D""><font face=3D"verdana, sans-serif"><br></font></=
div></div>

--00000000000009d8ce0612a640c1--

--===============5351461783568316218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5351461783568316218==--
