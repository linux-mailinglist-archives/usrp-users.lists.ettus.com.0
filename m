Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 590B614F21C
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2020 19:23:30 +0100 (CET)
Received: from [::1] (port=43138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixaww-00060M-PW; Fri, 31 Jan 2020 13:23:26 -0500
Received: from mail-lf1-f41.google.com ([209.85.167.41]:37518)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mbraun@gnuradio.org>) id 1ixaws-0005vc-4B
 for usrp-users@lists.ettus.com; Fri, 31 Jan 2020 13:23:22 -0500
Received: by mail-lf1-f41.google.com with SMTP id b15so5550606lfc.4
 for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2020 10:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gnuradio-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=Iz5slXuWt5Qpc1ELDT/FhiRUN2MaPzE8rUQDInQUPmM=;
 b=iTUn4P3njdLHlcwTBQ2Ct75zOuAMZ4JHly1Y7Zq1sVQ41gB1c0uN+oZhRb1LR44cfB
 DpFhTD4wslfUj5oQl58rZiRDQPWd1bMqFZQjuUJdQnHZyTff0Qkl+AvXx1WbewxRSZK9
 nxlUFNR77YtfEAf9uJqPgaeiBOSbcQtd5LEnxx036ft3cZW2oB4t62NEFYI+AsLJ7dxm
 wNcjeQf0pRtyieb/GTlKBncBcL5aUnygN+5+/jIH9awFTFd1eSpOlsN5wRjJBV00VbL1
 10is6iGNy+uunMnfI3/UEfSkynkE5hK8TTZaV8XR63LADsSNTMCcdrISy9fj+1loZ5o/
 0isg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Iz5slXuWt5Qpc1ELDT/FhiRUN2MaPzE8rUQDInQUPmM=;
 b=kVEO2IIDyybj3JLt36B5rZJAqweUOCwpCSQCDt0mffWMIxnUwWJCSs2XMkM5co7WP3
 +9jjNpj9hsiNr4Sl2XEfubVX/SMojJmyBzBZ4/NDLpZY4qLLwBJugqgLbBuJ/aOyD98U
 vwzNJq3oukzUVxT3qX4q3cZfju13//UpIrgYcdLFEoW6U8Ik9nIOMM6DSZ4aatSamyFB
 L7CkeN/+KmsrNsVOjJvrG9vCPzFoV2SVkasVIZ9eEPSOagnChbh9EAHcHoORQrzWkTb+
 PkEEomy//Hcnr3V7/91llNgdPwZES6IrqPe+aVO9lhQXwteuXKUVYphTaZaEtx9KD2N3
 RpUQ==
X-Gm-Message-State: APjAAAWMGw+BmPR3VLiiqNPWG0zbPN13rxX+gSVRI79YgR59ZyiaQOgz
 eojCM9z7+1X64ryVHmZXzKMp3TCk4DUlFdmZR1nQcA==
X-Google-Smtp-Source: APXvYqyxP/p5B8n2bJLVOEUXmVhbWlKUDLSzQVzfkOpiMmkumHKRqII/1+NqZJt/c96HqNml2PW+3dsZzGDxepq+utE=
X-Received: by 2002:ac2:59dd:: with SMTP id x29mr6035931lfn.95.1580494960593; 
 Fri, 31 Jan 2020 10:22:40 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 31 Jan 2020 10:22:29 -0800
Message-ID: <CAH_xppFmW7dRBzPEdkDfgN3pk60f-J5Zj1QyBhFk2K7Az6ccDQ@mail.gmail.com>
To: discuss-gnuradio@gnu.org, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] GNU Radio Conference 2020: Call for Participation!
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin@gnuradio.org>
Content-Type: multipart/mixed; boundary="===============1548604163518868708=="
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

--===============1548604163518868708==
Content-Type: multipart/alternative; boundary="000000000000b21f2e059d73a837"

--000000000000b21f2e059d73a837
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

GRCon 2020 celebrates and showcases the substantial and remarkable progress
of GNU Radio over the past two decades. We invite developers and users from
the GNU Radio community to present your projects, presentations, papers,
posters, and problems at GNU Radio Conference 2020.

GRCon20 will be held September 14-18, 2020 in Charlotte, North Carolina,
USA. <http://localhost:1313/grcon/grcon20/charlotte>

You may make one or more submissions under the following categories for
presentation at GRCon. In addition to submitting a presentation, you may
submit a paper to the Technical Proceedings of GRCon20. You do not need to
submit a paper to the Proceedings in order to present at GRCon.
*Talks* are 30 minutes long, including 5 minutes reserved for audience
questions. Each presentation should be a slide-deck that can be shared
publicly (PDF) after the conference. Real-world results using GNU Radio and
hardware will be favored over simulation-only work.

Talks will be recorded and published on the GNU Radio YouTube channel after
the conference.

*Papers* can be submitted with or without a talk. Authors are encouraged to
attend the conference, but it is not a requirement for paper acceptance.
Detailed real-world results using GNU Radio are encouraged.

*Workshops* are 1=E2=80=934 hours long, and should have an educational or =
=E2=80=9CHow-To=E2=80=9D
approach, with a large hands on portion. If slides are used, they should be
publicly shareable (PDF) after the conference.

