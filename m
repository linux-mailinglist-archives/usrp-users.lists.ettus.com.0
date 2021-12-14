Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 136C6474CBC
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 21:42:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE1FC3851F8
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 15:42:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RowMaOoM";
	dkim-atps=neutral
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 78A1D384829
	for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 15:41:28 -0500 (EST)
Received: by mail-ot1-f53.google.com with SMTP id r10-20020a056830080a00b0055c8fd2cebdso22276253ots.6
        for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 12:41:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nTnmYoP0lFaR/DNw10dRhoe/bnIwOExcQPbrYspd3Mk=;
        b=RowMaOoMh0ZI57SXQy3d8Y7myl3+Sq8HTCBNCqpv0mAhfzYs+YEBl5sTSvTVr5tNyM
         krdmACf59E9jDgLKymVHUTJMj4g2uZ1y6BSZvZgDw/8JY6o66crFrzHFeF01qQ0B5jW2
         59RCfTaMsIxNJFKDUIvHfN2rq5YzOiI9WKu+j48NCsGRC3lPu5zZfd7JB5FoWNwWMmNu
         E9QMaFHQ988qmJgd3RuBG8W1BQF+qthcpRoxECQQnF6TYPFBdjmV9mYUdSLxF1W34df6
         duPKA6Yh3Hq7S8fbPuyDAQB98Q5q5gC33knGlLUT8b+tFaks3xrvKN2uZ6Hv15kA/uWl
         k3ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nTnmYoP0lFaR/DNw10dRhoe/bnIwOExcQPbrYspd3Mk=;
        b=wnJqkEnm15igq1VxMG3uauCIAafw1PgHKx9g9WaTfcSKgRWOap1J3l3T7+q7tdwJfW
         jiJV72OjSJF3FS6W0NA9EZF7EEp1Z3nYcKdFLIUpzOHimSrrWLKQNaq7xmEOIgSUA/Eg
         lratFbZNFtUudzRMuSs0ut098riP5LzS80sjRqKSMl3HAmngaV+GyQPk6N3tLqsU7IiL
         qVNh7Kbrig6dgTHG3BuYA9xe+e3PA23cQjt/32nFZ7OFUWHB3Oq6OiiKRhXfj4pFCPvJ
         PmL2zo6rFu8OYLMyUBwzy7TiWgpM/JE6Ez3nhNPhV3OafZqG+r4SKxblksW3NkxHzIlD
         BvuQ==
X-Gm-Message-State: AOAM531jbzbhsElRlCUo8AI4WGgi0XrfbiZ5NadDIe7c8Z2hZKFc03xL
	hk0/8pD9tZzoZLGG9rLbHr6Ag7sYoKxbONuxQOLSRUmGBjI=
X-Google-Smtp-Source: ABdhPJyZQOEoTvv9brMQHt4pgb37RkBkQmnX43N2kr5DZmlBx+piMoL7DTVt4Gisr3VyaS0UWYxk/TSL1Vjra1NfrpM=
X-Received: by 2002:a9d:7d04:: with SMTP id v4mr6351112otn.180.1639514486385;
 Tue, 14 Dec 2021 12:41:26 -0800 (PST)
MIME-Version: 1.0
References: <CANP_axJMj3YB+vubEr0iTi5PLjwqGUoi7KnD3PfiJCqZOusG2g@mail.gmail.com>
 <bc67749c-2f81-9c2a-7498-6d4fe29e64a6@gmail.com> <CANP_axKSJZokaZmg=22Zcqi0Q0myAPM2p=z-csgqgChxmfB1Mg@mail.gmail.com>
 <b29847df-cd74-30fe-82be-e9bd5a3c2cfa@ettus.com>
In-Reply-To: <b29847df-cd74-30fe-82be-e9bd5a3c2cfa@ettus.com>
From: Temir Karakurum <temirkarakurum@gmail.com>
Date: Tue, 14 Dec 2021 23:41:15 +0300
Message-ID: <CANP_axJsUAxh+rppzZoBD8Ks8PDGqXS1SD1=n+8N-m915t975A@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID-Hash: EDB2G2Q47L3KCHJSGYIHNJTSZKVIM625
X-Message-ID-Hash: EDB2G2Q47L3KCHJSGYIHNJTSZKVIM625
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bias power on E312's RX ports (was: USRP and GPS antennas)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EDB2G2Q47L3KCHJSGYIHNJTSZKVIM625/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2732003264315340710=="

