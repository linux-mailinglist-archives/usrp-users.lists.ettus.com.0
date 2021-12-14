Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42296474CD2
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 21:55:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 885B1385366
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 15:55:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I80ukJyS";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id E8256385016
	for <USRP-users@lists.ettus.com>; Tue, 14 Dec 2021 15:54:34 -0500 (EST)
Received: by mail-qt1-f179.google.com with SMTP id q14so19694623qtx.10
        for <USRP-users@lists.ettus.com>; Tue, 14 Dec 2021 12:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=U+haECX4lGdIZEcJ6AHBfHblt1mm3YTG0vPTChmTh+4=;
        b=I80ukJySXtAM8qi2Geqrut33Wk0zj8wode9lk7jiFov1LJYDiAP9KeLxtLKoiCEkDT
         XosarZufxgHUAN7sG7K0rMU/HOPkq7IOSKt/xkROdxR0k8DyM7vDzlnS3E0gzUyx8pCi
         3VC0YJnMK/DDEDNWtTlMkoCZ5Kuwp96gtf8Ze1lF2DKtYV9lgCxlPd06WhE1xqYw5Ns7
         mSIyVFwHI3qx3o9AAgSbZbgKy9g3TtWk7QLKwJoAnw98/s0UUGdx7R5qTL6sV7IpCC8A
         exHW9I75HJL+Jbmc/G8cTwqlWDcKT4NkkX/8/3vygmSJD/3L3127RqlaJ9qIIifRbxLO
         I3YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=U+haECX4lGdIZEcJ6AHBfHblt1mm3YTG0vPTChmTh+4=;
        b=IMWG9htcZDQmhsi24ieBFWSc2f9XxQv0DxDo5rdL04K6x6KVsDwXaFcFV9uo4zygF4
         rHu1eFCLEfeHW0iJbYmvI8Kz7159WmHSeJe6HCFyrSrEn9pU7x3oCxcIhaZEMw5/k9YU
         xEpyC4kpH7V4ROA7RaPgsZI31E+UKoqMo0aOzwQVlEYYJa5kCLN+LzdagTIGKQvJbw+V
         yT3B+VvygVmE4warSaMi6A35lMZZ/fJnJ3ygSzApk+kGEkF2VyTI3eMFQVvFK7KWDadh
         oTn98ovgTwnUYCAMm2OKNkFNj4aa0Tpcfoa838S+8xbSWRmnGG3Eujmc+a1xrNrWNDGp
         ZgTw==
X-Gm-Message-State: AOAM533rUM+IX0xuFd6UsC0RRPyNdV49sbuU/tmfzFDPQKSRXRZvpWVO
	4h7a3VTokZXpxN5tP58DG1iHenv1IiJS+Q==
X-Google-Smtp-Source: ABdhPJzK8BXTyerB6XdlACM0foAqk9CcrE+Szu/5gDjnHKu16ADW8GYI160Ti+/5Am8HlEzj/UZqoQ==
X-Received: by 2002:a05:622a:19aa:: with SMTP id u42mr8856673qtc.443.1639515274240;
        Tue, 14 Dec 2021 12:54:34 -0800 (PST)
Received: from smtpclient.apple ([2605:b100:d43:4b1b:fd80:915d:2f5c:4b12])
        by smtp.gmail.com with ESMTPSA id k14sm596645qkh.100.2021.12.14.12.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Dec 2021 12:54:33 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 14 Dec 2021 15:54:32 -0500
Message-Id: <B6AB1F59-B0AB-434C-966C-1D88AA955709@gmail.com>
References: <CANP_axJsUAxh+rppzZoBD8Ks8PDGqXS1SD1=n+8N-m915t975A@mail.gmail.com>
In-Reply-To: <CANP_axJsUAxh+rppzZoBD8Ks8PDGqXS1SD1=n+8N-m915t975A@mail.gmail.com>
To: Temir Karakurum <temirkarakurum@gmail.com>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: 5XM26TDXTGPFYJGGK2V3YHUAMS6XJM7Y
X-Message-ID-Hash: 5XM26TDXTGPFYJGGK2V3YHUAMS6XJM7Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bias power on E312's RX ports (was: USRP and GPS antennas)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5XM26TDXTGPFYJGGK2V3YHUAMS6XJM7Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6561562959809029819=="