*Lightning Talks* are very concise (4-5 minutes), talks on topics of high
interest to GNU Radio users and developers, and provide a chance for new
presenters to share their use cases, projects or demos.

*Posters* can display any type of material that you believe is interesting
to the community, and while most posters are technical, they don=E2=80=99t =
have to
be.

To submit your content for the conference, visit the submission page for
more details and instructions:
https://www.gnuradio.org/grcon/grcon20/submit/

*Dates*

Submission deadlines are split into two rounds:

First round closes *17 April 2020*. Final round closes *1 September 2020*.

All contributions submitted by 17 April 2020 will get a final decisions of
acceptance by *29 June 2020*. All contributions submitted between 17 April
and 1 September will be accepted/rejected on a rolling basis. We do not
guarantee a notification deadline for submissions after 17 April.
Submissions for presentations may close sooner than 1 September if all
available speaker slots are taken.

If you have questions or need assistance with the submission system, or
have content that doesn't quite fit and you want to talk it over, please
email us at grcon@gnuradio.org.

If your submission is accepted, you *must* register for the conference or
your talk will be dropped from the schedule. Please use the speaker
registration in this case in order to lock in the regular price.

Please note that submitting a paper to the Technical Proceedings is *not*
required to submit a Talk, Tutorial, or Poster, but is *strongly*
encouraged. You also do *not* need to attend the conference to publish in
the Technical Proceedings.


We are looking forward to your submissions!

--The GNU Radio Conference Committee

--000000000000b21f2e059d73a837
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>GRCon 2020 celebrates and showcases the substantial and=
 remarkable progress of
GNU Radio over the past two decades. We invite developers and users from th=
e GNU
Radio community to present your projects, presentations, papers, posters, a=
nd
problems at GNU Radio Conference 2020. <br></p><p>GRCon20 will be held Sept=
ember 14-18, 2020 in Charlotte, North Carolina, USA.<a href=3D"http://local=
host:1313/grcon/grcon20/charlotte"></a></p><p>You may make one or more subm=
issions under the following categories for
presentation at GRCon. In addition to submitting a presentation, you may su=
bmit
a paper to the Technical Proceedings of GRCon20. You do not need to submit =
a
paper to the Proceedings in order to present at GRCon.</p><strong>Talks</st=
rong> are 30 minutes long, including 5 minutes reserved for audience
questions. Each presentation should be a slide-deck that can be shared publ=
icly
(PDF) after the conference. Real-world results using GNU Radio and hardware
will be favored over simulation-only work.
<p>Talks will be recorded and published on the GNU Radio YouTube channel af=
ter the
conference.</p>
<p><strong>Papers</strong> can be submitted with or without a talk.  Author=
s are encouraged to
attend the conference, but it is not a requirement for paper acceptance.
Detailed real-world results using GNU Radio are encouraged.</p>
<p><strong>Workshops</strong> are 1=E2=80=934 hours long, and should have a=
n educational or =E2=80=9CHow-To=E2=80=9D
approach, with a large hands on portion. If slides are used, they should be
publicly shareable (PDF) after the conference.</p>
<p><strong>Lightning Talks</strong> are very concise (4-5 minutes), talks o=
n topics of high
interest to GNU Radio users and developers, and provide a chance for new
presenters to share their use cases, projects or demos.</p>
<p><strong>Posters</strong> can display any type of material that you belie=
ve is interesting to
the community, and while most posters are technical, they don=E2=80=99t hav=
e to be.</p>
<p>To submit your content for the conference, visit the submission page for=
 more details and instructions: <a href=3D"https://www.gnuradio.org/grcon/g=
rcon20/submit/">https://www.gnuradio.org/grcon/grcon20/submit/</a></p><p><f=
ont size=3D"4"><b>Dates</b></font></p><p>Submission deadlines are split int=
o two rounds: <br></p><p>First round closes <strong>17 April 2020</strong>.=
  Final round closes <strong>1 September 2020</strong>.</p>
<p>All contributions submitted by 17 April 2020 will get a final decisions =
of
acceptance by <strong>29 June 2020</strong>. All contributions submitted be=
tween 17 April and 1 September will be
accepted/rejected on a rolling basis. We do not guarantee a notification
deadline for submissions after 17 April. Submissions for presentations may =
close
sooner than 1 September if all available speaker slots are taken. <br>
</p><p>If you have questions or need assistance with the submission system,=
 or have
content that doesn&#39;t quite fit and you want to talk it over, please ema=
il us at
<a href=3D"mailto:grcon@gnuradio.org"><code>grcon@gnuradio.org</code></a>.<=
/p>
<p>If your submission is accepted, you <strong>must</strong> register for t=
he conference or
your talk will be dropped from the schedule. Please use the speaker registr=
ation
in this case in order to lock in the regular price.</p>
<p>Please note that submitting a paper to the Technical Proceedings is <str=
ong>not</strong>
required to submit a Talk, Tutorial, or Poster, but is <strong>strongly</st=
rong> encouraged.
You also do <strong>not</strong> need to attend the conference to publish i=
n the Technical
Proceedings.</p><p><br></p><p>We are looking forward to your submissions!</=
p><p>--The GNU Radio Conference Committee<br></p></div>

--000000000000b21f2e059d73a837--


--===============1548604163518868708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1548604163518868708==--

