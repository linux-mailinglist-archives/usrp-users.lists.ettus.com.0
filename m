Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB724C46A
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jun 2019 02:22:05 +0200 (CEST)
Received: from [::1] (port=60272 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdkq0-0000g6-AK; Wed, 19 Jun 2019 20:22:00 -0400
Received: from web-atmail2.tpgi.com.au ([203.12.160.131]:45589)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <gobbo@tpg.com.au>) id 1hdkpw-0000aK-8Y
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 20:21:56 -0400
Received: from localhost (localhost [127.0.0.1])
 by web-atmail2.tpgi.com.au (8.14.4/8.14.4) with ESMTP id x5K0L8iZ021704;
 Thu, 20 Jun 2019 10:21:09 +1000
Message-Id: <89fd7840a5b67527cbfe0709d2cbcf0ccc3c9311@new-postoffice.tpg.com.au>
To: "Jason Matusiak" <jason@gardettoengineering.com>,
 "Ettus List" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 7.2.0.14467
X-Originating-IP: 203.6.69.2
in-reply-to: <2ec7c512-449a-4d1b-8db7-5c0d013dba79@gardettoengineering.com>
Date: Thu, 20 Jun 2019 10:21:08 +1000
MIME-Version: 1.0
Subject: Re: [USRP-users] E320 with larger SD card
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Chris Gobbett via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Chris Gobbett <gobbo@tpg.com.au>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5272895431159910924=="
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

--===============5272895431159910924==
Content-Type: multipart/alternative;
 boundary="=_906ff1968deb6535ca880940016b5991"

--=_906ff1968deb6535ca880940016b5991
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0=0AMy understanding of the partiitons on the card are (in order);=
=0A=0AMender allows you to boot from one of the A/B partitions as your=
=0Aprimary filesystem (mounted as /), plus the persistent data (mounted=
=0Aas /home/ or /data or similar).=C2=A0=0AMy experience is if you perfo=
rm resizing while keeping the partitions=0Acontiguous (no free space bet=
ween them), and have the A and B=0Apartitions identical in size, it "jus=
t works". So my steps in the=0Aprevious reply would look like:=C2=A0 =C2=
=A0=C2=A0 # original image on large SD=0ACard=C2=A0 =C2=A0=C2=A0 # shift=
 persistent data to the end=C2=A0 =C2=A0=C2=A0 # maximise A/B=0Apartitio=
ns, keeping A and B the same size=0ARather than extending the data parti=
tion, I wanted to add new=0Alibraries and applications in /usr, which is=
 located on the A/B=0Apartitions. Hence my instructions involve me resiz=
ing those partitions=0Ainstead of the data partition.=C2=A0=0AIf you're=
 simply extending the size of the persistent data partition=0Awithout sh=
ifting it's start point (while leaving the other partitions=0Aalone) I'm=
 at a loss as to why it wouldn't work. But when you do this=0Ayou may ne=
ed some extra linux-fu to shift your new binary/library=0Alocations to t=
hat partition rather than the default /usr.=0ACheers,Chris=0A=0A----- Or=
iginal Message -----=0AFrom: "Jason Matusiak" =0ATo:"Chris Gobbett" =0AC=
c:"Ettus Mail List" =0ASent:Wed, 19 Jun 2019 23:12:40 +0000=0ASubject:Re=
: [USRP-users] E320 with larger SD card=0A=0AChris, thanks for the tips.=
=0A=0A So I put a fresh load on a card, then used gparted to extend the=
 data=0Apartition to fill things out. That isn't enough, and your instru=
ctions=0Acertainly show more steps. But I don't understand what you mean=
 with=0Athe partitions in the middle. =0A=0A I'll read up on Mender and=
 see if that answers it for me. Thanks=0Aagain. On Jun 19, 2019, at 6:56=
 PM, Chris Gobbett  wrote:  =C2=A0 =0A Hi Jason, =0A I've had luck with=
 the following:  - backup/clone the original SDCard=0Aimage to disk and/=
or larger SDCard (using dd or otherwise)  - on the=0Anew card, resize/sh=
ift the data partion to the end of the card (using=0Agparted)  - resize=
 the two filesystem/kernel partitions to fill in the=0Aempty space in th=
