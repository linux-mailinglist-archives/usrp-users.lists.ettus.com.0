Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B1C5AEF2C
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 17:44:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E877A380A98
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 11:44:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662479080; bh=SpkdHI8ZX6HRPeUltXlEQ4Lgey5utDOUtPVYgK9Q6mg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=abJSGgUhA8+470e1dp9bcg+s5Epf+9rNDvSNAPmNCogYv3DLUAiyhaXp3RXk3Kc/0
	 NQGVs9EtDRUzBqZ5k5BD5U8tLlEaXrchct9vRL/Q7Ic7ZeYn9iPetnaMkMQAK+przH
	 1AlSbPSbtPHPhOrjUIhbjkPVQnamIIpheSVgaZuEJAzUsMCDyWNbTeWwufKIzhN9ff
	 y9LzUbsmVg2hTeiMRXaXjKxWARRSRd2IRRvNl9rzR1aJ81S12OG8KIzLSb4CUCt3d7
	 IKm4NApSYGn7reeUL7r2AuY5pitROOX00dvP0ieEZUmJjcH21JFMXiNZqmZGaZlQbD
	 Jre24tm3X3cQg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCCEF380E91
	for <usrp-users@lists.ettus.com>; Tue,  6 Sep 2022 11:43:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662479033; bh=QbB6+YKADEIjcHXmfrg5GhQeCYDTtaOKpy8zUJljFLY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=CAg1fGuQk9jhxhgdOF9wZq5v6cbQmN7q68MVAwRTyNz7UayQ8dLJH8ZcDbKPlMOxr
	 1FLjs+Zlh0UUcoWtMlnPE0HXpEm1WYSmNVz9F8zIJyywiyLfyJdu2sl6sOqtuOyjv9
	 el0vG+AtxglVKnvWFtN8q/rlqIRuiS0ajPFIa69CFh54ABVY5MnernP0UYbJs8DzV7
	 mUaSHiSm5SIzH137AELUSXiYr8jHugv5CU4/mtkS8PTll2/RNA1wjGzW2p1kNu1c3F
	 Wfysggn6/p9kXQPRO1tj7QVtO4lEs9WlPPvvxUJ9GJ5A8w8+uwwN/Ob5wuSgs8ttq1
	 OBj5n245kbPEg==
Date: Tue, 6 Sep 2022 15:43:53 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <bh6GGucAyhBtb0RDYzoh2H7BfFNcxEwgdmnFuCY20@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a7671c21-f483-56a8-a1ca-9b1f7d524cf6@gmail.com
MIME-Version: 1.0
Message-ID-Hash: VUXM5PQILBZOLGIOBD563COHQAGCRRBZ
X-Message-ID-Hash: VUXM5PQILBZOLGIOBD563COHQAGCRRBZ
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VUXM5PQILBZOLGIOBD563COHQAGCRRBZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7825933806740524504=="

This is a multi-part message in MIME format.

--===============7825933806740524504==
Content-Type: multipart/alternative;
 boundary="b1_bh6GGucAyhBtb0RDYzoh2H7BfFNcxEwgdmnFuCY20"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bh6GGucAyhBtb0RDYzoh2H7BfFNcxEwgdmnFuCY20
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Marcus D. Leech wrote:

> On 2022-09-06 06:56, perper@o2.pl wrote:
>
> > Hi,
> >
> > Fruits aside, that was a valid question. Cause of bad performance whe=
n
> > combining DPDK with GNU Radio is a topic that needs to be addressed.
> >
> > My hypothesis regarding the cause was:
> >
> > DPDK needs few processor cores for itself only. GNU Radio runs a lot
> > of thread (one thread per block +) and it doesn=E2=80=99t care that i=
t tries
> > to run on cores that are busy with DPDK related work. And that causes
> > problems.
>
> I'll point out that at the end of the day, it's the *OS kernel* that
> makes thread scheduling decisions--the application can
> =C2=A0 give it hints (sometimes strong ones), but at the end of the day=
, the
> kernel assigns work to threads.=C2=A0=C2=A0 An application, per se,
> =C2=A0 doesn't "know" whether a given core is busy--it's not the one
> assigning work to cores...
>
> > The resulting solution that solved the problem for me:
> >
> > For every block of the flow-graph run set_processor_affinity with a
> > list of all processor cores minus DPDK cores, that you set in the
> > /etc/uhd/uhd.conf file.
> >
> > Best Regards,
> > Piotr Krysik
> >
> > ---
> >
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