--===============6561562959809029819==
Content-Type: multipart/alternative; boundary=Apple-Mail-86F6A035-B660-4C5A-900D-6D78441F4A74
Content-Transfer-Encoding: 7bit


--Apple-Mail-86F6A035-B660-4C5A-900D-6D78441F4A74
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The X series and B series use the LC_XO series GPSDO modules  Jackson Labs.=20=


I=E2=80=99d look through the specs for those modules for any Current limits.=
=20

I=E2=80=99m literally underground in Toronto right now or I=E2=80=99d stuff t=
hose documents myself.=20

Sent from my iPhone

> On Dec 14, 2021, at 3:42 PM, Temir Karakurum <temirkarakurum@gmail.com> wr=
ote:
>=20
> =EF=BB=BF
> Hi again,
>=20
> Thanks for pointing me to the schematic. I guess my final question is why E=
ttus' official store recommends different antennas for different USRP series=
.
> For instance; datasheet of 3V GPS antenna (https://www.ettus.com/wp-conten=
t/uploads/2019/01/Trimble_GPS_Antenna_DS.pdf) for N-series (as well E310) st=
ates that it is compatible with 3 or 5 V supply (15 mA typ. for 3V and 30 mA=
 max for 5V). However, the store webpage (https://www.ettus.com/all-products=
/gps-ant-3v/) states that this antenna is not compatible with X and B series=
. Marcus Leech's previous reply states that X and B bias-T's provide 5V supp=
ly so I am kind of confused regarding the compatibility problem. Is it due t=
o some current threshold? If so, where can I find the specs regarding the af=
orementioned limits?
>=20
> All the best,
> Temir
>=20
>> On Tue, Dec 14, 2021 at 9:51 PM Marcus M=C3=BCller <marcus.mueller@ettus.=
com> wrote:
>> Dear Temir,
>>=20
>> https://files.ettus.com/schematics/e310/ , the daughterboard schematic (e=
310_db.pdf), page=20
>> 7: no, there's no biasing on the RF ports.
>>=20
>> Best regards,
>>=20
>> Marcus
>>=20
>> DISCLAIMER: Any attached Code is provided As Is. It has not been tested o=
r validated as a product, for use in a deployed application or system, or fo=
r use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code w=
ith which the Code is used. Standard licenses to UHD and RFNoC can be found a=
t https://www.ettus.com/sdr-software/licenses/.
>>=20
>> NI will only perform services based on its understanding and condition th=
at the goods or services (i) are not for the use in the production or develo=
pment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to P=
art 744, U.S. Export Administration Regulations and (ii) such a company is n=
ot a party to the transaction.  If our understanding is incorrect, please no=
tify us immediately because a specific authorization may be required from th=
e U.S. Commerce Department before the transaction may proceed further.
>>=20
>> On 14.12.21 18:22, Temir Karakurum wrote:
>> > Hi Marcus,
>> >
>> > Thanks for the quick reply! Is the bias-tee available only for the GPS p=
ort?
>> > Can you similarly provide DC power to an LNA through the RF ports?
>> >
>> > Best,
>> > Temir
>> >
>> > On Tue, Dec 14, 2021 at 8:17 PM Marcus D. Leech <patchvonbraun@gmail.co=
m> wrote:
>> >
>> >     On 2021-12-14 12:12, Temir Karakurum wrote:
>> >>     Hi there,
>> >>
>> >>     A few months ago I ended up with a pair of USRP E312's and u-blox A=
NN-MB-00 GPS
>> >>     antennas. I was able to synchronize both devices and acquire prope=
rly aligned
>> >>     samples and things are looking good.
>> >>
>> >>     However, today I realized that the u-blox antenna I have is an act=
ive antenna and
>> >>     checking its datasheet it looks like it requires 15 mA/3-5 V DC su=
pply for the
>> >>     integrated LNA. Does this mean that the GPS port of 312 has a bias=
-tee that
>> >>     supplies the necessary currents? If there is a bias-tee, where can=
 I find