e middle, but they need to be the same size (using=0Agparted)  =0A Read=
 up on Mender for more info on the partition layout=0A(https://docs.mend=
er.io/1.7/devices/general-system-requirements#partition-layout).=0AIt's=
 a pain that they went with Mender for the default E320 card; it=0Acuts=
 the 'usable' file system space in half, at the benefit of having=0A2 in=
dependent filesystem partitions... I haven't had time to fiddle=0Aaround=
 and ditch the mender for a 'normal' partition layout, but I'd=0Aassume=
 it's possible.  =0A Cheers,  Chris  =0A=0A ----- Original Message -----=
 =0A From:  "Jason Matusiak"   =0ATo:  "Ettus Mail List"  =0ACc:  =0ASen=
t:  Wed, 19 Jun 2019 16:29:38 +0000 =0ASubject:  [USRP-users] E320 with=
 larger SD card =0A=0A=09I wanted to use a larger SD card than the one t=
hat as supplied, but I=0Aam having issues.=C2=A0 I loaded up the card, a=
nd then extended the data=0Apartition to use up the rest of the free spa=
ce (about 100GB).=C2=A0 But=0Athen it doesn't boot. =0A=0A=09I am wonder=
ing if the change to a partition size screwed up something=0Ain a config=
 file somewhere.=C2=A0 Is there a way to fix this without=0Arebuilding a=
 docker image?=C2=A0 I am using the UHD 3.14.0.0. that has the=0Asmaller=
 data partition (UHD 3.14.1.0 has a larger data partition, but=0Adoesn't=
 include any GR/python packages, so I need to use the older=0Aimage).=
 =0A=0A=09Thanks.      =0A=0ALinks:=0A------=0A[1] mailto:gobbo@tpg.com.=
au=0A

--=_906ff1968deb6535ca880940016b5991
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body style=3D"font-family: 'Helvetica Neue',Helvetica,Arial,sans-=
serif; font-size: 12px;">=C2=A0<br />My understanding of the partiitons=
 on the card are (in order);<div><br /><div>&lt;boot&gt;&lt;filesystem+k=
ernel A&gt;&lt;filesystem+kernel B&gt;&lt;persistent data&gt;&lt;empty s=
pace&gt;</div><div><br /></div><div>Mender allows you to boot from one o=
f the A/B partitions as your primary filesystem (mounted as /), plus the=
 persistent data (mounted as /home/ or /data or similar).=C2=A0</div><di=
v><br /></div><div>My experience is if you perform resizing while keepin=
g the partitions contiguous (no free space between them), and have the A=
 and B partitions identical in size, it "just works". So my steps in the=
 previous reply would look like:</div><div><div>=C2=A0 =C2=A0&lt;boot&gt=
;&lt;filesystem+kernel A&gt;&lt;filesystem+kernel B&gt;&lt;persistent da=
ta&gt;&lt;----------empty space---------------&gt;=C2=A0 # original imag=
e on large SD Card</div><div>=C2=A0 =C2=A0&lt;boot&gt;&lt;filesystem+ker=
nel A&gt;&lt;filesystem+kernel B&gt;&lt;-------------empty space--------=
----&gt;&lt;persistent data&gt;=C2=A0 # shift persistent data to the end=
</div><div>=C2=A0 =C2=A0&lt;boot&gt;&lt;----------filesystem+kernel A---=
------&gt;&lt;----------filesystem+kernel B---------&gt;&lt;persistent d=
ata&gt;=C2=A0 # maximise A/B partitions, keeping A and B the same size</=
div></div><div><br /></div><div>Rather than extending the data partition=
, I wanted to add new libraries and applications in /usr, which is locat=
ed on the A/B partitions. Hence my instructions involve me resizing thos=
e partitions instead of the data partition.=C2=A0</div><div><div><br /><=
/div><div>If you're simply extending the size of the persistent data par=
tition without shifting it's start point (while leaving the other partit=
ions alone) I'm at a loss as to why it wouldn't work. But when you do th=
is you may need some extra linux-fu to shift your new binary/library loc=
ations to that partition rather than the default /usr.</div><div><br /><=
/div><div>Cheers,</div><div>Chris<br /><blockquote><br />----- Original=
 Message -----<br /><div style=3D"width:100%;background:rgb(228,228,228)=
