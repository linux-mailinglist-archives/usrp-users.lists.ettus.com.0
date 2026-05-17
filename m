Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDqFG3pICmovzAQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 18 May 2026 01:00:10 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B302564392
	for <lists+usrp-users@lfdr.de>; Mon, 18 May 2026 01:00:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCAC838D999
	for <lists+usrp-users@lfdr.de>; Sun, 17 May 2026 19:00:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1779058807; bh=+Yju9YhL6H6NsbZYEVaSZxR1Jbf2HChSxYeWyRXdpRQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=H/KiNylXqon3by0rovsQaj8QHCT1dwyEI0YgHiDPnMVRKoRX9NVYrO6t1ehL6yYDS
	 fuZRKJWKEvAmBxsx30xjmkj/Ms0X6kPW70oiUlLYIbCrVKw2a3Z7NofJcJuoSoxThE
	 V5e/5lQj35Sq4kFNQmo7DudLRLCqd23AIY6EMffjqDvCIHBf3JLWEetBurUCnNH504
	 fN3E1bTvKZOodpYMQrU+0QXbc5aO608Xa2h+wMgJyWSbeuxbKeREtFrkR3Gm0PuPN3
	 hK2ynmI9pkx+EwjisJPVbWQyLGzJJRIeflIoMg4mEH061UeOf+ELlpmvh88E0ehKsl
	 QH+iVCdE3KThQ==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C47A38A480
	for <usrp-users@lists.ettus.com>; Sun, 17 May 2026 15:21:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gnuradio-org.20251104.gappssmtp.com header.i=@gnuradio-org.20251104.gappssmtp.com header.b="km4W3ytW";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-67cd93d8affso2045448a12.2
        for <usrp-users@lists.ettus.com>; Sun, 17 May 2026 12:21:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779045685; cv=none;
        d=google.com; s=arc-20240605;
        b=C4iRQem8vMHijJum4DlYV/Fp+9HXte4mG3HW17L5/treaFxEK364EDvIeBIOznXgLz
         VtLhbmEAuM9m8aPosmv1acGI2vy3sC6SSAI5Ty0f19sXzWdxeF0FPynSilu1kV6TZe0+
         3pqFgc4FsAnd4ouG72Oe/QPjqscat6tXWE34n0K9I+wmNy4dFBdFwzp8OkFhDEqzYCNu
         0oumMjX0PKRddosoU6auBGNLWNLnZlPM93XrmKEm6kqBF7EApSS/QAisAvcVjS58JxI2
         tQ2+n4dKg6zEG+5ps4gy8raXOH9RO1DSyz0SafMoF5I3SVFe0MnEeA+bK1LkyxYSUhqb
         oIuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=LXMlxmWyoEHLOUUy9kJfmE+401zFh+zngo3VRAJhCyk=;
        fh=vj2MHvLR32WxuQprBUVL44zYYgIQJclnSJ8R0m0Tg2M=;
        b=i0YRIIys86vgR24e9OxumOiTtJ1nVqXZWNl/ODyXwkhaOm70x2E1I1kknu40ausrgo
         +ZsVUYOsUsipPFiUxviKRI6fiChbbU6fo6rVWn187+XSe0WlDIYwqNbNrnH/XyX+wNua
         MctOtQE1bdXWmtf/wa/Eab3nwmRYDXAKfGFsVmtaFnrCKL5kMer5DTlbHR/pS8eVp6eC
         pxeXe49oWLMbOWX0fK7RuSWUV6mZ1/eSyZKvz+hbsJEV4jmbWC+fil4WOzp7FGAi4F5b
         mvSPuhm4KI7zg+OP+ykDo1kbn7GNypuwSf8fd9en133ud+fuSz8Aj58fzQzJKBH1MIrf
         c5dA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gnuradio-org.20251104.gappssmtp.com; s=20251104; t=1779045685; x=1779650485; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LXMlxmWyoEHLOUUy9kJfmE+401zFh+zngo3VRAJhCyk=;
        b=km4W3ytWclStcQcq7PpoBqeRv3FZ+0miyFnm9Ks1mzOtNkNRU/hccFou1oNoPFNT7Q
         B5hhOk+sp0sJJMucLesQLC0ZCZQPwHiWjTC+/zfGVKFoQfvbZ9yIxS9ky2p2MwwxK/hR
         lCbUbn289MJOXg3IL3snRynuvrUi7OxA8s8W3pdtO3Dey2jfbLIU412C5tFGFI0EYxq7
         GB4i+lrHyDXAxR+7d0JrSIeLdRfPDVYpAO0X3+l1VZqJFo/M7DobgGzmFFoja88B3kon
         xpMeEwykIFPjFXlhSCqbEsQdbmxbOBbxJD3QVxTN5BESVyd8jIV5UY8nyRiTKfS0Welz
         Z+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779045685; x=1779650485;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LXMlxmWyoEHLOUUy9kJfmE+401zFh+zngo3VRAJhCyk=;
        b=LsiNNUz9NULkoROScrZBfbtb7XyMWi+8WN2kRI3hs+fUarqAJmzuDEhwLhTusqxBcZ
         HrlIUJpdH6KoErymdLEArfe4aZZsNZfGDlbD8marjSjM9QgFQNOSSjZNio49UeKasUza
         nVrgC1s3EKGKBU9XNbb97VDzdIEvGN2x2vAhObhrzliX1p9iGdrTMEbj/JsCwccsSk4t
         iEnLtJ9s2O3PllftX6Rl+8vpOh5RQFtT2W3lpLpU+sZhSFIBvfVW7nUGXGiwqvJTwyE3
         C0uV022ZDmx+d4yIeq6vla04KPxa5MjQdPP/oqC20xyj3+H0dvaXvdR3WSM0sWevkfIS
         4g7g==