>> >>     information about it?
>> >>
>> >>     Also checking the Ettus store, it looks like different antennas ar=
e compatible with
>> >>     different USRP models. For instance "3V Active GPS Antenna for N s=
eries" is
>> >>     apparently compatible with E310 both not compatible with X and B s=
eries. Which
>> >>     factor determines the compatibility?
>> >>
>> >>     Best regards,
>> >>     Temir
>> >>
>> >>     _______________________________________________
>> >>     USRP-users mailing list --usrp-users@lists.ettus.com
>> >>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>> >     I think the bias-T on both X and B series puts out +5V. MOST GPS an=
tennas are
>> >     perfectly happy to deal with anywhere between 3-5V.
>> >
>> >     Nearly all GPS antennas these days are *active* antennas and MOST a=
re 3-5V happy.
>> >
>> >
>> >     _______________________________________________
>> >     USRP-users mailing list -- usrp-users@lists.ettus.com
>> >     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> >
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-86F6A035-B660-4C5A-900D-6D78441F4A74
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The X series and B series use the LC_XO ser=
ies GPSDO modules &nbsp;Jackson Labs.&nbsp;<div><br></div><div>I=E2=80=99d l=
ook through the specs for those modules for any Current limits.&nbsp;</div><=
div><br></div><div>I=E2=80=99m literally underground in Toronto right now or=
 I=E2=80=99d stuff those documents myself.&nbsp;<br><div><br><div dir=3D"ltr=
">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On=
 Dec 14, 2021, at 3:42 PM, Temir Karakurum &lt;temirkarakurum@gmail.com&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF<div dir=3D"ltr">Hi again,<div><br></div><div>Thanks for pointing me t=
o the schematic. I guess my final question is why Ettus' official store reco=
mmends different antennas for different&nbsp;USRP series.</div><div>For inst=
ance; datasheet of 3V GPS antenna (<a href=3D"https://www.ettus.com/wp-conte=
nt/uploads/2019/01/Trimble_GPS_Antenna_DS.pdf">https://www.ettus.com/wp-cont=
ent/uploads/2019/01/Trimble_GPS_Antenna_DS.pdf</a>) for N-series (as well E3=
10) states that it is compatible with 3 or 5 V supply (15 mA typ. for 3V and=
 30 mA max for 5V). However, the store webpage (<a href=3D"https://www.ettus=
.com/all-products/gps-ant-3v/">https://www.ettus.com/all-products/gps-ant-3v=
/</a>) states that this antenna<b> is not</b> compatible with X and B series=
. Marcus Leech's previous reply states that X and B bias-T's provide 5V supp=
ly so I am kind of confused regarding the compatibility&nbsp;problem. Is it d=
ue to some current threshold? If so, where can I find the specs regarding th=
e aforementioned limits?</div><div><br></div><div>All the best,</div><div>Te=
mir</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Dec 14, 2021 at 9:51 PM Marcus M=C3=BCller &lt;<a href=3D"ma=
ilto:marcus.mueller@ettus.com">marcus.mueller@ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Dear Temir,<br>
<br>
<a href=3D"https://files.ettus.com/schematics/e310/" rel=3D"noreferrer" targ=
et=3D"_blank">https://files.ettus.com/schematics/e310/</a> , the daughterboa=
rd schematic (e310_db.pdf), page <br>
7: no, there's no biasing on the RF ports.<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
DISCLAIMER: Any attached Code is provided As Is. It has not been tested or v=
alidated as a product, for use in a deployed application or system, or for u=
se in hazardous environments. You assume all risks for use of the Code. Use o=
f the Code is subject to terms of the licenses to the UHD or RFNoC code with=
 which the Code is used. Standard licenses to UHD and RFNoC can be found at <=