;"><div style=3D"font-weight:bold;">From:</div> "Jason Matusiak" &lt;jas=
on@gardettoengineering.com&gt;</div><br /><div style=3D"font-weight:bold=
;">To:</div>"Chris Gobbett" &lt;gobbo@tpg.com.au&gt;<br /><div style=3D"=
font-weight:bold;">Cc:</div>"Ettus Mail List" &lt;usrp-users@lists.ettus=
.com&gt;<br /><div style=3D"font-weight:bold;">Sent:</div>Wed, 19 Jun 20=
19 23:12:40 +0000<br /><div style=3D"font-weight:bold;">Subject:</div>Re=
: [USRP-users] E320 with larger SD card<br /><br /><br /><div>Chris, tha=
nks for the tips.<br /><br /></div>=0A<div>So I put a fresh load on a ca=
rd, then used gparted to extend the data partition to fill things out. T=
hat isn't enough, and your instructions certainly show more steps. But I=
 don't understand what you mean with the partitions in the middle.=0A<br=
 /><br /></div>=0A<div>I'll read up on Mender and see if that answers it=
 for me. Thanks again.</div>=0A<div class=3D"gmail_quote">On Jun 19, 201=
9, at 6:56 PM, Chris Gobbett &lt;<a href=3D"mailto:gobbo@tpg.com.au">gob=
bo@tpg.com.au</a>&gt; wrote:=0A<blockquote class=3D"gmail_quote" style=
=3D"margin:0pt 0pt 0pt .8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex;">=0A=C2=A0 <br />=0AHi Jason,=0A<div><br /></div>=0A<div>I'=
ve had luck with the following: </div>=0A<div>- backup/clone the origina=
l SDCard image to disk and/or larger SDCard (using dd or otherwise)=0A</=
div>=0A<div>- on the new card, resize/shift the data partion to the end=
 of the card (using gparted)=0A</div>=0A<div>- resize the two filesystem=
/kernel partitions to fill in the empty space in the middle, but they ne=
ed to be the same size (using gparted)=0A</div>=0A<div><br /></div>=0A<d=
iv>Read up on Mender for more info on the partition layout (https://docs=
.mender.io/1.7/devices/general-system-requirements#partition-layout). It=
's a pain that they went with Mender for the default E320 card; it cuts=
 the 'usable' file system space in half,=0A at the benefit of having 2 i=
ndependent filesystem partitions... I haven't had time to fiddle around=
 and ditch the mender for a 'normal' partition layout, but I'd assume it=
's possible.=0A</div>=0A<div><br /></div>=0A<div>Cheers, </div>=0A<div>C=
hris </div>=0A<div><br /><br /><blockquote><br />=0A----- Original Messa=
ge ----- <br /><div style=3D"width:100%;background:rgb(228,228,228);">=
=0A<div style=3D"font-weight:bold;">From: </div>=0A"Jason Matusiak" &lt;=
jason@gardettoengineering.com&gt; </div>=0A<br /><div style=3D"font-weig=
ht:bold;">To: </div>=0A"Ettus Mail List" &lt;usrp-users@lists.ettus.com&=
gt; <br /><div style=3D"font-weight:bold;">Cc: </div>=0A<br /><div style=
=3D"font-weight:bold;">Sent: </div>=0AWed, 19 Jun 2019 16:29:38 +0000 <b=
r /><div style=3D"font-weight:bold;">Subject: </div>=0A[USRP-users] E320=
 with larger SD card <br /><br /><br /><div style=3D"font-size:12pt;colo=
r:#000000;font-family:Calibri, Helvetica, sans-serif;" dir=3D"ltr">=0A<p=
 style=3D"margin-top:0;margin-bottom:0;">I wanted to use a larger SD car=
d than the one that as supplied, but I am having issues.=C2=A0 I loaded=
 up the card, and then extended the data partition to use up the rest of=
 the free space (about 100GB).=C2=A0 But then it doesn't=0A boot.</p>=0A=
<p style=3D"margin-top:0;margin-bottom:0;"><br /></p>=0A<p style=3D"marg=
in-top:0;margin-bottom:0;">I am wondering if the change to a partition s=
ize screwed up something in a config file somewhere.=C2=A0 Is there a wa=
y to fix this without rebuilding a docker image?=C2=A0 I am using the UH=
D 3.14.0.0. that has the smaller data=0A partition (UHD 3.14.1.0 has a l=
arger data partition, but doesn't include any GR/python packages<span st=
yle=3D"font-family:Calibri, Helvetica, sans-serif, EmojiFont, 'Apple Col=
or Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android=
 Emoji', EmojiSymbols;font-size:16px;">,=0A so I need to use the older i=
mage</span>).</p>=0A<p style=3D"margin-top:0;margin-bottom:0;"><br /></p=
>=0A<p style=3D"margin-top:0;margin-bottom:0;">Thanks.</p>=0A</div>=0A</=
blockquote>=0A</div>=0A</blockquote>=0A</div>=0A</blockquote></div></div=
></div></body></html>

--=_906ff1968deb6535ca880940016b5991--



--===============5272895431159910924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5272895431159910924==--