X-Gm-Message-State: AOJu0YwDYZAkQoFKdOdXwJvtbC/ZLo0cLZSoiaAIx2g3LvS2qIZ7G16E
	U7kFLEGgepD0qM+94Weaz5dHFvEqwdN6cA0CX/FAW210AN7IcD6NvCoCPJXcwUN7Q381URHVSAT
	3coIih2Fx5M6ZGYIjeuNWv43Mw88gBlRn44XpoP6qokdcr5Gby0g7FUs=
X-Gm-Gg: Acq92OEdA6asdkEnPjh4PFq3vAMoYeeXvteLtg0tb1ikK0jh6dAqd1j4TB4FB6BESjY
	8X2qHRu7A1KM9qJTHdGVa2M9kl7e7wyrB5OA80v82QxMhcAFNNxipRdYfZmAPK9pgQTOZuCED8O
	t007A2Jln2NdG16fDADCym607gzdfwaYjA/wN1wDjpcH34oQUBv6QpkFT3ocbrJUe1jGGIFZKsD
	VH46GRuPo6R49bjx1RuwyEZZee04Ec10URDwCfb2EOt4Ss3UtIu78IA0dZW5QcRMs9kvD6Cp7hX
	3bOwIxBuc9C85j3nZcTA2mokbz7Lno5S6EhOvsa63KLiyEiDIVqW
X-Received: by 2002:a05:6402:3719:b0:66c:17d5:c18f with SMTP id
 4fb4d7f45d1cf-683bd195cbamr5584973a12.21.1779045684486; Sun, 17 May 2026
 12:21:24 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@gnuradio.org>
Date: Sun, 17 May 2026 14:20:48 -0500
X-Gm-Features: AVHnY4IHiAnUlLlQP8afwrz0rzLHiH-vuJt9HeHFA-WHJEyG80TUBf4hxMCGDvU
Message-ID: <CAM=JgR6hOkWpWRoH0UTeKQwJd6GzwZhc7NoFfBnOMR1UiUZKFw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: RQ273S6GIDKWJUHUKDQOLJY6NR5DIQBR
X-Message-ID-Hash: RQ273S6GIDKWJUHUKDQOLJY6NR5DIQBR
X-MailFrom: neel.pandeya@gnuradio.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?GNU_Radio_Conference_=E2=80=94_September_21-24_=E2=80=94_NCSU_in_Raleigh=2C_North_Carolina=2C_USA?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RQ273S6GIDKWJUHUKDQOLJY6NR5DIQBR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2833672697173023590=="
X-Rspamd-Queue-Id: 8B302564392
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[gnuradio.org];
	R_DKIM_REJECT(0.00)[gnuradio-org.20251104.gappssmtp.com:s=20251104];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neel.pandeya@gnuradio.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,gnuradio-org.20251104.gappssmtp.com:-];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:email,gnuradio.org:email,gnuradio.org:url,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Action: no action

--===============2833672697173023590==
Content-Type: multipart/alternative; boundary="00000000000010349d0652085a3a"