a href=3D"https://www.ettus.com/sdr-software/licenses/" rel=3D"noreferrer" t=
arget=3D"_blank">https://www.ettus.com/sdr-software/licenses/</a>.<br>
<br>
NI will only perform services based on its understanding and condition that t=
he goods or services (i) are not for the use in the production or developmen=
t of any item produced, purchased, or ordered by any entity with a footnote 1=
 designation in the license requirement column of Supplement No. 4 to Part 7=
44, U.S. Export Administration Regulations and (ii) such a company is not a p=
arty to the transaction.&nbsp; If our understanding is incorrect, please not=
ify us immediately because a specific authorization may be required from the=
 U.S. Commerce Department before the transaction may proceed further.<br>
<br>
On 14.12.21 18:22, Temir Karakurum wrote:<br>
&gt; Hi Marcus,<br>
&gt;<br>
&gt; Thanks for the quick reply! Is the bias-tee available only for the GPS p=
ort?<br>
&gt; Can you similarly provide DC power to an LNA through the RF ports?<br>
&gt;<br>
&gt; Best,<br>
&gt; Temir<br>
&gt;<br>
&gt; On Tue, Dec 14, 2021 at 8:17 PM Marcus D. Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wr=
ote:<br>
&gt;<br>
&gt;&nbsp; &nbsp; &nbsp;On 2021-12-14 12:12, Temir Karakurum wrote:<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;Hi there,<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;A few months ago I ended up with a pair of USRP E=
312's and u-blox ANN-MB-00 GPS<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;antennas. I was able to synchronize both devices=
 and acquire properly&nbsp;aligned<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;samples and things are looking&nbsp;good.<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;However, today I realized that the u-blox antenn=
a I have is an active antenna and<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;checking&nbsp;its datasheet&nbsp;it looks like i=
t requires 15 mA/3-5 V DC supply for the<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;integrated LNA. Does this mean that the GPS port=
 of 312 has a bias-tee that<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;supplies the necessary currents? If there is a b=
ias-tee, where can I find<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;information about it?<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;Also checking the Ettus store, it looks like dif=
ferent antennas are compatible with<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;different USRP models. For instance "3V Active G=
PS Antenna for N series" is<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;apparently compatible with E310 both not compati=
ble with X and B series. Which<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;factor determines the compatibility?<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;Best regards,<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;Temir<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;_______________________________________________<=
br>
&gt;&gt;&nbsp; &nbsp; &nbsp;USRP-users mailing list --<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>=

&gt;&gt;&nbsp; &nbsp; &nbsp;To unsubscribe send an email <a href=3D"mailto:t=
ousrp-users-leave@lists.ettus.com" target=3D"_blank">tousrp-users-leave@list=
s.ettus.com</a><br>
&gt;&nbsp; &nbsp; &nbsp;I think the bias-T on both X and B series puts out +=
5V. MOST GPS antennas are<br>
&gt;&nbsp; &nbsp; &nbsp;perfectly happy to deal with anywhere between 3-5V.<=
br>
&gt;<br>
&gt;&nbsp; &nbsp; &nbsp;Nearly all GPS antennas these days are *active* ante=
nnas and MOST are 3-5V happy.<br>
&gt;<br>
&gt;<br>
&gt;&nbsp; &nbsp; &nbsp;_______________________________________________<br>
&gt;&nbsp; &nbsp; &nbsp;USRP-users mailing list -- <a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&nbsp; &nbsp; &nbsp;To unsubscribe send an email to <a href=3D"mailto:us=
rp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ett=
us.com</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></body></html>=

--Apple-Mail-86F6A035-B660-4C5A-900D-6D78441F4A74--

--===============6561562959809029819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6561562959809029819==--