--===============2732003264315340710==
Content-Type: multipart/alternative; boundary="00000000000090b06205d3213684"

--00000000000090b06205d3213684
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

Thanks for pointing me to the schematic. I guess my final question is why
Ettus' official store recommends different antennas for different USRP
series.
For instance; datasheet of 3V GPS antenna (
https://www.ettus.com/wp-content/uploads/2019/01/Trimble_GPS_Antenna_DS.pdf=
)
for N-series (as well E310) states that it is compatible with 3 or 5 V
supply (15 mA typ. for 3V and 30 mA max for 5V). However, the store webpage
(https://www.ettus.com/all-products/gps-ant-3v/) states that this antenna*
is not* compatible with X and B series. Marcus Leech's previous reply
states that X and B bias-T's provide 5V supply so I am kind of confused
regarding the compatibility problem. Is it due to some current threshold?
If so, where can I find the specs regarding the aforementioned limits?

All the best,
Temir

On Tue, Dec 14, 2021 at 9:51 PM Marcus M=C3=BCller <marcus.mueller@ettus.co=
m>
wrote:

> Dear Temir,
>
> https://files.ettus.com/schematics/e310/ , the daughterboard schematic
> (e310_db.pdf), page
> 7: no, there's no biasing on the RF ports.
>
> Best regards,
>
> Marcus
>
> DISCLAIMER: Any attached Code is provided As Is. It has not been tested o=
r
> validated as a product, for use in a deployed application or system, or f=
or
> use in hazardous environments. You assume all risks for use of the Code.
> Use of the Code is subject to terms of the licenses to the UHD or RFNoC
> code with which the Code is used. Standard licenses to UHD and RFNoC can =
be
> found at https://www.ettus.com/sdr-software/licenses/.
>
> NI will only perform services based on its understanding and condition
> that the goods or services (i) are not for the use in the production or
> development of any item produced, purchased, or ordered by any entity wit=
h
> a footnote 1 designation in the license requirement column of Supplement
> No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
> company is not a party to the transaction.  If our understanding is
> incorrect, please notify us immediately because a specific authorization
> may be required from the U.S. Commerce Department before the transaction
> may proceed further.
>
> On 14.12.21 18:22, Temir Karakurum wrote:
> > Hi Marcus,
> >
> > Thanks for the quick reply! Is the bias-tee available only for the GPS
> port?
> > Can you similarly provide DC power to an LNA through the RF ports?
> >
> > Best,
> > Temir
> >
> > On Tue, Dec 14, 2021 at 8:17 PM Marcus D. Leech <patchvonbraun@gmail.co=
m>
> wrote:
> >
> >     On 2021-12-14 12:12, Temir Karakurum wrote:
> >>     Hi there,
> >>
> >>     A few months ago I ended up with a pair of USRP E312's and u-blox
> ANN-MB-00 GPS
> >>     antennas. I was able to synchronize both devices and acquire
> properly aligned
> >>     samples and things are looking good.
> >>
> >>     However, today I realized that the u-blox antenna I have is an
> active antenna and
> >>     checking its datasheet it looks like it requires 15 mA/3-5 V DC
> supply for the
> >>     integrated LNA. Does this mean that the GPS port of 312 has a
> bias-tee that
> >>     supplies the necessary currents? If there is a bias-tee, where can
> I find
> >>     information about it?
> >>
> >>     Also checking the Ettus store, it looks like different antennas ar=
e
> compatible with
> >>     different USRP models. For instance "3V Active GPS Antenna for N
> series" is
> >>     apparently compatible with E310 both not compatible with X and B
> series. Which
> >>     factor determines the compatibility?
> >>
> >>     Best regards,
> >>     Temir
> >>
> >>     _______________________________________________
> >>     USRP-users mailing list --usrp-users@lists.ettus.com
> >>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
> >     I think the bias-T on both X and B series puts out +5V. MOST GPS
> antennas are
> >     perfectly happy to deal with anywhere between 3-5V.
> >
> >     Nearly all GPS antennas these days are *active* antennas and MOST
> are 3-5V happy.
> >
> >
> >     _______________________________________________
> >     USRP-users mailing list -- usrp-users@lists.ettus.com
> >     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000090b06205d3213684
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi again,<div><br></div><div>Thanks for pointing me to the=
 schematic. I guess my final question is why Ettus&#39; official store reco=
mmends different antennas for different=C2=A0USRP series.</div><div>For ins=
tance; datasheet of 3V GPS antenna (<a href=3D"https://www.ettus.com/wp-con=
tent/uploads/2019/01/Trimble_GPS_Antenna_DS.pdf">https://www.ettus.com/wp-c=
ontent/uploads/2019/01/Trimble_GPS_Antenna_DS.pdf</a>) for N-series (as wel=
l E310) states that it is compatible with 3 or 5 V supply (15 mA typ. for 3=
V and 30 mA max for 5V). However, the store webpage (<a href=3D"https://www=
.ettus.com/all-products/gps-ant-3v/">https://www.ettus.com/all-products/gps=
-ant-3v/</a>) states that this antenna<b> is not</b> compatible with X and =
B series. Marcus Leech&#39;s previous reply states that X and B bias-T&#39;=
s provide 5V supply so I am kind of confused regarding the compatibility=C2=
=A0problem. Is it due to some current threshold? If so, where can I find th=
e specs regarding the aforementioned limits?</div><div><br></div><div>All t=
he best,</div><div>Temir</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Dec 14, 2021 at 9:51 PM Marcus M=C3=
=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Dear Temir,<br>
<br>
<a href=3D"https://files.ettus.com/schematics/e310/" rel=3D"noreferrer" tar=
get=3D"_blank">https://files.ettus.com/schematics/e310/</a> , the daughterb=
oard schematic (e310_db.pdf), page <br>
7: no, there&#39;s no biasing on the RF ports.<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at <a href=3D"https://www.ettus.com/sdr-software/licenses/" rel=3D"noref=
errer" target=3D"_blank">https://www.ettus.com/sdr-software/licenses/</a>.<=
br>
<br>
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.=C2=A0 If our understanding is incorrect, p=
lease notify us immediately because a specific authorization may be require=
d from the U.S. Commerce Department before the transaction may proceed furt=
her.<br>
<br>
On 14.12.21 18:22, Temir Karakurum wrote:<br>
&gt; Hi Marcus,<br>
&gt;<br>
&gt; Thanks for the quick reply! Is the bias-tee available only for the GPS=
 port?<br>
&gt; Can you similarly provide DC power to an LNA through the RF ports?<br>
&gt;<br>
&gt; Best,<br>
&gt; Temir<br>
&gt;<br>
&gt; On Tue, Dec 14, 2021 at 8:17 PM Marcus D. Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; =
wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 2021-12-14 12:12, Temir Karakurum wrote:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Hi there,<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0A few months ago I ended up with a pair of USRP=
 E312&#39;s and u-blox ANN-MB-00 GPS<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0antennas. I was able to synchronize both device=
s and acquire properly=C2=A0aligned<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0samples and things are looking=C2=A0good.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0However, today I realized that the u-blox anten=
na I have is an active antenna and<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0checking=C2=A0its datasheet=C2=A0it looks like =
it requires 15 mA/3-5 V DC supply for the<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0integrated LNA. Does this mean that the GPS por=
t of 312 has a bias-tee that<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0supplies the necessary currents? If there is a =
bias-tee, where can I find<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0information about it?<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Also checking the Ettus store, it looks like di=
fferent antennas are compatible with<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0different USRP models. For instance &quot;3V Ac=
tive GPS Antenna for N series&quot; is<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0apparently compatible with E310 both not compat=
ible with X and B series. Which<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0factor determines the compatibility?<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Best regards,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Temir<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________=
<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list --<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><b=
r>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0To unsubscribe send an email <a href=3D"mailto:=
tousrp-users-leave@lists.ettus.com" target=3D"_blank">tousrp-users-leave@li=
sts.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0I think the bias-T on both X and B series puts out =
+5V. MOST GPS antennas are<br>
&gt;=C2=A0 =C2=A0 =C2=A0perfectly happy to deal with anywhere between 3-5V.=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Nearly all GPS antennas these days are *active* ant=
ennas and MOST are 3-5V happy.<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list -- <a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.e=
ttus.com</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000090b06205d3213684--

--===============2732003264315340710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2732003264315340710==--