--00000000000010349d0652085a3a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We=E2=80=99re excited to announce that GNU Radio Conference 2026 (GRCon26) =
will
take place September 21=E2=80=9324 in Raleigh, North Carolina, at the Talle=
y
Student Union.

GRCon26 is generously hosted by NC State, which is home to one of the four
NSF PAWR platforms, the AERPAW wireless research platform
<https://aerpaw.org/about/>.

------------------------------

Call for Participation =E2=80=93 Now Open

We invite you to submit talks, papers, workshops, tutorials, and demos for
GRCon25. Whether you're advancing research, deploying SDR systems in the
field, building open-source tools, or experimenting at home, we want to
hear from you.

   -

   Abstract submissions are due by June 13, 2026 -
   https://events.gnuradio.org/e/grcon26
   -

   We look forward to a broad range of topics to be submitted including SDR
   development, wireless systems, education, AI/ML, 5G/6G and beyond, radio
   astronomy, hardware integration, community projects, and more

------------------------------

Monday Workshop Day =E2=80=93 A Great Place to Start

GRCon26 will kick off with a special Workshop Day on Monday, September 21,
focused on a combination of of both beginner and advanced workshop topics

------------------------------

Registration Now Open

We=E2=80=99ve worked to make the conference as accessible as possible:

   -

   Student Registration: $100
   -

   Student Presenter Registration: Free
   -

   Standard Registration: $850
   -

   Discounted Registration for unaffiliated individuals: $400


Register Now - https://tickets.gnuradio.org/grcon26/

Registering early helps us plan and keeps costs as low as possible.

------------------------------

Becoming a GRCon Sponsor

We invite your organization to consider sponsoring this year=E2=80=99s conf=
erence!

If your organization uses GNU Radio - or your customers do - sponsoring
GRCon is a meaningful way to give back to the project and gain visibility
in a passionate, highly technical community.

See our sponsorship packages
<https://docs.google.com/document/d/e/2PACX-1vRHYFf3Hl7N5d6-nRUdKLqFCcBpdVe=
ok6kgFLMjEpOOKbjTcMW_R7GTqZ0PPBZH-8RxeipDb9uAVtsw/pub>
or email us sponsor@gnuradio.org

------------------------------

GRCon is where the SDR community gathers - from industry professionals to
academics to hobbyists. We look forward to learning from each other and
celebrating the work being done across the GNU Radio ecosystem.

If you have any questions, always feel free to contact us at
grcon@gnuradio.org.

See you in Raleigh,
The GRCon26 Organizing Team

--00000000000010349d0652085a3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif"><span style=3D"background-color:transparent;font-variant:normal=
;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);vertical-alig=
n:baseline;white-space:pre-wrap">We=E2=80=99re excited to announce that </s=
pan><span style=3D"background-color:transparent;font-variant:normal;font-si=
ze:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:700;verti=
cal-align:baseline;white-space:pre-wrap">GNU Radio Conference 2026 (GRCon26=
)</span><span style=3D"background-color:transparent;font-variant:normal;fon=
t-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);vertical-align:ba=
seline;white-space:pre-wrap"> will take place </span><span style=3D"backgro=
und-color:transparent;font-variant:normal;font-size:11pt;font-family:Arial,=
sans-serif;color:rgb(0,0,0);font-weight:700;vertical-align:baseline;white-s=
pace:pre-wrap">September 21=E2=80=9324</span><span style=3D"background-colo=
r:transparent;font-variant:normal;font-size:11pt;font-family:Arial,sans-ser=
if;color:rgb(0,0,0);vertical-align:baseline;white-space:pre-wrap"> in </spa=
n><span style=3D"background-color:transparent;font-variant:normal;font-size=
:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:700;vertica=
l-align:baseline;white-space:pre-wrap">Raleigh, North Carolina</span><span =
style=3D"background-color:transparent;font-variant:normal;font-size:11pt;fo=
nt-family:Arial,sans-serif;color:rgb(0,0,0);vertical-align:baseline;white-s=
pace:pre-wrap">, at the </span><span style=3D"background-color:transparent;=
font-variant:normal;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0=
,0,0);font-weight:700;vertical-align:baseline;white-space:pre-wrap">Talley =
Student Union</span><span style=3D"background-color:transparent;font-varian=
t:normal;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);verti=
cal-align:baseline;white-space:pre-wrap">.=C2=A0</span></div><p dir=3D"ltr"=
 style=3D"line-height:1.38;margin-top:12pt;margin-bottom:12pt"><span style=