I=E2=80=99ve described what solved the issue on my system, what was the a=
ssumed cause and what seemed to prove that assumption. I won=E2=80=99t gu=
arantee that my solution will work on any system, but the general idea th=
at =E2=80=9Cin order to make GNU Radio + UHD with DPDK work better you ha=
ve to isolate cores they are running on=E2=80=9D will probably prevail. T=
he method of isolation might change.

BTW finally I=E2=80=99ve gone through enough of DPDK=E2=80=99s gotchas to=
 make it work stably again on my systems. So the good news I=E2=80=99ll s=
top digging up configuration of DPDK publicly on the mailing-list. Even q=
uicker than I initially thought. Soon I=E2=80=99ll try describe my setup =
and steps I had to go through that are still in my memory. At least one i=
ssue that I=E2=80=99ve got to resolve wasn=E2=80=99t on the mailing-list =
and in the howtos.

Best Regards,\
Piotr Krysik

--b1_bh6GGucAyhBtb0RDYzoh2H7BfFNcxEwgdmnFuCY20
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Marcus D. Leech wrote:</p><blockquote><p>On 2022-09-06 06:56, perper@o=
2.pl wrote:</p><blockquote><p>Hi,</p><p>Fruits aside, that was a valid qu=
estion. Cause of bad performance when
combining DPDK with GNU Radio is a topic that needs to be addressed.</p><=
p>My hypothesis regarding the cause was:</p><p>DPDK needs few processor c=
ores for itself only. GNU Radio runs a lot
of thread (one thread per block +) and it doesn=E2=80=99t care that it tr=
ies
to run on cores that are busy with DPDK related work. And that causes
problems.</p></blockquote><p>I'll point out that at the end of the day, i=
t's the <em>OS kernel</em> that
makes thread scheduling decisions--the application can
&nbsp; give it hints (sometimes strong ones), but at the end of the day, =
the
kernel assigns work to threads.&nbsp;&nbsp; An application, per se,
&nbsp; doesn't "know" whether a given core is busy--it's not the one
assigning work to cores...</p><blockquote><p>The resulting solution that =
solved the problem for me:</p><p>For every block of the flow-graph run se=
t_processor_affinity with a
list of all processor cores minus DPDK cores, that you set in the
/etc/uhd/uhd.conf file.</p><p>Best Regards,
Piotr Krysik</p><div class=3D"" contenteditable=3D"false"><hr></div><p>US=
RP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p></blo=
ckquote></blockquote><p>I=E2=80=99ve described what solved the issue on m=
y system, what was the assumed cause and what seemed to prove that assump=
tion. I won=E2=80=99t guarantee that my solution will work on any system,=
 but the general idea that =E2=80=9Cin order to make GNU Radio + UHD with=
 DPDK work better you have to isolate cores they are running on=E2=80=9D =
will probably prevail. The method of isolation might change.</p><p>BTW fi=
nally I=E2=80=99ve gone through enough of DPDK=E2=80=99s gotchas to make =
it work stably again on my systems. So the good news I=E2=80=99ll stop di=
gging up configuration of DPDK publicly on the mailing-list. Even quicker=
 than I initially thought. Soon I=E2=80=99ll try describe my setup and st=
eps I had to go through that are still in my memory. At least one issue t=
hat I=E2=80=99ve got to resolve wasn=E2=80=99t on the mailing-list and in=
 the howtos.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_bh6GGucAyhBtb0RDYzoh2H7BfFNcxEwgdmnFuCY20--

--===============7825933806740524504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7825933806740524504==--