=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background=
-color:transparent;font-variant:normal;vertical-align:baseline;white-space:=
pre-wrap">GRCon26 is generously hosted by NC State, which is home to one of=
 the four NSF PAWR platforms, the</span><a href=3D"https://aerpaw.org/about=
/" target=3D"_blank" style=3D"text-decoration:none"><span style=3D"font-siz=
e:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:trans=
parent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap"> <=
/span><span style=3D"font-size:11pt;font-family:Arial,sans-serif;background=
-color:transparent;font-weight:700;font-variant:normal;text-decoration:unde=
rline;vertical-align:baseline;white-space:pre-wrap">AERPAW wireless researc=
h platform</span></a><span style=3D"font-size:11pt;font-family:Arial,sans-s=
erif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vert=
ical-align:baseline;white-space:pre-wrap">.</span></p><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"></p><hr><p></p><h3 d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:14pt;margin-bottom:4pt"><sp=
an style=3D"font-size:13pt;font-family:Arial,sans-serif;color:rgb(0,0,0);ba=
ckground-color:transparent;font-variant:normal;vertical-align:baseline;whit=
e-space:pre-wrap">Call for Participation =E2=80=93 Now Open</span></h3><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:12pt;margin-bottom:12pt"><s=
pan style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);b=
ackground-color:transparent;font-variant:normal;vertical-align:baseline;whi=
te-space:pre-wrap">We invite you to submit talks, papers, workshops, tutori=
als, and demos for GRCon25. Whether you&#39;re advancing research, deployin=
g SDR systems in the field, building open-source tools, or experimenting at=
 home, we want to hear from you.</span></p><ul style=3D"margin-top:0px;marg=
in-bottom:0px"><li dir=3D"ltr" style=3D"margin-left:15px;list-style-type:di=
sc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-=
color:transparent;font-variant:normal;vertical-align:baseline;white-space:p=
re-wrap"><p dir=3D"ltr" role=3D"presentation" style=3D"line-height:1.38;mar=
gin-top:12pt;margin-bottom:0pt"><span style=3D"font-size:11pt;background-co=
lor:transparent;font-variant:normal;vertical-align:baseline">Abstract submi=
ssions are due by </span><span style=3D"font-size:11pt;background-color:tra=
nsparent;font-weight:700;font-variant:normal;vertical-align:baseline">June =
13, 2026 - </span><a href=3D"https://events.gnuradio.org/e/grcon26" target=
=3D"_blank" style=3D"text-decoration:none"><span style=3D"font-size:11pt;ba=
ckground-color:transparent;font-variant:normal;text-decoration:underline;ve=
rtical-align:baseline">https://events.gnuradio.org/e/grcon26</span></a><spa=
n style=3D"font-size:11pt;background-color:transparent;font-variant:normal;=
vertical-align:baseline">=C2=A0</span></p></li><li dir=3D"ltr" style=3D"mar=
gin-left:15px;list-style-type:disc;font-size:11pt;font-family:Arial,sans-se=
rif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;verti=
cal-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" role=3D"presentatio=
n" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:12pt"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant:normal;vertica=
l-align:baseline">We look forward to a broad range of topics to be submitte=
d including SDR development, wireless systems, education, AI/ML, 5G/6G and =
beyond, radio astronomy, hardware integration, community projects, and more=
</span></p></li></ul><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt"></p><hr><p></p><h3 dir=3D"ltr" style=3D"line-height:1.=
38;margin-top:14pt;margin-bottom:4pt"><span style=3D"font-size:13pt;font-fa=
mily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-va=
riant:normal;vertical-align:baseline;white-space:pre-wrap">Monday Workshop =
Day =E2=80=93 A Great Place to Start</span></h3><p dir=3D"ltr" style=3D"lin=
e-height:1.38;margin-top:12pt;margin-bottom:12pt"><span style=3D"font-size:=
11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpa=
rent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">GRCo=
n26 will kick off with a special </span><span style=3D"font-size:11pt;font-=
family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-=
weight:700;font-variant:normal;vertical-align:baseline;white-space:pre-wrap=
">Workshop Day</span><span style=3D"font-size:11pt;font-family:Arial,sans-s=
erif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vert=
ical-align:baseline;white-space:pre-wrap"> on Monday, September 21, focused=
 on a combination of of both beginner and advanced workshop topics</span></=
p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
"></p><hr><p></p><h3 dir=3D"ltr" style=3D"line-height:1.38;margin-top:14pt;=
margin-bottom:4pt"><span style=3D"font-size:13pt;font-family:Arial,sans-ser=
if;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vertic=
al-align:baseline;white-space:pre-wrap">Registration Now Open</span></h3><p=
 dir=3D"ltr" style=3D"line-height:1.38;margin-top:12pt;margin-bottom:12pt">=
<span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0)=
;background-color:transparent;font-variant:normal;vertical-align:baseline;w=
hite-space:pre-wrap">We=E2=80=99ve worked to make the conference as accessi=
ble as possible:</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"><=
li dir=3D"ltr" style=3D"margin-left:15px;list-style-type:disc;font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparen=
t;font-variant:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=
=3D"ltr" role=3D"presentation" style=3D"line-height:1.38;margin-top:12pt;ma=
rgin-bottom:0pt"><span style=3D"font-size:11pt;background-color:transparent=
;font-weight:700;font-variant:normal;vertical-align:baseline">Student<span =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"> </span><s=
pan class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">R</spa=
n>egistration:</span><span style=3D"font-size:11pt;background-color:transpa=
rent;font-variant:normal;vertical-align:baseline"> $100</span></p></li><li =
dir=3D"ltr" style=3D"margin-left:15px;list-style-type:disc;font-size:11pt;f=
ont-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;f=
ont-variant:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"=
ltr" role=3D"presentation" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt"><span style=3D"font-size:11pt;background-color:transparent;font=
-weight:700;font-variant:normal;vertical-align:baseline">Student Presenter<=
span class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"> </sp=
an><span class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">R=
</span>egistration:</span><span style=3D"font-size:11pt;background-color:tr=
ansparent;font-variant:normal;vertical-align:baseline"> Free</span></p></li=
><li dir=3D"ltr" style=3D"margin-left:15px;list-style-type:disc;font-size:1=
1pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpar=
ent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap"><p di=
r=3D"ltr" role=3D"presentation" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt"><span style=3D"font-size:11pt;background-color:transparent=
;font-weight:700;font-variant:normal;vertical-align:baseline">Standard <spa=
n class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">R</span>=
egistration</span><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant:normal;vertical-align:baseline">: $850</span></p></li><li di=
r=3D"ltr" style=3D"margin-left:15px;list-style-type:disc;font-size:11pt;fon=
t-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;fon=
t-variant:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"lt=
r" role=3D"presentation" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:12pt"><span style=3D"font-size:11pt;background-color:transparent;font-=
weight:700;font-variant:normal;vertical-align:baseline">Discounted <span cl=
ass=3D"gmail_default" style=3D"font-family:verdana,sans-serif">R</span>egis=
tration</span><span style=3D"font-size:11pt;background-color:transparent;fo=
nt-variant:normal;vertical-align:baseline"> for unaffiliated individuals: $=
400</span><span style=3D"font-size:11pt;background-color:transparent;font-v=
ariant:normal;vertical-align:baseline"><br><br></span></p></li></ul><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:12pt;margin-bottom:12pt"><spa=
n style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);bac=
kground-color:transparent;font-weight:700;font-variant:normal;text-decorati=
on:underline;vertical-align:baseline;white-space:pre-wrap">Register Now</sp=
an><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0=
,0);background-color:transparent;font-variant:normal;vertical-align:baselin=
e;white-space:pre-wrap"> - </span><a href=3D"https://tickets.gnuradio.org/g=
rcon26/" target=3D"_blank" style=3D"text-decoration:none"><span style=3D"fo=
nt-size:11pt;font-family:Arial,sans-serif;background-color:transparent;font=
-variant:normal;text-decoration:underline;vertical-align:baseline;white-spa=
ce:pre-wrap">https://tickets.gnuradio.org/grcon26/</span></a><span style=3D=
"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-co=
lor:transparent;font-variant:normal;vertical-align:baseline;white-space:pre=
-wrap">=C2=A0</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top=
:12pt;margin-bottom:12pt"><span style=3D"font-size:11pt;font-family:Arial,s=
ans-serif;color:rgb(0,0,0);background-color:transparent;font-variant:normal=
;vertical-align:baseline;white-space:pre-wrap">Registering early helps us p=
lan and keeps costs as low as possible.=C2=A0=C2=A0</span></p><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"></p><hr><p></=
p><h3 dir=3D"ltr" style=3D"line-height:1.38;margin-top:12pt;margin-bottom:1=
2pt"><span style=3D"font-size:13pt;font-family:Arial,sans-serif;color:rgb(0=
,0,0);background-color:transparent;font-variant:normal;vertical-align:basel=
ine;white-space:pre-wrap">Becoming a GRCon Sponsor</span></h3><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:12pt;margin-bottom:12pt"><span style=
=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background=
-color:transparent;font-variant:normal;vertical-align:baseline;white-space:=
pre-wrap">We invite your organization to consider sponsoring this year=E2=
=80=99s conference!</span></p><p dir=3D"ltr" style=3D"line-height:1.38;marg=
in-top:12pt;margin-bottom:12pt"><span style=3D"font-size:11pt;font-family:A=
rial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant:=
normal;vertical-align:baseline;white-space:pre-wrap">If your organization u=
ses GNU Radio - or your customers do - sponsoring GRCon is a meaningful way=
 to give back to the project and gain visibility in a passionate, highly te=
chnical community.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:12pt;margin-bottom:12pt"><span style=3D"font-size:11pt;font-family:Ar=
ial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant:n=
ormal;vertical-align:baseline;white-space:pre-wrap">See our </span><a href=
=3D"https://docs.google.com/document/d/e/2PACX-1vRHYFf3Hl7N5d6-nRUdKLqFCcBp=
dVeok6kgFLMjEpOOKbjTcMW_R7GTqZ0PPBZH-8RxeipDb9uAVtsw/pub" target=3D"_blank"=
 style=3D"text-decoration:none"><span style=3D"font-size:11pt;font-family:A=
rial,sans-serif;background-color:transparent;font-variant:normal;text-decor=
ation:underline;vertical-align:baseline;white-space:pre-wrap">sponsorship p=
ackages</span></a><span style=3D"font-size:11pt;font-family:Arial,sans-seri=
f;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vertica=
l-align:baseline;white-space:pre-wrap"> or email us </span><span style=3D"f=
ont-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-colo=
r:transparent;font-weight:700;font-variant:normal;vertical-align:baseline;w=
hite-space:pre-wrap"><a href=3D"mailto:sponsor@gnuradio.org" target=3D"_bla=
nk">sponsor@gnuradio.org</a></span></p><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt"></p><hr><p></p><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:12pt;margin-bottom:12pt"><span style=3D"fon=
t-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:=
transparent;font-variant:normal;vertical-align:baseline;white-space:pre-wra=
p">GRCon is where the SDR community gathers - from industry professionals t=
o academics to hobbyists. We look forward to learning from each other and c=
elebrating the work being done across the GNU Radio ecosystem.</span></p><p=
 dir=3D"ltr" style=3D"line-height:1.38;margin-top:12pt;margin-bottom:12pt">=
<span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0)=
;background-color:transparent;font-variant:normal;vertical-align:baseline;w=
hite-space:pre-wrap">If you have any questions, always feel free to contact=
 us at </span><span style=3D"font-size:11pt;font-family:Arial,sans-serif;co=
lor:rgb(0,0,0);background-color:transparent;font-weight:700;font-variant:no=
rmal;vertical-align:baseline;white-space:pre-wrap"><a href=3D"mailto:grcon@=
gnuradio.org" target=3D"_blank">grcon@gnuradio.org</a></span><span style=3D=
"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-co=
lor:transparent;font-variant:normal;vertical-align:baseline;white-space:pre=
-wrap">.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:12pt=
;margin-bottom:12pt"><span style=3D"font-size:11pt;font-family:Arial,sans-s=
erif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vert=
ical-align:baseline;white-space:pre-wrap">See you in Raleigh,</span><span s=
tyle=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgr=
ound-color:transparent;font-variant:normal;vertical-align:baseline;white-sp=
ace:pre-wrap"><br></span><span style=3D"font-size:11pt;font-family:Arial,sa=
ns-serif;color:rgb(0,0,0);background-color:transparent;font-weight:700;font=
-variant:normal;vertical-align:baseline;white-space:pre-wrap">The GRCon26 O=
rganizing Team</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:12pt;margin-bottom:12pt"><span style=3D"font-size:11pt;font-family:Arial,=
sans-serif;color:rgb(0,0,0);background-color:transparent;font-weight:700;fo=
nt-variant:normal;vertical-align:baseline;white-space:pre-wrap"><br></span>=
</p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:12pt;margin-bottom:=
12pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(=
0,0,0);background-color:transparent;font-weight:700;font-variant:normal;ver=
tical-align:baseline;white-space:pre-wrap"><br></span></p></div>

--00000000000010349d0652085a3a--

--===============2833672697173023590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2833672697173023590==--
