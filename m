Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9618948E7B9
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 10:42:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 686F5384A53
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 04:42:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=univ-ubs.fr header.i=@univ-ubs.fr header.b="GDGbVvVt";
	dkim-atps=neutral
Received: from smtpout02-ext4.partage.renater.fr (smtpout02-ext4.partage.renater.fr [194.254.241.31])
	by mm2.emwd.com (Postfix) with ESMTP id D38D13848E6
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 04:41:17 -0500 (EST)
Received: from zmtaout02.partage.renater.fr (zmtaout02.partage.renater.fr [194.254.241.30])
	by smtpout20.partage.renater.fr (Postfix) with ESMTP id 96B01BFC4E;
	Fri, 14 Jan 2022 10:41:13 +0100 (CET)
Received: from zmtaout02.partage.renater.fr (localhost [127.0.0.1])
	by zmtaout02.partage.renater.fr (Postfix) with ESMTPS id 8074620DD8;
	Fri, 14 Jan 2022 10:41:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zmtaout02.partage.renater.fr (Postfix) with ESMTP id 636CD20E4C;
	Fri, 14 Jan 2022 10:41:13 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zmtaout02.partage.renater.fr 636CD20E4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=univ-ubs.fr;
	s=17793E05-77B4-4C60-8F0C-0A8087DD0087; t=1642153273;
	bh=hjJlpazV7gwNjY8Yh10+X7j/9s3TzW1tsX2T/wkUngE=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=GDGbVvVtoHetjycDvR4ooBJj95yXXJ2qcG+Y7TqE2V8xDGZJKmPjRu4NuCAYPiiJB
	 WxFbmYTndZirvJJXLuVZLW/lMprDRiWzOVDswCTFTaqCWmGhZOwi7YmR/VNc74xE3H
	 2YLTjgQFSuaK373uAquzkOS4x7e1TkBfoh/xqZah4g4hfswh9tPkp29ANPvz7EtdRR
	 BH5HQi2Ev/wituyORgH63j7jG7rHLmqkw0gDnW4Ys6QYFzw4r818uel7F1DRdzGiwC
	 Q4bsnvWnfx8nITIcBwGwbtpwjTyeB4meGIH9RHbXQvJWK3urBxLtpVLreGqC2rxEaB
	 yJkPxVu4expmw==
X-Virus-Scanned: amavisd-new at zmtaout02.partage.renater.fr
Received: from zmtaout02.partage.renater.fr ([127.0.0.1])
	by localhost (zmtaout02.partage.renater.fr [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id hFFNoecjImb3; Fri, 14 Jan 2022 10:41:13 +0100 (CET)
Received: from [0.0.0.0] (unknown [194.254.241.251])
	by zmtaout02.partage.renater.fr (Postfix) with ESMTPA id 066B020DD8;
	Fri, 14 Jan 2022 10:41:12 +0100 (CET)
Message-ID: <932ad7c6-d1da-b50b-578e-a41ae1264329@univ-ubs.fr>
Date: Fri, 14 Jan 2022 10:41:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Wade Fife <wade.fife@ettus.com>
References: <7a0dba07-cfba-e011-e7d5-d0d7624a6218@univ-ubs.fr>
 <CAFche=gD4oH_m1FXzHPc8E5sgQNOZC_MGV4PoJvi+rX1Sf9wHQ@mail.gmail.com>
 <CAFche=iGqxswZJUA7+3_v46BParz5XXHMoxBiBh3L-+u+gpLSA@mail.gmail.com>
 <b116c657-2bcb-1a05-6999-90fc6033cc2b@univ-ubs.fr>
 <CAFche=iodxshymdbtviiMjSd30MRh9qJVu52Rc1Pqu0aVHF+XQ@mail.gmail.com>
From: Camille Moniere <camille.moniere@univ-ubs.fr>
X-Pep-Version: 2.1
In-Reply-To: <CAFche=iodxshymdbtviiMjSd30MRh9qJVu52Rc1Pqu0aVHF+XQ@mail.gmail.com>
X-Renater-Ptge-SpamState: clean
X-Renater-Ptge-SpamScore: -100
Message-ID-Hash: 3Q63WMRC3L62ML5MI44NDUNTICCYX3TO
X-Message-ID-Hash: 3Q63WMRC3L62ML5MI44NDUNTICCYX3TO
X-MailFrom: camille.moniere@univ-ubs.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fir Filter RFNoC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3Q63WMRC3L62ML5MI44NDUNTICCYX3TO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3669269420938249435=="

--===============3669269420938249435==
Content-Language: en-US
Content-Type: multipart/alternative; boundary="36883ccf26138dd369346e4d24ccdce1"

--36883ccf26138dd369346e4d24ccdce1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just a typo, I used firS in the file, and I change the first occurrence =20
while pasting the file, considering my use of fir0 in my
explanations.
There it is, with only fir0 (even if it does not change the initial issue=
):

=23 General parameters
=23 -----------------------------------------
schema: rfnoc=5Fimagebuilder=5Fargs=23 Identifier for the schema used to =
=20
validate this file
copyright: 'Camille Moni=C3=A8re'=23 Copyright information used in file h=
eaders
license: 'SPDX-License-Identifier: LGPL-3.0-or-later'=23 License =20
information used in file headers
version: '1.0'=23 =46ile version
rfnoc=5Fversion: '1.0'=23 R=46NoC protocol version
chdr=5Fwidth: 64=23 Bit width of the CHDR bus for this image
device: 'x310'
default=5Ftarget: 'X310=5FHG'
=23 A list of all stream endpoints in design
=23 ----------------------------------------
stream=5Fendpoints:
ep0: =23 Stream endpoint name
ctrl: True=23 Endpoint passes control traffic
data: True=23 Endpoint passes data traffic
buff=5Fsize: 0=23 Ingress buffer size for data
=23 A list of all NoC blocks in design
=23 ----------------------------------
noc=5Fblocks:
ddc0:
block=5Fdesc: 'ddc.yml'
parameters:
NUM=5FPORTS: 1
radio0:
block=5Fdesc: 'radio=5F2x64.yml'
parameters:
NUM=5FPORTS: 1
fir0:
block=5Fdesc: 'fir=5Ffilter.yml'
parameters:
NUM=5FPORTS: 1
COE=46=46=5FWIDTH: 16
NUM=5FCOE=46=46S: 21
COE=46=46S=5FVEC: =22=7B 16'h7=46=46=46, =7B320=7B1'b0=7D=7D =7D=22
RELOADABLE=5FCOE=46=46S: 1
SYMMETRIC=5FCOE=46=46S: 0
SKIP=5FZERO=5FCOE=46=46S: 0
USE=5FEMBEDDED=5FREGS=5FCOE=46=46S: 1
=23 A list of all static connections in design
=23 ------------------------------------------
=23 =46ormat: A list of connection maps (list of key-value pairs) with th=
e =20
following keys
=23 - srcblk =3D Source block to connect
=23 - srcport =3D Port on the source block to connect
=23 - dstblk =3D Destination block to connect
=23 - dstport =3D Port on the destination block to connect
connections:
=23 radio0 to ep0 - R=46A RX
- =7B srcblk: radio0, srcport: out=5F0, dstblk: ddc0, dstport: in=5F0=7D
- =7B srcblk: ddc0, srcport: out=5F0, dstblk: fir0, dstport: in=5F0=7D
- =7B srcblk: fir0, srcport: out=5F0, dstblk: ep0, dstport: in0=7D
=23 BSP Connections
- =7B srcblk: radio0, srcport: ctrl=5Fport, dstblk: =5Fdevice=5F, dstport=
: =20
ctrlport=5Fradio0=7D
- =7B srcblk: =5Fdevice=5F, srcport: x300=5Fradio0, dstblk: radio0, dstpo=
rt: =20
x300=5Fradio=7D
- =7B srcblk: =5Fdevice=5F, srcport: time=5Fkeeper, dstblk: radio0, dstpo=
rt: =20
time=5Fkeeper=7D
=23 A list of all clock domain connections in design
=23 ------------------------------------------
=23 =46ormat: A list of connection maps (list of key-value pairs) with th=
e =20
following keys
=23 - srcblk =3D Source block to connect (Always =22=5Fdevice=22=5F)
=23 - srcport =3D Clock domain on the source block to connect
=23 - dstblk =3D Destination block to connect
=23 - dstport =3D Clock domain on the destination block to connect
clk=5Fdomains:
- =7B srcblk: =5Fdevice=5F, srcport: radio, dstblk: radio0, dstport: radi=
o=7D
- =7B srcblk: =5Fdevice=5F, srcport: ce, dstblk: ddc0, dstport: ce=7D
- =7B srcblk: =5Fdevice=5F, srcport: ce, dstblk: fir0, dstport: ce=7D

On 1/13/22 18:30, Wade =46ife wrote:
> At a glance, the YML has both firS and fir0. I was expecting just =20
> fir0. But I also would have expected rfnoc=5Fimage=5Fbuilder to throw a=
n =20
> error for that.
>
> Wade
>
> On Thu, Jan 13, 2022 at 11:19 AM Camille Moniere =20
> <camille.moniere=40univ-ubs.fr> wrote:
>
>     Hi wade,
>
>     I had already linked the =46IR ce to the ce of the =5Fdevice=5F.
>
>     Also, this custom image aims only to receive data (so no duc nor
>     SEP for TX). I tried to free some space, considering only one
>     UBX-160 is available (so only 1 radio).
>     I have read in the R=46NoC guide that, for a device to host
>     communication, an ingress buffer of size 0 is possible, again to
>     free resources.
>     A big block is expected to be added in the future...
>
>     Here the YAML file I use with rfnoc=5Fimage=5Fbuilder:
>
>     =23 General parameters
>     =23 -----------------------------------------
>     schema: rfnoc=5Fimagebuilder=5Fargs=23 Identifier for the schema us=
ed to
>     validate this file
>     copyright: 'Camille Moni=C3=A8re'=23 Copyright information used in =
file
>     headers
>     license: 'SPDX-License-Identifier: LGPL-3.0-or-later'=23 License
>     information used in file headers
>     version: '1.0'=23 =46ile version
>     rfnoc=5Fversion: '1.0'=23 R=46NoC protocol version
>     chdr=5Fwidth: 64=23 Bit width of the CHDR bus for this image
>     device: 'x310'
>     default=5Ftarget: 'X310=5FHG'
>     =23 A list of all stream endpoints in design
>     =23 ----------------------------------------
>     stream=5Fendpoints:
>     ep0: =23 Stream endpoint name
>     ctrl: True=23 Endpoint passes control traffic
>     data: True=23 Endpoint passes data traffic
>     buff=5Fsize: 0=23 Ingress buffer size for data
>     =23 A list of all NoC blocks in design
>     =23 ----------------------------------
>     noc=5Fblocks:
>     ddc0:
>     block=5Fdesc: 'ddc.yml'
>     parameters:
>     NUM=5FPORTS: 1
>     radio0:
>     block=5Fdesc: 'radio=5F2x64.yml'
>     parameters:
>     NUM=5FPORTS: 1
>     fir0:
>     block=5Fdesc: 'fir=5Ffilter.yml'
>     parameters:
>     NUM=5FPORTS: 1
>     COE=46=46=5FWIDTH: 16
>     NUM=5FCOE=46=46S: 21
>     COE=46=46S=5FVEC: =22=7B 16'h7=46=46=46, =7B320=7B1'b0=7D=7D =7D=22=

>     RELOADABLE=5FCOE=46=46S: 1
>     SYMMETRIC=5FCOE=46=46S: 0
>     SKIP=5FZERO=5FCOE=46=46S: 0
>     USE=5FEMBEDDED=5FREGS=5FCOE=46=46S: 1
>     =23 A list of all static connections in design
>     =23 ------------------------------------------
>     =23 =46ormat: A list of connection maps (list of key-value pairs) w=
ith
>     the following keys
>     =23 - srcblk =3D Source block to connect
>     =23 - srcport =3D Port on the source block to connect
>     =23 - dstblk =3D Destination block to connect
>     =23 - dstport =3D Port on the destination block to connect
>     connections:
>     =23 radio0 to ep0 - R=46A RX
>     - =7B srcblk: radio0, srcport: out=5F0, dstblk: ddc0, dstport: in=5F=
0=7D
>     - =7B srcblk: ddc0, srcport: out=5F0, dstblk: firS, dstport: in=5F0=
=7D
>     - =7B srcblk: firS, srcport: out=5F0, dstblk: ep0, dstport: in0=7D
>     =23 BSP Connections
>     - =7B srcblk: radio0, srcport: ctrl=5Fport, dstblk: =5Fdevice=5F, d=
stport:
>     ctrlport=5Fradio0=7D
>     - =7B srcblk: =5Fdevice=5F, srcport: x300=5Fradio0, dstblk: radio0,=

>     dstport: x300=5Fradio=7D
>     - =7B srcblk: =5Fdevice=5F, srcport: time=5Fkeeper, dstblk: radio0,=

>     dstport: time=5Fkeeper=7D
>     =23 A list of all clock domain connections in design
>     =23 ------------------------------------------
>     =23 =46ormat: A list of connection maps (list of key-value pairs) w=
ith
>     the following keys
>     =23 - srcblk =3D Source block to connect (Always =22=5Fdevice=22=5F=
)
>     =23 - srcport =3D Clock domain on the source block to connect
>     =23 - dstblk =3D Destination block to connect
>     =23 - dstport =3D Clock domain on the destination block to connect
>     clk=5Fdomains:
>     - =7B srcblk: =5Fdevice=5F, srcport: radio, dstblk: radio0, dstport=
: radio=7D
>     - =7B srcblk: =5Fdevice=5F, srcport: ce, dstblk: ddc0, dstport: ce=7D=

>     - =7B srcblk: =5Fdevice=5F, srcport: ce, dstblk: firS, dstport: ce=7D=

>
>
>     I have tried in python and in C++, with UHD and directly with
>     R=46NoC API. None succeeded
>     =46or instance, this is what I do in Python:
>
>     importnumpy asnp
>     importscipy assp
>     importipywidgets aswidgets
>     importmatplotlib.pyplot asplt
>     importuhd
>     graph =3D
>     uhd.rfnoc.RfnocGraph(=22addr=3D192.168.10.2,dboard=5Fclock=5Frate=3D=
20e6=22)
>     radio=5Fcrtl =3D uhd.rfnoc.RadioControl(graph.get=5Fblock(=220/Radi=
o=230=22))
>     ddc=5Fcrtl =3D uhd.rfnoc.DdcBlockControl(graph.get=5Fblock(=220/DDC=
=230=22))
>     target=5Ffreq =3D 433e6
>     target=5Fgain =3D 25
>     target=5Frate =3D 1e6
>     radio=5Fcrtl.set=5Frx=5Fantenna('RX2', 0)
>     radio=5Fcrtl.get=5Frx=5Fantenna(0)
>     actual=5Fgain =3D radio=5Fcrtl.set=5Frx=5Fgain(target=5Fgain, 0)
>     actual=5Frf=5Ffreq =3D radio=5Fcrtl.set=5Frx=5Ffrequency(target=5Ff=
req, 0)
>     target=5Fdsp=5Ffreq =3D actual=5Frf=5Ffreq - target=5Ffreq
>     actual=5Fdsp=5Ffreq =3D ddc=5Fcrtl.set=5Ffreq(target=5Fdsp=5Ffreq, =
0)
>     clipped=5Frx=5Ffreq =3D actual=5Frf=5Ffreq - actual=5Fdsp=5Ffreq
>     actual=5Frate =3D ddc=5Fcrtl.set=5Foutput=5Frate(target=5Frate, 0)
>     fir=5Fstatic =3D
>     uhd.rfnoc.=46ir=46ilterBlockControl(graph.get=5Fblock(=220/=46IR=23=
0=22))
>     coefficients =3D fir=5Fstatic.get=5Fcoefficients()
>     fir=5Fstatic.set=5Fcoefficients(coefficients)
>     coefficients =3D fir=5Fstatic.get=5Fcoefficients()
>     plt.stem(coefficients)
>     plt.show()
>     stream=5Fargs =3D uhd.usrp.StreamArgs(=22fc32=22, =22sc16=22)
>     recv=5Fstream =3D graph.create=5Frx=5Fstreamer(1, stream=5Fargs)
>     graph.connect(radio=5Fcrtl.get=5Fblock=5Fid(), 0,
>     ddc=5Fcrtl.get=5Fblock=5Fid(), 0, =46alse)
>     graph.connect(ddc=5Fcrtl.get=5Fblock=5Fid(), 0,
>     fir=5Fstatic.get=5Fblock=5Fid(), 0, =46alse)
>     graph.connect(fir=5Fstatic.get=5Fblock=5Fid(), 0, recv=5Fstream, 0)=

>     graph.commit()
>     num=5Fsamps =3D int(1e6) =23 1 MB of data, be aware.
>     data =3D np.empty((num=5Fsamps), dtype=3Dnp.complex64)
>     md =3D uhd.types.RXMetadata()
>     stream=5Fcmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num=5Fdon=
e)
>     stream=5Fcmd.stream=5Fnow =3D True
>     stream=5Fcmd.num=5Fsamps =3D num=5Fsamps
>     stream=5Fcmd.time=5Fspec =3D uhd.types.TimeSpec(1, 0) =23 Wait 1s b=
efore
>     reception
>     recv=5Fstream.issue=5Fstream=5Fcmd(stream=5Fcmd)
>     received=5Fspls =3D recv=5Fstream.recv(data, md, 3.)
>     print(f'Received =7Bfloat(received=5Fspls):.2e=7Dsamples')
>     ifmd.error=5Fcode =21=3D md.error=5Fcode.none:
>     print(f'=5C033=5B1;31m=5BERROR=5D=5C033=5B0m =7Bmd.strerror()=7D')
>     else:
>     print(f'Everything went well.')
>
>     Without the =46ir (and adapting the code of course), I get my 1e6
>     data buffer.
>
>     Is there an error I miss, or have I made too much space, deleting
>     important part in the process=3F
>
>     On 1/13/22 17:08, Wade =46ife wrote:
>>     In particular, make sure you have a clock connected to the CE
>>     input of the =46IR filter. Something like this in your clk=5Fdomai=
ns
>>     section:
>>
>>     clk=5Fdomains:
>>     =C2=A0 =C2=A0 - =7B srcblk: =5Fdevice=5F, srcport: ce, dstblk: fir=
0, dstport: ce =7D
>>
>>     Wade
>>
>>     On Thu, Jan 13, 2022 at 10:04 AM Wade =46ife <wade.fife=40ettus.co=
m>
>>     wrote:
>>
>>         Hi Camille,
>>
>>         Maybe you could share your R=46NoC YML file and someone could
>>         take a look=3F There might be something wrong there.
>>
>>         Wade
>>
>>         On Thu, Jan 13, 2022 at 8:32 AM Camille Moniere
>>         <camille.moniere=40univ-ubs.fr> wrote:
>>
>>             Hello everyone,
>>
>>             I unsuccessfully try to use the =46IR =46ilter R=46NoC blo=
ck in
>>             reception, in
>>             an USRP X310 with a UBX-160 daughterboard on-board.
>>             I have tested several topology for the custom image
>>             (radio0 - > ddc0 ->
>>             fir0 -> ep0 =7C=7C radio0 -> ddc0 -> ep0 + ep1 -> fir0 + f=
ir0
>>             -> ep1, for
>>             example),
>>             with several parameter for the filter (With or without
>>             re-loadable
>>             coefficients, with or without embedded DSP registers, 21
>>             coef' instead
>>             of 41 ...) but it ultimately
>>             always fails the same way.
>>             When the =46IR is used, I can't retrieve any data. I got a=
n
>>             Overflow
>>             error, without receiving any samples. Sometimes, I even
>>             got a =22Late
>>             Command=22 error, even when using=C2=A0 R=46NoC in C++
>>             (graph committed immediately before the stream now
>>             stream=5Fcmd).
>>
>>             =46or the record, the center frequency is 433 MHz for a
>>             sampling rate of 1
>>             Msps.
>>
>>             I assumed the filter output one complex sample (sc16) for
>>             each new input
>>             (sc16 too). Am I wrong=3F Or is there specific setup I hav=
e
>>             forgotten=3F
>>             Has someone successfully used this block, and can provide
>>             an example or
>>             tutorial=3F
>>
>>             Regards,
>>
>>             Camille
>>             =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F
>>             USRP-users mailing list -- usrp-users=40lists.ettus.com
>>             To unsubscribe send an email to
>>             usrp-users-leave=40lists.ettus.com
>>
>

--36883ccf26138dd369346e4d24ccdce1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D=22Content-Type=22 content=3D=22text/html; charset=
=3DUT=46-8=22>
  </head>
  <body>
    Just a typo, I used firS in the file, and I change the first
    occurrence while pasting the file, considering my use of <tt>fir0</tt=
>
    in my<br>
    explanations. <br>
    There it is, with only <tt>fir0</tt> (even if it does not change
    the initial issue):<br>
    <br>
    <div style=3D=22color: =23d4d4d4;background-color: =231e1e1e;font-fam=
ily: 'Droid Sans Mono =46or Powerline', 'Droid Sans Mono', 'monospace', m=
onospace, 'Droid Sans =46allback';font-weight: normal;font-size: 14px;lin=
e-height: 19px;white-space: pre;=22><div><span style=3D=22color: =236a995=
5;=22>=23 General parameters</span></div><div><span style=3D=22color: =23=
6a9955;=22>=23 -----------------------------------------</span></div><div=
><span style=3D=22color: =23569cd6;=22>schema</span><span style=3D=22colo=
r: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>rfnoc=5Fi=
magebuilder=5Fargs</span><span style=3D=22color: =23d4d4d4;=22>          =
             </span><span style=3D=22color: =236a9955;=22>=23 Identifier =
for the schema used to validate this file</span></div><div><span style=3D=
=22color: =23569cd6;=22>copyright</span><span style=3D=22color: =23d4d4d4=
;=22>: </span><span style=3D=22color: =23ce9178;=22>'Camille Moni=C3=A8re=
'</span><span style=3D=22color: =23d4d4d4;=22>                          <=
/span><span style=3D=22color: =236a9955;=22>=23 Copyright information use=
d in file headers</span></div><div><span style=3D=22color: =23569cd6;=22>=
license</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=
=22color: =23ce9178;=22>'SPDX-License-Identifier: LGPL-3.0-or-later'</spa=
n><span style=3D=22color: =23d4d4d4;=22> </span><span style=3D=22color: =23=
6a9955;=22>=23 License information used in file headers</span></div><div>=
<span style=3D=22color: =23569cd6;=22>version</span><span style=3D=22colo=
r: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>'1.0'</sp=
an><span style=3D=22color: =23d4d4d4;=22>                                =
        </span><span style=3D=22color: =236a9955;=22>=23 =46ile version</=
span></div><div><span style=3D=22color: =23569cd6;=22>rfnoc=5Fversion</sp=
an><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color:=
 =23ce9178;=22>'1.0'</span><span style=3D=22color: =23d4d4d4;=22>        =
                          </span><span style=3D=22color: =236a9955;=22>=23=
 R=46NoC protocol version</span></div><div><span style=3D=22color: =23569=
cd6;=22>chdr=5Fwidth</span><span style=3D=22color: =23d4d4d4;=22>: </span=
><span style=3D=22color: =23b5cea8;=22>64</span><span style=3D=22color: =23=
d4d4d4;=22>                                        </span><span style=3D=22=
color: =236a9955;=22>=23 Bit width of the CHDR bus for this image</span><=
/div><div><span style=3D=22color: =23569cd6;=22>device</span><span style=3D=
=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>'x=
310'</span></div><div><span style=3D=22color: =23569cd6;=22>default=5Ftar=
get</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22=
color: =23ce9178;=22>'X310=5FHG'</span></div>
<div><span style=3D=22color: =236a9955;=22>=23 A list of all stream endpo=
ints in design</span></div><div><span style=3D=22color: =236a9955;=22>=23=
 ----------------------------------------</span></div><div><span style=3D=
=22color: =23569cd6;=22>stream=5Fendpoints</span><span style=3D=22color: =
=23d4d4d4;=22>:</span></div><div><span style=3D=22color: =23d4d4d4;=22>  =
</span><span style=3D=22color: =23569cd6;=22>ep0</span><span style=3D=22c=
olor: =23d4d4d4;=22>:                       </span><span style=3D=22color=
: =236a9955;=22>=23 Stream endpoint name</span></div><div><span style=3D=22=
color: =23d4d4d4;=22>    </span><span style=3D=22color: =23569cd6;=22>ctr=
l</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22c=
olor: =23569cd6;=22>True</span><span style=3D=22color: =23d4d4d4;=22>    =
                  </span><span style=3D=22color: =236a9955;=22>=23 Endpoi=
nt passes control traffic</span></div><div><span style=3D=22color: =23d4d=
4d4;=22>    </span><span style=3D=22color: =23569cd6;=22>data</span><span=
 style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23569c=
d6;=22>True</span><span style=3D=22color: =23d4d4d4;=22>                 =
     </span><span style=3D=22color: =236a9955;=22>=23 Endpoint passes dat=
a traffic</span></div><div><span style=3D=22color: =23d4d4d4;=22>    </sp=
an><span style=3D=22color: =23569cd6;=22>buff=5Fsize</span><span style=3D=
=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23b5cea8;=22>0<=
/span><span style=3D=22color: =23d4d4d4;=22>                    </span><s=
pan style=3D=22color: =236a9955;=22>=23 Ingress buffer size for data</spa=
n></div>
<div><span style=3D=22color: =236a9955;=22>=23 A list of all NoC blocks i=
n design</span></div><div><span style=3D=22color: =236a9955;=22>=23 -----=
-----------------------------</span></div><div><span style=3D=22color: =23=
569cd6;=22>noc=5Fblocks</span><span style=3D=22color: =23d4d4d4;=22>:</sp=
an></div><div><span style=3D=22color: =23d4d4d4;=22>  </span><span style=3D=
=22color: =23569cd6;=22>ddc0</span><span style=3D=22color: =23d4d4d4;=22>=
:</span></div><div><span style=3D=22color: =23d4d4d4;=22>    </span><span=
 style=3D=22color: =23569cd6;=22>block=5Fdesc</span><span style=3D=22colo=
r: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>'ddc.yml'=
</span></div><div><span style=3D=22color: =23d4d4d4;=22>    </span><span =
style=3D=22color: =23569cd6;=22>parameters</span><span style=3D=22color: =
=23d4d4d4;=22>:</span></div><div><span style=3D=22color: =23d4d4d4;=22>  =
    </span><span style=3D=22color: =23569cd6;=22>NUM=5FPORTS</span><span =
style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23b5cea=
8;=22>1</span></div><div><span style=3D=22color: =23d4d4d4;=22>  </span><=
span style=3D=22color: =23569cd6;=22>radio0</span><span style=3D=22color:=
 =23d4d4d4;=22>:</span></div><div><span style=3D=22color: =23d4d4d4;=22> =
   </span><span style=3D=22color: =23569cd6;=22>block=5Fdesc</span><span =
style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce917=
8;=22>'radio=5F2x64.yml'</span></div><div><span style=3D=22color: =23d4d4=
d4;=22>    </span><span style=3D=22color: =23569cd6;=22>parameters</span>=
<span style=3D=22color: =23d4d4d4;=22>:</span></div><div><span style=3D=22=
color: =23d4d4d4;=22>      </span><span style=3D=22color: =23569cd6;=22>N=
UM=5FPORTS</span><span style=3D=22color: =23d4d4d4;=22>: </span><span sty=
le=3D=22color: =23b5cea8;=22>1</span></div><div><span style=3D=22color: =23=
d4d4d4;=22>  </span><span style=3D=22color: =23569cd6;=22>fir0</span><spa=
n style=3D=22color: =23d4d4d4;=22>:</span></div><div><span style=3D=22col=
or: =23d4d4d4;=22>    </span><span style=3D=22color: =23569cd6;=22>block=5F=
desc</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22=
color: =23ce9178;=22>'fir=5Ffilter.yml'</span></div><div><span style=3D=22=
color: =23d4d4d4;=22>    </span><span style=3D=22color: =23569cd6;=22>par=
ameters</span><span style=3D=22color: =23d4d4d4;=22>:</span></div><div><s=
pan style=3D=22color: =23d4d4d4;=22>      </span><span style=3D=22color: =
=23569cd6;=22>NUM=5FPORTS</span><span style=3D=22color: =23d4d4d4;=22>: <=
/span><span style=3D=22color: =23b5cea8;=22>1</span></div><div><span styl=
e=3D=22color: =23d4d4d4;=22>      </span><span style=3D=22color: =23569cd=
6;=22>COE=46=46=5FWIDTH</span><span style=3D=22color: =23d4d4d4;=22>: </s=
pan><span style=3D=22color: =23b5cea8;=22>16</span></div><div><span style=
=3D=22color: =23d4d4d4;=22>      </span><span style=3D=22color: =23569cd6=
;=22>NUM=5FCOE=46=46S</span><span style=3D=22color: =23d4d4d4;=22>: </spa=
n><span style=3D=22color: =23b5cea8;=22>21</span></div><div><span style=3D=
=22color: =23d4d4d4;=22>      </span><span style=3D=22color: =23569cd6;=22=
>COE=46=46S=5FVEC</span><span style=3D=22color: =23d4d4d4;=22>: </span><s=
pan style=3D=22color: =23ce9178;=22>=22=7B 16'h7=46=46=46, =7B320=7B1'b0=7D=
=7D =7D=22</span></div><div><span style=3D=22color: =23d4d4d4;=22>      <=
/span><span style=3D=22color: =23569cd6;=22>RELOADABLE=5FCOE=46=46S</span=
><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23=
b5cea8;=22>1</span></div><div><span style=3D=22color: =23d4d4d4;=22>     =
 </span><span style=3D=22color: =23569cd6;=22>SYMMETRIC=5FCOE=46=46S</spa=
n><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =
=23b5cea8;=22>0</span></div><div><span style=3D=22color: =23d4d4d4;=22>  =
    </span><span style=3D=22color: =23569cd6;=22>SKIP=5FZERO=5FCOE=46=46S=
</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22co=
lor: =23b5cea8;=22>0</span></div><div><span style=3D=22color: =23d4d4d4;=22=
>      </span><span style=3D=22color: =23569cd6;=22>USE=5FEMBEDDED=5FREGS=
=5FCOE=46=46S</span><span style=3D=22color: =23d4d4d4;=22>: </span><span =
style=3D=22color: =23b5cea8;=22>1</span></div>

<div><span style=3D=22color: =236a9955;=22>=23 A list of all static conne=
ctions in design</span></div><div><span style=3D=22color: =236a9955;=22>=23=
 ------------------------------------------</span></div><div><span style=3D=
=22color: =236a9955;=22>=23 =46ormat: A list of connection maps (list of =
key-value pairs) with the following keys</span></div><div><span style=3D=22=
color: =236a9955;=22>=23         - srcblk  =3D Source block to connect</s=
pan></div><div><span style=3D=22color: =236a9955;=22>=23         - srcpor=
t =3D Port on the source block to connect</span></div><div><span style=3D=
=22color: =236a9955;=22>=23         - dstblk  =3D Destination block to co=
nnect</span></div><div><span style=3D=22color: =236a9955;=22>=23         =
- dstport =3D Port on the destination block to connect</span></div><div><=
span style=3D=22color: =23569cd6;=22>connections</span><span style=3D=22c=
olor: =23d4d4d4;=22>:</span></div><div><span style=3D=22color: =23d4d4d4;=
=22>  </span><span style=3D=22color: =236a9955;=22>=23 radio0 to ep0 - R=46=
A RX</span></div><div><span style=3D=22color: =23d4d4d4;=22>  - =7B </spa=
n><span style=3D=22color: =23569cd6;=22>srcblk</span><span style=3D=22col=
or: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>radio0</=
span><span style=3D=22color: =23d4d4d4;=22>, </span><span style=3D=22colo=
r: =23569cd6;=22>srcport</span><span style=3D=22color: =23d4d4d4;=22>: </=
span><span style=3D=22color: =23ce9178;=22>out=5F0</span><span style=3D=22=
color: =23d4d4d4;=22>, </span><span style=3D=22color: =23569cd6;=22>dstbl=
k</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22c=
olor: =23ce9178;=22>ddc0</span><span style=3D=22color: =23d4d4d4;=22>,   =
</span><span style=3D=22color: =23569cd6;=22>dstport</span><span style=3D=
=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>in=
=5F0</span><span style=3D=22color: =23d4d4d4;=22> =7D</span></div><div><s=
pan style=3D=22color: =23d4d4d4;=22>  - =7B </span><span style=3D=22color=
: =23569cd6;=22>srcblk</span><span style=3D=22color: =23d4d4d4;=22>: </sp=
an><span style=3D=22color: =23ce9178;=22>ddc0</span><span style=3D=22colo=
r: =23d4d4d4;=22>,   </span><span style=3D=22color: =23569cd6;=22>srcport=
</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22co=
lor: =23ce9178;=22>out=5F0</span><span style=3D=22color: =23d4d4d4;=22>, =
</span><span style=3D=22color: =23569cd6;=22>dstblk</span><span style=3D=22=
color: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>fir0<=
/span><span style=3D=22color: =23d4d4d4;=22>,   </span><span style=3D=22c=
olor: =23569cd6;=22>dstport</span><span style=3D=22color: =23d4d4d4;=22>:=
 </span><span style=3D=22color: =23ce9178;=22>in=5F0</span><span style=3D=
=22color: =23d4d4d4;=22> =7D</span></div><div><span style=3D=22color: =23=
d4d4d4;=22>  - =7B </span><span style=3D=22color: =23569cd6;=22>srcblk</s=
pan><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color=
: =23ce9178;=22>fir0</span><span style=3D=22color: =23d4d4d4;=22>,   </sp=
an><span style=3D=22color: =23569cd6;=22>srcport</span><span style=3D=22c=
olor: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>out=5F=
0</span><span style=3D=22color: =23d4d4d4;=22>, </span><span style=3D=22c=
olor: =23569cd6;=22>dstblk</span><span style=3D=22color: =23d4d4d4;=22>: =
</span><span style=3D=22color: =23ce9178;=22>ep0</span><span style=3D=22c=
olor: =23d4d4d4;=22>,    </span><span style=3D=22color: =23569cd6;=22>dst=
port</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22=
color: =23ce9178;=22>in0</span><span style=3D=22color: =23d4d4d4;=22>  =7D=
</span></div><div><span style=3D=22color: =23d4d4d4;=22>  </span><span st=
yle=3D=22color: =236a9955;=22>=23 BSP Connections</span></div><div><span =
style=3D=22color: =23d4d4d4;=22>  - =7B </span><span style=3D=22color: =23=
569cd6;=22>srcblk</span><span style=3D=22color: =23d4d4d4;=22>: </span><s=
pan style=3D=22color: =23ce9178;=22>radio0</span><span style=3D=22color: =
=23d4d4d4;=22>,   </span><span style=3D=22color: =23569cd6;=22>srcport</s=
pan><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color=
: =23ce9178;=22>ctrl=5Fport</span><span style=3D=22color: =23d4d4d4;=22>,=
   </span><span style=3D=22color: =23569cd6;=22>dstblk</span><span style=3D=
=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>=5F=
device=5F</span><span style=3D=22color: =23d4d4d4;=22>, </span><span styl=
e=3D=22color: =23569cd6;=22>dstport</span><span style=3D=22color: =23d4d4=
d4;=22>: </span><span style=3D=22color: =23ce9178;=22>ctrlport=5Fradio0</=
span><span style=3D=22color: =23d4d4d4;=22> =7D</span></div><div><span st=
yle=3D=22color: =23d4d4d4;=22>  - =7B </span><span style=3D=22color: =235=
69cd6;=22>srcblk</span><span style=3D=22color: =23d4d4d4;=22>: </span><sp=
an style=3D=22color: =23ce9178;=22>=5Fdevice=5F</span><span style=3D=22co=
lor: =23d4d4d4;=22>, </span><span style=3D=22color: =23569cd6;=22>srcport=
</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22co=
lor: =23ce9178;=22>x300=5Fradio0</span><span style=3D=22color: =23d4d4d4;=
=22>, </span><span style=3D=22color: =23569cd6;=22>dstblk</span><span sty=
le=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22=
>radio0</span><span style=3D=22color: =23d4d4d4;=22>,   </span><span styl=
e=3D=22color: =23569cd6;=22>dstport</span><span style=3D=22color: =23d4d4=
d4;=22>: </span><span style=3D=22color: =23ce9178;=22>x300=5Fradio</span>=
<span style=3D=22color: =23d4d4d4;=22> =7D</span></div><div><span style=3D=
=22color: =23d4d4d4;=22>  - =7B </span><span style=3D=22color: =23569cd6;=
=22>srcblk</span><span style=3D=22color: =23d4d4d4;=22>: </span><span sty=
le=3D=22color: =23ce9178;=22>=5Fdevice=5F</span><span style=3D=22color: =23=
d4d4d4;=22>, </span><span style=3D=22color: =23569cd6;=22>srcport</span><=
span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23=
ce9178;=22>time=5Fkeeper</span><span style=3D=22color: =23d4d4d4;=22>, </=
span><span style=3D=22color: =23569cd6;=22>dstblk</span><span style=3D=22=
color: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>radio=
0</span><span style=3D=22color: =23d4d4d4;=22>,   </span><span style=3D=22=
color: =23569cd6;=22>dstport</span><span style=3D=22color: =23d4d4d4;=22>=
: </span><span style=3D=22color: =23ce9178;=22>time=5Fkeeper</span><span =
style=3D=22color: =23d4d4d4;=22> =7D</span></div>
<div><span style=3D=22color: =236a9955;=22>=23 A list of all clock domain=
 connections in design</span></div><div><span style=3D=22color: =236a9955=
;=22>=23 ------------------------------------------</span></div><div><spa=
n style=3D=22color: =236a9955;=22>=23 =46ormat: A list of connection maps=
 (list of key-value pairs) with the following keys</span></div><div><span=
 style=3D=22color: =236a9955;=22>=23         - srcblk  =3D Source block t=
o connect (Always =22=5Fdevice=22=5F)</span></div><div><span style=3D=22c=
olor: =236a9955;=22>=23         - srcport =3D Clock domain on the source =
block to connect</span></div><div><span style=3D=22color: =236a9955;=22>=23=
         - dstblk  =3D Destination block to connect</span></div><div><spa=
n style=3D=22color: =236a9955;=22>=23         - dstport =3D Clock domain =
on the destination block to connect</span></div><div><span style=3D=22col=
or: =23569cd6;=22>clk=5Fdomains</span><span style=3D=22color: =23d4d4d4;=22=
>:</span></div><div><span style=3D=22color: =23d4d4d4;=22>    - =7B </spa=
n><span style=3D=22color: =23569cd6;=22>srcblk</span><span style=3D=22col=
or: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>=5Fdevic=
e=5F</span><span style=3D=22color: =23d4d4d4;=22>, </span><span style=3D=22=
color: =23569cd6;=22>srcport</span><span style=3D=22color: =23d4d4d4;=22>=
: </span><span style=3D=22color: =23ce9178;=22>radio</span><span style=3D=
=22color: =23d4d4d4;=22>, </span><span style=3D=22color: =23569cd6;=22>ds=
tblk</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22=
color: =23ce9178;=22>radio0</span><span style=3D=22color: =23d4d4d4;=22>,=
 </span><span style=3D=22color: =23569cd6;=22>dstport</span><span style=3D=
=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>ra=
dio</span><span style=3D=22color: =23d4d4d4;=22> =7D</span></div><div><sp=
an style=3D=22color: =23d4d4d4;=22>    - =7B </span><span style=3D=22colo=
r: =23569cd6;=22>srcblk</span><span style=3D=22color: =23d4d4d4;=22>: </s=
pan><span style=3D=22color: =23ce9178;=22>=5Fdevice=5F</span><span style=3D=
=22color: =23d4d4d4;=22>, </span><span style=3D=22color: =23569cd6;=22>sr=
cport</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=
=22color: =23ce9178;=22>ce</span><span style=3D=22color: =23d4d4d4;=22>, =
   </span><span style=3D=22color: =23569cd6;=22>dstblk</span><span style=3D=
=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>dd=
c0</span><span style=3D=22color: =23d4d4d4;=22>,   </span><span style=3D=22=
color: =23569cd6;=22>dstport</span><span style=3D=22color: =23d4d4d4;=22>=
: </span><span style=3D=22color: =23ce9178;=22>ce</span><span style=3D=22=
color: =23d4d4d4;=22>    =7D</span></div><div><span style=3D=22color: =23=
d4d4d4;=22>    - =7B </span><span style=3D=22color: =23569cd6;=22>srcblk<=
/span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22col=
or: =23ce9178;=22>=5Fdevice=5F</span><span style=3D=22color: =23d4d4d4;=22=
>, </span><span style=3D=22color: =23569cd6;=22>srcport</span><span style=
=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22=
>ce</span><span style=3D=22color: =23d4d4d4;=22>,    </span><span style=3D=
=22color: =23569cd6;=22>dstblk</span><span style=3D=22color: =23d4d4d4;=22=
>: </span><span style=3D=22color: =23ce9178;=22>fir0</span><span style=3D=
=22color: =23d4d4d4;=22>,   </span><span style=3D=22color: =23569cd6;=22>=
dstport</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=
=22color: =23ce9178;=22>ce</span><span style=3D=22color: =23d4d4d4;=22>  =
  =7D</span></div></div>
    <div class=3D=22moz-cite-prefix=22><br>
      On 1/13/22 18:30, Wade =46ife wrote:<br>
    </div>
    <blockquote type=3D=22cite=22
cite=3D=22mid:CA=46che=3DiodxshymdbtviiMjSd30MRh9qJVu52Rc1Pqu0aVH=46+XQ=40=
mail.gmail.com=22>
      <meta http-equiv=3D=22content-type=22 content=3D=22text/html; chars=
et=3DUT=46-8=22>
      <div dir=3D=22ltr=22>
        <div>At a glance, the YML has both firS and fir0. I was
          expecting just fir0. But I also would have expected
          rfnoc=5Fimage=5Fbuilder to throw an error for that.</div>
        <div><br>
        </div>
        <div>Wade<br>
        </div>
      </div>
      <br>
      <div class=3D=22gmail=5Fquote=22>
        <div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Thu, Jan 13, 2=
022 at 11:19
          AM Camille Moniere &lt;<a
            href=3D=22mailto:camille.moniere=40univ-ubs.fr=22
            moz-do-not-send=3D=22true=22 class=3D=22moz-txt-link-freetext=
=22>camille.moniere=40univ-ubs.fr</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px=
 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22=
>
          <div> Hi wade, <br>
            <br>
            I had already linked the =46IR <tt>ce</tt> to the <tt>ce</tt>=

            of the <tt>=5Fdevice=5F</tt>.<br>
            <br>
            Also, this custom image aims only to receive data (so no <tt>=
duc</tt>
            nor SEP for TX). I tried to free some space, considering
            only one UBX-160 is available (so only 1 radio).<br>
            I have read in the R=46NoC guide that, for a device to host
            communication, an ingress buffer of size 0 is possible,
            again to free resources.<br>
            A big block is expected to be added in the future...<br>
            <br>
            Here the YAML file I use with <tt>rfnoc=5Fimage=5Fbuilder</tt=
>:<br>
            <br>
            <div style=3D=22color:rgb(212,212,212);background-color:rgb(3=
0,30,30);font-family:&quot;Droid Sans Mono =46or Powerline&quot;,&quot;Dr=
oid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans =46a=
llback&quot;;font-weight:normal;font-size:14px;line-height:19px;white-spa=
ce:pre-wrap=22><div><span style=3D=22color:rgb(106,153,85)=22>=23 General=
 parameters</span></div><div><span style=3D=22color:rgb(106,153,85)=22>=23=
 -----------------------------------------</span></div><div><span style=3D=
=22color:rgb(86,156,214)=22>schema</span><span style=3D=22color:rgb(212,2=
12,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>rfnoc=5Fim=
agebuilder=5Fargs</span><span style=3D=22color:rgb(212,212,212)=22>      =
                 </span><span style=3D=22color:rgb(106,153,85)=22>=23 Ide=
ntifier for the schema used to validate this file</span></div><div><span =
style=3D=22color:rgb(86,156,214)=22>copyright</span><span style=3D=22colo=
r:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22=
>'Camille Moni=C3=A8re'</span><span style=3D=22color:rgb(212,212,212)=22>=
                          </span><span style=3D=22color:rgb(106,153,85)=22=
>=23 Copyright information used in file headers</span></div><div><span st=
yle=3D=22color:rgb(86,156,214)=22>license</span><span style=3D=22color:rg=
b(212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>'SP=
DX-License-Identifier: LGPL-3.0-or-later'</span><span style=3D=22color:rg=
b(212,212,212)=22> </span><span style=3D=22color:rgb(106,153,85)=22>=23 L=
icense information used in file headers</span></div><div><span style=3D=22=
color:rgb(86,156,214)=22>version</span><span style=3D=22color:rgb(212,212=
,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>'1.0'</span>=
<span style=3D=22color:rgb(212,212,212)=22>                              =
          </span><span style=3D=22color:rgb(106,153,85)=22>=23 =46ile ver=
sion</span></div><div><span style=3D=22color:rgb(86,156,214)=22>rfnoc=5Fv=
ersion</span><span style=3D=22color:rgb(212,212,212)=22>: </span><span st=
yle=3D=22color:rgb(206,145,120)=22>'1.0'</span><span style=3D=22color:rgb=
(212,212,212)=22>                                  </span><span style=3D=22=
color:rgb(106,153,85)=22>=23 R=46NoC protocol version</span></div><div><s=
pan style=3D=22color:rgb(86,156,214)=22>chdr=5Fwidth</span><span style=3D=
=22color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(181,206,=
168)=22>64</span><span style=3D=22color:rgb(212,212,212)=22>             =
                           </span><span style=3D=22color:rgb(106,153,85)=22=
>=23 Bit width of the CHDR bus for this image</span></div><div><span styl=
e=3D=22color:rgb(86,156,214)=22>device</span><span style=3D=22color:rgb(2=
12,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>'x310'=
</span></div><div><span style=3D=22color:rgb(86,156,214)=22>default=5Ftar=
get</span><span style=3D=22color:rgb(212,212,212)=22>: </span><span style=
=3D=22color:rgb(206,145,120)=22>'X310=5FHG'</span></div>
<div><span style=3D=22color:rgb(106,153,85)=22>=23 A list of all stream e=
ndpoints in design</span></div><div><span style=3D=22color:rgb(106,153,85=
)=22>=23 ----------------------------------------</span></div><div><span =
style=3D=22color:rgb(86,156,214)=22>stream=5Fendpoints</span><span style=3D=
=22color:rgb(212,212,212)=22>:</span></div><div><span style=3D=22color:rg=
b(212,212,212)=22>  </span><span style=3D=22color:rgb(86,156,214)=22>ep0<=
/span><span style=3D=22color:rgb(212,212,212)=22>:                       =
</span><span style=3D=22color:rgb(106,153,85)=22>=23 Stream endpoint name=
</span></div><div><span style=3D=22color:rgb(212,212,212)=22>    </span><=
span style=3D=22color:rgb(86,156,214)=22>ctrl</span><span style=3D=22colo=
r:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(86,156,214)=22>=
True</span><span style=3D=22color:rgb(212,212,212)=22>                   =
   </span><span style=3D=22color:rgb(106,153,85)=22>=23 Endpoint passes c=
ontrol traffic</span></div><div><span style=3D=22color:rgb(212,212,212)=22=
>    </span><span style=3D=22color:rgb(86,156,214)=22>data</span><span st=
yle=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(86=
,156,214)=22>True</span><span style=3D=22color:rgb(212,212,212)=22>      =
                </span><span style=3D=22color:rgb(106,153,85)=22>=23 Endp=
oint passes data traffic</span></div><div><span style=3D=22color:rgb(212,=
212,212)=22>    </span><span style=3D=22color:rgb(86,156,214)=22>buff=5Fs=
ize</span><span style=3D=22color:rgb(212,212,212)=22>: </span><span style=
=3D=22color:rgb(181,206,168)=22>0</span><span style=3D=22color:rgb(212,21=
2,212)=22>                    </span><span style=3D=22color:rgb(106,153,8=
5)=22>=23 Ingress buffer size for data</span></div>
<div><span style=3D=22color:rgb(106,153,85)=22>=23 A list of all NoC bloc=
ks in design</span></div><div><span style=3D=22color:rgb(106,153,85)=22>=23=
 ----------------------------------</span></div><div><span style=3D=22col=
or:rgb(86,156,214)=22>noc=5Fblocks</span><span style=3D=22color:rgb(212,2=
12,212)=22>:</span></div><div><span style=3D=22color:rgb(212,212,212)=22>=
  </span><span style=3D=22color:rgb(86,156,214)=22>ddc0</span><span style=
=3D=22color:rgb(212,212,212)=22>:</span></div><div><span style=3D=22color=
:rgb(212,212,212)=22>    </span><span style=3D=22color:rgb(86,156,214)=22=
>block=5Fdesc</span><span style=3D=22color:rgb(212,212,212)=22>: </span><=
span style=3D=22color:rgb(206,145,120)=22>'ddc.yml'</span></div><div><spa=
n style=3D=22color:rgb(212,212,212)=22>    </span><span style=3D=22color:=
rgb(86,156,214)=22>parameters</span><span style=3D=22color:rgb(212,212,21=
2)=22>:</span></div><div><span style=3D=22color:rgb(212,212,212)=22>     =
 </span><span style=3D=22color:rgb(86,156,214)=22>NUM=5FPORTS</span><span=
 style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb=
(181,206,168)=22>1</span></div><div><span style=3D=22color:rgb(212,212,21=
2)=22>  </span><span style=3D=22color:rgb(86,156,214)=22>radio0</span><sp=
an style=3D=22color:rgb(212,212,212)=22>:</span></div><div><span style=3D=
=22color:rgb(212,212,212)=22>    </span><span style=3D=22color:rgb(86,156=
,214)=22>block=5Fdesc</span><span style=3D=22color:rgb(212,212,212)=22>: =
</span><span style=3D=22color:rgb(206,145,120)=22>'radio=5F2x64.yml'</spa=
n></div><div><span style=3D=22color:rgb(212,212,212)=22>    </span><span =
style=3D=22color:rgb(86,156,214)=22>parameters</span><span style=3D=22col=
or:rgb(212,212,212)=22>:</span></div><div><span style=3D=22color:rgb(212,=
212,212)=22>      </span><span style=3D=22color:rgb(86,156,214)=22>NUM=5F=
PORTS</span><span style=3D=22color:rgb(212,212,212)=22>: </span><span sty=
le=3D=22color:rgb(181,206,168)=22>1</span></div><div><span style=3D=22col=
or:rgb(212,212,212)=22>  </span><span style=3D=22color:rgb(86,156,214)=22=
>fir0</span><span style=3D=22color:rgb(212,212,212)=22>:</span></div><div=
><span style=3D=22color:rgb(212,212,212)=22>    </span><span style=3D=22c=
olor:rgb(86,156,214)=22>block=5Fdesc</span><span style=3D=22color:rgb(212=
,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>'fir=5Ff=
ilter.yml'</span></div><div><span style=3D=22color:rgb(212,212,212)=22>  =
  </span><span style=3D=22color:rgb(86,156,214)=22>parameters</span><span=
 style=3D=22color:rgb(212,212,212)=22>:</span></div><div><span style=3D=22=
color:rgb(212,212,212)=22>      </span><span style=3D=22color:rgb(86,156,=
214)=22>NUM=5FPORTS</span><span style=3D=22color:rgb(212,212,212)=22>: </=
span><span style=3D=22color:rgb(181,206,168)=22>1</span></div><div><span =
style=3D=22color:rgb(212,212,212)=22>      </span><span style=3D=22color:=
rgb(86,156,214)=22>COE=46=46=5FWIDTH</span><span style=3D=22color:rgb(212=
,212,212)=22>: </span><span style=3D=22color:rgb(181,206,168)=22>16</span=
></div><div><span style=3D=22color:rgb(212,212,212)=22>      </span><span=
 style=3D=22color:rgb(86,156,214)=22>NUM=5FCOE=46=46S</span><span style=3D=
=22color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(181,206,=
168)=22>21</span></div><div><span style=3D=22color:rgb(212,212,212)=22>  =
    </span><span style=3D=22color:rgb(86,156,214)=22>COE=46=46S=5FVEC</sp=
an><span style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22c=
olor:rgb(206,145,120)=22>=22=7B 16'h7=46=46=46, =7B320=7B1'b0=7D=7D =7D=22=
</span></div><div><span style=3D=22color:rgb(212,212,212)=22>      </span=
><span style=3D=22color:rgb(86,156,214)=22>RELOADABLE=5FCOE=46=46S</span>=
<span style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22colo=
r:rgb(181,206,168)=22>1</span></div><div><span style=3D=22color:rgb(212,2=
12,212)=22>      </span><span style=3D=22color:rgb(86,156,214)=22>SYMMETR=
IC=5FCOE=46=46S</span><span style=3D=22color:rgb(212,212,212)=22>: </span=
><span style=3D=22color:rgb(181,206,168)=22>0</span></div><div><span styl=
e=3D=22color:rgb(212,212,212)=22>      </span><span style=3D=22color:rgb(=
86,156,214)=22>SKIP=5FZERO=5FCOE=46=46S</span><span style=3D=22color:rgb(=
212,212,212)=22>: </span><span style=3D=22color:rgb(181,206,168)=22>0</sp=
an></div><div><span style=3D=22color:rgb(212,212,212)=22>      </span><sp=
an style=3D=22color:rgb(86,156,214)=22>USE=5FEMBEDDED=5FREGS=5FCOE=46=46S=
</span><span style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=
=22color:rgb(181,206,168)=22>1</span></div>

<div><span style=3D=22color:rgb(106,153,85)=22>=23 A list of all static c=
onnections in design</span></div><div><span style=3D=22color:rgb(106,153,=
85)=22>=23 ------------------------------------------</span></div><div><s=
pan style=3D=22color:rgb(106,153,85)=22>=23 =46ormat: A list of connectio=
n maps (list of key-value pairs) with the following keys</span></div><div=
><span style=3D=22color:rgb(106,153,85)=22>=23         - srcblk  =3D Sour=
ce block to connect</span></div><div><span style=3D=22color:rgb(106,153,8=
5)=22>=23         - srcport =3D Port on the source block to connect</span=
></div><div><span style=3D=22color:rgb(106,153,85)=22>=23         - dstbl=
k  =3D Destination block to connect</span></div><div><span style=3D=22col=
or:rgb(106,153,85)=22>=23         - dstport =3D Port on the destination b=
lock to connect</span></div><div><span style=3D=22color:rgb(86,156,214)=22=
>connections</span><span style=3D=22color:rgb(212,212,212)=22>:</span></d=
iv><div><span style=3D=22color:rgb(212,212,212)=22>  </span><span style=3D=
=22color:rgb(106,153,85)=22>=23 radio0 to ep0 - R=46A RX</span></div><div=
><span style=3D=22color:rgb(212,212,212)=22>  - =7B </span><span style=3D=
=22color:rgb(86,156,214)=22>srcblk</span><span style=3D=22color:rgb(212,2=
12,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>radio0</sp=
an><span style=3D=22color:rgb(212,212,212)=22>, </span><span style=3D=22c=
olor:rgb(86,156,214)=22>srcport</span><span style=3D=22color:rgb(212,212,=
212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>out=5F0</span=
><span style=3D=22color:rgb(212,212,212)=22>, </span><span style=3D=22col=
or:rgb(86,156,214)=22>dstblk</span><span style=3D=22color:rgb(212,212,212=
)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>ddc0</span><span=
 style=3D=22color:rgb(212,212,212)=22>,   </span><span style=3D=22color:r=
gb(86,156,214)=22>dstport</span><span style=3D=22color:rgb(212,212,212)=22=
>: </span><span style=3D=22color:rgb(206,145,120)=22>in=5F0</span><span s=
tyle=3D=22color:rgb(212,212,212)=22> =7D</span></div><div><span style=3D=22=
color:rgb(212,212,212)=22>  - =7B </span><span style=3D=22color:rgb(86,15=
6,214)=22>srcblk</span><span style=3D=22color:rgb(212,212,212)=22>: </spa=
n><span style=3D=22color:rgb(206,145,120)=22>ddc0</span><span style=3D=22=
color:rgb(212,212,212)=22>,   </span><span style=3D=22color:rgb(86,156,21=
4)=22>srcport</span><span style=3D=22color:rgb(212,212,212)=22>: </span><=
span style=3D=22color:rgb(206,145,120)=22>out=5F0</span><span style=3D=22=
color:rgb(212,212,212)=22>, </span><span style=3D=22color:rgb(86,156,214)=
=22>dstblk</span><span style=3D=22color:rgb(212,212,212)=22>: </span><spa=
n style=3D=22color:rgb(206,145,120)=22>firS</span><span style=3D=22color:=
rgb(212,212,212)=22>,   </span><span style=3D=22color:rgb(86,156,214)=22>=
dstport</span><span style=3D=22color:rgb(212,212,212)=22>: </span><span s=
tyle=3D=22color:rgb(206,145,120)=22>in=5F0</span><span style=3D=22color:r=
gb(212,212,212)=22> =7D</span></div><div><span style=3D=22color:rgb(212,2=
12,212)=22>  - =7B </span><span style=3D=22color:rgb(86,156,214)=22>srcbl=
k</span><span style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=
=22color:rgb(206,145,120)=22>firS</span><span style=3D=22color:rgb(212,21=
2,212)=22>,   </span><span style=3D=22color:rgb(86,156,214)=22>srcport</s=
pan><span style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22=
color:rgb(206,145,120)=22>out=5F0</span><span style=3D=22color:rgb(212,21=
2,212)=22>, </span><span style=3D=22color:rgb(86,156,214)=22>dstblk</span=
><span style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22col=
or:rgb(206,145,120)=22>ep0</span><span style=3D=22color:rgb(212,212,212)=22=
>,    </span><span style=3D=22color:rgb(86,156,214)=22>dstport</span><spa=
n style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22color:rg=
b(206,145,120)=22>in0</span><span style=3D=22color:rgb(212,212,212)=22>  =
=7D</span></div><div><span style=3D=22color:rgb(212,212,212)=22>  </span>=
<span style=3D=22color:rgb(106,153,85)=22>=23 BSP Connections</span></div=
><div><span style=3D=22color:rgb(212,212,212)=22>  - =7B </span><span sty=
le=3D=22color:rgb(86,156,214)=22>srcblk</span><span style=3D=22color:rgb(=
212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>radio=
0</span><span style=3D=22color:rgb(212,212,212)=22>,   </span><span style=
=3D=22color:rgb(86,156,214)=22>srcport</span><span style=3D=22color:rgb(2=
12,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>ctrl=5F=
port</span><span style=3D=22color:rgb(212,212,212)=22>,   </span><span st=
yle=3D=22color:rgb(86,156,214)=22>dstblk</span><span style=3D=22color:rgb=
(212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>=5Fd=
evice=5F</span><span style=3D=22color:rgb(212,212,212)=22>, </span><span =
style=3D=22color:rgb(86,156,214)=22>dstport</span><span style=3D=22color:=
rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=22>c=
trlport=5Fradio0</span><span style=3D=22color:rgb(212,212,212)=22> =7D</s=
pan></div><div><span style=3D=22color:rgb(212,212,212)=22>  - =7B </span>=
<span style=3D=22color:rgb(86,156,214)=22>srcblk</span><span style=3D=22c=
olor:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120)=
=22>=5Fdevice=5F</span><span style=3D=22color:rgb(212,212,212)=22>, </spa=
n><span style=3D=22color:rgb(86,156,214)=22>srcport</span><span style=3D=22=
color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120=
)=22>x300=5Fradio0</span><span style=3D=22color:rgb(212,212,212)=22>, </s=
pan><span style=3D=22color:rgb(86,156,214)=22>dstblk</span><span style=3D=
=22color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,=
120)=22>radio0</span><span style=3D=22color:rgb(212,212,212)=22>,   </spa=
n><span style=3D=22color:rgb(86,156,214)=22>dstport</span><span style=3D=22=
color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120=
)=22>x300=5Fradio</span><span style=3D=22color:rgb(212,212,212)=22> =7D</=
span></div><div><span style=3D=22color:rgb(212,212,212)=22>  - =7B </span=
><span style=3D=22color:rgb(86,156,214)=22>srcblk</span><span style=3D=22=
color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,120=
)=22>=5Fdevice=5F</span><span style=3D=22color:rgb(212,212,212)=22>, </sp=
an><span style=3D=22color:rgb(86,156,214)=22>srcport</span><span style=3D=
=22color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,=
120)=22>time=5Fkeeper</span><span style=3D=22color:rgb(212,212,212)=22>, =
</span><span style=3D=22color:rgb(86,156,214)=22>dstblk</span><span style=
=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(206,1=
45,120)=22>radio0</span><span style=3D=22color:rgb(212,212,212)=22>,   </=
span><span style=3D=22color:rgb(86,156,214)=22>dstport</span><span style=3D=
=22color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb(206,145,=
120)=22>time=5Fkeeper</span><span style=3D=22color:rgb(212,212,212)=22> =7D=
</span></div>
<div><span style=3D=22color:rgb(106,153,85)=22>=23 A list of all clock do=
main connections in design</span></div><div><span style=3D=22color:rgb(10=
6,153,85)=22>=23 ------------------------------------------</span></div><=
div><span style=3D=22color:rgb(106,153,85)=22>=23 =46ormat: A list of con=
nection maps (list of key-value pairs) with the following keys</span></di=
v><div><span style=3D=22color:rgb(106,153,85)=22>=23         - srcblk  =3D=
 Source block to connect (Always =22=5Fdevice=22=5F)</span></div><div><sp=
an style=3D=22color:rgb(106,153,85)=22>=23         - srcport =3D Clock do=
main on the source block to connect</span></div><div><span style=3D=22col=
or:rgb(106,153,85)=22>=23         - dstblk  =3D Destination block to conn=
ect</span></div><div><span style=3D=22color:rgb(106,153,85)=22>=23       =
  - dstport =3D Clock domain on the destination block to connect</span></=
div><div><span style=3D=22color:rgb(86,156,214)=22>clk=5Fdomains</span><s=
pan style=3D=22color:rgb(212,212,212)=22>:</span></div><div><span style=3D=
=22color:rgb(212,212,212)=22>    - =7B </span><span style=3D=22color:rgb(=
86,156,214)=22>srcblk</span><span style=3D=22color:rgb(212,212,212)=22>: =
</span><span style=3D=22color:rgb(206,145,120)=22>=5Fdevice=5F</span><spa=
n style=3D=22color:rgb(212,212,212)=22>, </span><span style=3D=22color:rg=
b(86,156,214)=22>srcport</span><span style=3D=22color:rgb(212,212,212)=22=
>: </span><span style=3D=22color:rgb(206,145,120)=22>radio</span><span st=
yle=3D=22color:rgb(212,212,212)=22>, </span><span style=3D=22color:rgb(86=
,156,214)=22>dstblk</span><span style=3D=22color:rgb(212,212,212)=22>: </=
span><span style=3D=22color:rgb(206,145,120)=22>radio0</span><span style=3D=
=22color:rgb(212,212,212)=22>, </span><span style=3D=22color:rgb(86,156,2=
14)=22>dstport</span><span style=3D=22color:rgb(212,212,212)=22>: </span>=
<span style=3D=22color:rgb(206,145,120)=22>radio</span><span style=3D=22c=
olor:rgb(212,212,212)=22> =7D</span></div><div><span style=3D=22color:rgb=
(212,212,212)=22>    - =7B </span><span style=3D=22color:rgb(86,156,214)=22=
>srcblk</span><span style=3D=22color:rgb(212,212,212)=22>: </span><span s=
tyle=3D=22color:rgb(206,145,120)=22>=5Fdevice=5F</span><span style=3D=22c=
olor:rgb(212,212,212)=22>, </span><span style=3D=22color:rgb(86,156,214)=22=
>srcport</span><span style=3D=22color:rgb(212,212,212)=22>: </span><span =
style=3D=22color:rgb(206,145,120)=22>ce</span><span style=3D=22color:rgb(=
212,212,212)=22>,    </span><span style=3D=22color:rgb(86,156,214)=22>dst=
blk</span><span style=3D=22color:rgb(212,212,212)=22>: </span><span style=
=3D=22color:rgb(206,145,120)=22>ddc0</span><span style=3D=22color:rgb(212=
,212,212)=22>,   </span><span style=3D=22color:rgb(86,156,214)=22>dstport=
</span><span style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=
=22color:rgb(206,145,120)=22>ce</span><span style=3D=22color:rgb(212,212,=
212)=22>    =7D</span></div><div><span style=3D=22color:rgb(212,212,212)=22=
>    - =7B </span><span style=3D=22color:rgb(86,156,214)=22>srcblk</span>=
<span style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22colo=
r:rgb(206,145,120)=22>=5Fdevice=5F</span><span style=3D=22color:rgb(212,2=
12,212)=22>, </span><span style=3D=22color:rgb(86,156,214)=22>srcport</sp=
an><span style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22c=
olor:rgb(206,145,120)=22>ce</span><span style=3D=22color:rgb(212,212,212)=
=22>,    </span><span style=3D=22color:rgb(86,156,214)=22>dstblk</span><s=
pan style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22color:=
rgb(206,145,120)=22>firS</span><span style=3D=22color:rgb(212,212,212)=22=
>,   </span><span style=3D=22color:rgb(86,156,214)=22>dstport</span><span=
 style=3D=22color:rgb(212,212,212)=22>: </span><span style=3D=22color:rgb=
(206,145,120)=22>ce</span><span style=3D=22color:rgb(212,212,212)=22>    =
=7D</span></div>
</div>
            <br>
            <br>
            I have tried in python and in C++, with UHD and directly
            with R=46NoC API. None succeeded<br>
            =46or instance, this is what I do in Python:<br>
            <br>
            <div style=3D=22color:rgb(212,212,212);background-color:rgb(3=
0,30,30);font-family:&quot;Droid Sans Mono =46or Powerline&quot;,&quot;Dr=
oid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans =46a=
llback&quot;;font-weight:normal;font-size:14px;line-height:19px;white-spa=
ce:pre-wrap=22><div><span style=3D=22color:rgb(197,134,192)=22>import</sp=
an><span style=3D=22color:rgb(212,212,212)=22> numpy </span><span style=3D=
=22color:rgb(197,134,192)=22>as</span><span style=3D=22color:rgb(212,212,=
212)=22> np</span></div><div><span style=3D=22color:rgb(197,134,192)=22>i=
mport</span><span style=3D=22color:rgb(212,212,212)=22> scipy </span><spa=
n style=3D=22color:rgb(197,134,192)=22>as</span><span style=3D=22color:rg=
b(212,212,212)=22> sp</span></div>
<div><span style=3D=22color:rgb(197,134,192)=22>import</span><span style=3D=
=22color:rgb(212,212,212)=22> ipywidgets </span><span style=3D=22color:rg=
b(197,134,192)=22>as</span><span style=3D=22color:rgb(212,212,212)=22> wi=
dgets</span></div><div><span style=3D=22color:rgb(197,134,192)=22>import<=
/span><span style=3D=22color:rgb(212,212,212)=22> matplotlib.pyplot </spa=
n><span style=3D=22color:rgb(197,134,192)=22>as</span><span style=3D=22co=
lor:rgb(212,212,212)=22> plt</span></div>
<div><span style=3D=22color:rgb(197,134,192)=22>import</span><span style=3D=
=22color:rgb(212,212,212)=22> uhd</span></div>
<div><span style=3D=22color:rgb(212,212,212)=22>graph =3D uhd.rfnoc.Rfnoc=
Graph(</span><span style=3D=22color:rgb(206,145,120)=22>=22addr=3D192.168=
.10.2,</span><span style=3D=22color:rgb(206,145,120)=22>dboard=5Fclock=5F=
rate=3D20e6</span><span style=3D=22color:rgb(206,145,120)=22>=22</span><s=
pan style=3D=22color:rgb(212,212,212)=22>)</span><span style=3D=22color:r=
gb(206,145,120)=22></span></div>
<div><span style=3D=22color:rgb(212,212,212)=22>radio=5Fcrtl =3D uhd.rfno=
c.RadioControl(graph.get=5Fblock(</span><span style=3D=22color:rgb(206,14=
5,120)=22>=220/Radio=230=22</span><span style=3D=22color:rgb(212,212,212)=
=22>))</span></div><div><span style=3D=22color:rgb(212,212,212)=22>ddc=5F=
crtl   =3D uhd.rfnoc.DdcBlockControl(graph.get=5Fblock(</span><span style=
=3D=22color:rgb(206,145,120)=22>=220/DDC=230=22</span><span style=3D=22co=
lor:rgb(212,212,212)=22>))

</span></div><div><span style=3D=22color:rgb(212,212,212)=22>target=5Ffre=
q =3D </span><span style=3D=22color:rgb(181,206,168)=22>433e6</span></div=
><div><span style=3D=22color:rgb(212,212,212)=22>target=5Fgain =3D </span=
><span style=3D=22color:rgb(181,206,168)=22>25</span></div><div><span sty=
le=3D=22color:rgb(212,212,212)=22>target=5Frate =3D </span><span style=3D=
=22color:rgb(181,206,168)=22>1e6</span></div>
<div><span style=3D=22color:rgb(212,212,212)=22>radio=5Fcrtl.set=5Frx=5Fa=
ntenna(</span><span style=3D=22color:rgb(206,145,120)=22>'RX2'</span><spa=
n style=3D=22color:rgb(212,212,212)=22>, 0)</span></div><div><span style=3D=
=22color:rgb(212,212,212)=22>radio=5Fcrtl.get=5Frx=5Fantenna(0)</span></d=
iv>
<div><span style=3D=22color:rgb(212,212,212)=22>actual=5Fgain    =3D radi=
o=5Fcrtl.set=5Frx=5Fgain(target=5Fgain, 0)
</span>
<div><span style=3D=22color:rgb(212,212,212)=22>actual=5Frf=5Ffreq  =3D r=
adio=5Fcrtl.set=5Frx=5Ffrequency(target=5Ffreq, 0)</span></div><span styl=
e=3D=22color:rgb(212,212,212)=22></span></div><div><span style=3D=22color=
:rgb(212,212,212)=22>target=5Fdsp=5Ffreq =3D actual=5Frf=5Ffreq - target=5F=
freq</span></div><div><span style=3D=22color:rgb(212,212,212)=22>actual=5F=
dsp=5Ffreq =3D ddc=5Fcrtl.set=5Ffreq(target=5Fdsp=5Ffreq, 0)</span></div>=
<div><span style=3D=22color:rgb(212,212,212)=22>clipped=5Frx=5Ffreq =3D a=
ctual=5Frf=5Ffreq - actual=5Fdsp=5Ffreq</span></div>
<div><span style=3D=22color:rgb(212,212,212)=22>actual=5Frate =3D ddc=5Fc=
rtl.set=5Foutput=5Frate(target=5Frate, 0)

</span><div style=3D=22color:rgb(212,212,212);background-color:rgb(30,30,=
30);font-family:&quot;Droid Sans Mono =46or Powerline&quot;,&quot;Droid S=
ans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans =46allbac=
k&quot;;font-weight:normal;font-size:14px;line-height:19px;white-space:pr=
e-wrap=22><div><span style=3D=22color:rgb(212,212,212)=22>fir=5Fstatic   =
=3D uhd.rfnoc.=46ir=46ilterBlockControl(graph.get=5Fblock(</span><span st=
yle=3D=22color:rgb(206,145,120)=22>=220/=46IR=230=22</span><span style=3D=
=22color:rgb(212,212,212)=22>))
</span><div style=3D=22color:rgb(212,212,212);background-color:rgb(30,30,=
30);font-family:&quot;Droid Sans Mono =46or Powerline&quot;,&quot;Droid S=
ans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans =46allbac=
k&quot;;font-weight:normal;font-size:14px;line-height:19px;white-space:pr=
e-wrap=22><div><span style=3D=22color:rgb(212,212,212)=22>coefficients =3D=
 </span><span style=3D=22color:rgb(212,212,212)=22><span style=3D=22color=
:rgb(212,212,212)=22>fir=5Fstatic</span>.get=5Fcoefficients()</span></div=
><div><span style=3D=22color:rgb(212,212,212)=22><span style=3D=22color:r=
gb(212,212,212)=22>fir=5Fstatic</span>.set=5Fcoefficients(coefficients)</=
span></div><div><span style=3D=22color:rgb(212,212,212)=22>coefficients =3D=
 </span><span style=3D=22color:rgb(212,212,212)=22><span style=3D=22color=
:rgb(212,212,212)=22>fir=5Fstatic</span>.get=5Fcoefficients()</span></div=
><div><span style=3D=22color:rgb(212,212,212)=22>
plt.stem(coefficients)</span></div><div><span style=3D=22color:rgb(212,21=
2,212)=22>plt.show() </span></div></div>
<span style=3D=22color:rgb(212,212,212)=22></span></div></div><div style=3D=
=22color:rgb(212,212,212);background-color:rgb(30,30,30);font-family:&quo=
t;Droid Sans Mono =46or Powerline&quot;,&quot;Droid Sans Mono&quot;,&quot=
;monospace&quot;,monospace,&quot;Droid Sans =46allback&quot;;font-weight:=
normal;font-size:14px;line-height:19px;white-space:pre-wrap=22><div><span=
 style=3D=22color:rgb(212,212,212)=22>stream=5Fargs =3D uhd.usrp.StreamAr=
gs(</span><span style=3D=22color:rgb(206,145,120)=22>=22fc32=22</span><sp=
an style=3D=22color:rgb(212,212,212)=22>, </span><span style=3D=22color:r=
gb(206,145,120)=22>=22sc16=22</span><span style=3D=22color:rgb(212,212,21=
2)=22>)</span></div><div><span style=3D=22color:rgb(212,212,212)=22>recv=5F=
stream =3D graph.create=5Frx=5Fstreamer(</span><span style=3D=22color:rgb=
(181,206,168)=22>1</span><span style=3D=22color:rgb(212,212,212)=22>, str=
eam=5Fargs)</span></div>
<div><span style=3D=22color:rgb(212,212,212)=22>graph.connect(radio=5Fcrt=
l.get=5Fblock=5Fid(), </span><span style=3D=22color:rgb(181,206,168)=22>0=
</span><span style=3D=22color:rgb(212,212,212)=22>, ddc=5Fcrtl.get=5Fbloc=
k=5Fid(),   </span><span style=3D=22color:rgb(181,206,168)=22>0</span><sp=
an style=3D=22color:rgb(212,212,212)=22>, </span><span style=3D=22color:r=
gb(86,156,214)=22>=46alse</span><span style=3D=22color:rgb(212,212,212)=22=
>) </span></div><div><span style=3D=22color:rgb(212,212,212)=22>graph.con=
nect(ddc=5Fcrtl.get=5Fblock=5Fid(),   </span><span style=3D=22color:rgb(1=
81,206,168)=22>0</span><span style=3D=22color:rgb(212,212,212)=22>, fir=5F=
static.get=5Fblock=5Fid(), </span><span style=3D=22color:rgb(181,206,168)=
=22>0</span><span style=3D=22color:rgb(212,212,212)=22>, </span><span sty=
le=3D=22color:rgb(86,156,214)=22>=46alse</span><span style=3D=22color:rgb=
(212,212,212)=22>)</span></div><div><span style=3D=22color:rgb(212,212,21=
2)=22>graph.connect(fir=5Fstatic.get=5Fblock=5Fid(), </span><span style=3D=
=22color:rgb(181,206,168)=22>0</span><span style=3D=22color:rgb(212,212,2=
12)=22>, recv=5Fstream,               </span><span style=3D=22color:rgb(1=
81,206,168)=22>0</span><span style=3D=22color:rgb(212,212,212)=22>) </spa=
n></div>
<div><span style=3D=22color:rgb(212,212,212)=22>graph.commit()</span></di=
v>
<div><span style=3D=22color:rgb(212,212,212)=22>num=5Fsamps =3D </span><s=
pan style=3D=22color:rgb(78,201,176)=22>int</span><span style=3D=22color:=
rgb(212,212,212)=22>(</span><span style=3D=22color:rgb(181,206,168)=22>1e=
6</span><span style=3D=22color:rgb(212,212,212)=22>) </span><span style=3D=
=22color:rgb(106,153,85)=22>=23 1 MB of data, be aware.</span></div>
<div><span style=3D=22color:rgb(212,212,212)=22>data       =3D np.empty((=
num=5Fsamps), </span><span style=3D=22color:rgb(156,220,254)=22>dtype</sp=
an><span style=3D=22color:rgb(212,212,212)=22>=3Dnp.complex64)</span></di=
v><div><span style=3D=22color:rgb(212,212,212)=22>md         =3D uhd.type=
s.RXMetadata()</span></div><div><span style=3D=22color:rgb(212,212,212)=22=
>stream=5Fcmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num=5Fdone)</s=
pan></div>
<div><span style=3D=22color:rgb(212,212,212)=22>stream=5Fcmd.stream=5Fnow=
 =3D </span><span style=3D=22color:rgb(86,156,214)=22>True</span></div><d=
iv><span style=3D=22color:rgb(212,212,212)=22>stream=5Fcmd.num=5Fsamps  =3D=
 num=5Fsamps</span></div><div><span style=3D=22color:rgb(212,212,212)=22>=
stream=5Fcmd.time=5Fspec  =3D uhd.types.TimeSpec(</span><span style=3D=22=
color:rgb(181,206,168)=22>1</span><span style=3D=22color:rgb(212,212,212)=
=22>, </span><span style=3D=22color:rgb(181,206,168)=22>0</span><span sty=
le=3D=22color:rgb(212,212,212)=22>) </span><span style=3D=22color:rgb(106=
,153,85)=22>=23 Wait 1s before reception</span></div>
<div><span style=3D=22color:rgb(212,212,212)=22>recv=5Fstream.issue=5Fstr=
eam=5Fcmd(stream=5Fcmd)</span></div><div><span style=3D=22color:rgb(212,2=
12,212)=22>received=5Fspls =3D recv=5Fstream.recv(data, md, </span><span =
style=3D=22color:rgb(181,206,168)=22>3</span><span style=3D=22color:rgb(2=
12,212,212)=22>.)</span></div>
<div><span style=3D=22color:rgb(220,220,170)=22>print</span><span style=3D=
=22color:rgb(212,212,212)=22>(</span><span style=3D=22color:rgb(86,156,21=
4)=22>f</span><span style=3D=22color:rgb(206,145,120)=22>'Received </span=
><span style=3D=22color:rgb(86,156,214)=22>=7B</span><span style=3D=22col=
or:rgb(78,201,176)=22>float</span><span style=3D=22color:rgb(212,212,212)=
=22>(received=5Fspls)</span><span style=3D=22color:rgb(86,156,214)=22>:.2=
e=7D</span><span style=3D=22color:rgb(206,145,120)=22> samples'</span><sp=
an style=3D=22color:rgb(212,212,212)=22>)</span></div>
<div><span style=3D=22color:rgb(197,134,192)=22>if</span><span style=3D=22=
color:rgb(212,212,212)=22> md.error=5Fcode =21=3D md.error=5Fcode.none:</=
span></div><div><span style=3D=22color:rgb(212,212,212)=22>    </span><sp=
an style=3D=22color:rgb(220,220,170)=22>print</span><span style=3D=22colo=
r:rgb(212,212,212)=22>(</span><span style=3D=22color:rgb(86,156,214)=22>f=
</span><span style=3D=22color:rgb(206,145,120)=22>'</span><span style=3D=22=
color:rgb(215,186,125)=22>=5C033</span><span style=3D=22color:rgb(206,145=
,120)=22>=5B1;31m=5BERROR=5D</span><span style=3D=22color:rgb(215,186,125=
)=22>=5C033</span><span style=3D=22color:rgb(206,145,120)=22>=5B0m </span=
><span style=3D=22color:rgb(86,156,214)=22>=7B</span><span style=3D=22col=
or:rgb(212,212,212)=22>md.strerror()</span><span style=3D=22color:rgb(86,=
156,214)=22>=7D</span><span style=3D=22color:rgb(206,145,120)=22>'</span>=
<span style=3D=22color:rgb(212,212,212)=22>)</span></div><div><span style=
=3D=22color:rgb(197,134,192)=22>else</span><span style=3D=22color:rgb(212=
,212,212)=22>:</span></div><div><span style=3D=22color:rgb(212,212,212)=22=
>    </span><span style=3D=22color:rgb(220,220,170)=22>print</span><span =
style=3D=22color:rgb(212,212,212)=22>(</span><span style=3D=22color:rgb(8=
6,156,214)=22>f</span><span style=3D=22color:rgb(206,145,120)=22>'Everyth=
ing went well.'</span><span style=3D=22color:rgb(212,212,212)=22>)</span>=
</div></div><span style=3D=22color:rgb(212,212,212)=22></span></div></div=
>
            <br>
            Without the =46ir (and adapting the code of course), I get my=

            1e6 data buffer.<br>
            <br>
            Is there an error I miss, or have I made too much space,
            deleting important part in the process=3F<br>
            <br>
            <div>On 1/13/22 17:08, Wade =46ife wrote:<br>
            </div>
            <blockquote type=3D=22cite=22>
              <div dir=3D=22ltr=22>
                <div>In particular, make sure you have a clock connected
                  to the CE input of the =46IR filter. Something like thi=
s
                  in your clk=5Fdomains section:</div>
                <div><br>
                </div>
                <div>clk=5Fdomains:</div>
                <div>=C2=A0 =C2=A0 - =7B srcblk: =5Fdevice=5F, srcport: c=
e, dstblk:
                  fir0, dstport: ce =7D</div>
                <div><br>
                </div>
                <div>Wade<br>
                </div>
              </div>
              <br>
              <div class=3D=22gmail=5Fquote=22>
                <div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Thu, J=
an 13, 2022
                  at 10:04 AM Wade =46ife &lt;<a
                    href=3D=22mailto:wade.fife=40ettus.com=22 target=3D=22=
=5Fblank=22
                    moz-do-not-send=3D=22true=22 class=3D=22moz-txt-link-=
freetext=22>wade.fife=40ettus.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin=
:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex=22>
                  <div dir=3D=22ltr=22>
                    <div>Hi Camille,</div>
                    <div><br>
                    </div>
                    <div>Maybe you could share your R=46NoC YML file and
                      someone could take a look=3F There might be
                      something wrong there.</div>
                    <div><br>
                    </div>
                    <div>Wade<br>
                    </div>
                  </div>
                  <br>
                  <div class=3D=22gmail=5Fquote=22>
                    <div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Th=
u, Jan 13,
                      2022 at 8:32 AM Camille Moniere &lt;<a
                        href=3D=22mailto:camille.moniere=40univ-ubs.fr=22=

                        target=3D=22=5Fblank=22 moz-do-not-send=3D=22true=
=22
                        class=3D=22moz-txt-link-freetext=22>camille.monie=
re=40univ-ubs.fr</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D=22gmail=5Fquote=22 style=3D=22ma=
rgin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex=22>Hello everyone=
,<br>
                      <br>
                      I unsuccessfully try to use the =46IR =46ilter R=46=
NoC
                      block in reception, in=C2=A0 <br>
                      an USRP X310 with a UBX-160 daughterboard
                      on-board.<br>
                      I have tested several topology for the custom
                      image (radio0 - &gt; ddc0 -&gt;=C2=A0 <br>
                      fir0 -&gt; ep0 =7C=7C radio0 -&gt; ddc0 -&gt; ep0 +=

                      ep1 -&gt; fir0 + fir0 -&gt; ep1, for=C2=A0 <br>
                      example),<br>
                      with several parameter for the filter (With or
                      without re-loadable=C2=A0 <br>
                      coefficients, with or without embedded DSP
                      registers, 21 coef' instead=C2=A0 <br>
                      of 41 ...) but it ultimately<br>
                      always fails the same way.<br>
                      When the =46IR is used, I can't retrieve any data. =
I
                      got an Overflow=C2=A0 <br>
                      error, without receiving any samples. Sometimes, I
                      even got a =22Late=C2=A0 <br>
                      Command=22 error, even when using=C2=A0 R=46NoC in =
C++<br>
                      (graph committed immediately before the stream now
                      stream=5Fcmd).<br>
                      <br>
                      =46or the record, the center frequency is 433 MHz
                      for a sampling rate of 1=C2=A0 <br>
                      Msps.<br>
                      <br>
                      I assumed the filter output one complex sample
                      (sc16) for each new input=C2=A0 <br>
                      (sc16 too). Am I wrong=3F Or is there specific setu=
p
                      I have forgotten=3F<br>
                      Has someone successfully used this block, and can
                      provide an example or=C2=A0 <br>
                      tutorial=3F<br>
                      <br>
                      Regards,<br>
                      <br>
                      Camille<br>
                      =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F<br>
                      USRP-users mailing list -- <a
                        href=3D=22mailto:usrp-users=40lists.ettus.com=22
                        target=3D=22=5Fblank=22 moz-do-not-send=3D=22true=
=22
                        class=3D=22moz-txt-link-freetext=22>usrp-users=40=
lists.ettus.com</a><br>
                      To unsubscribe send an email to <a
                        href=3D=22mailto:usrp-users-leave=40lists.ettus.c=
om=22
                        target=3D=22=5Fblank=22 moz-do-not-send=3D=22true=
=22
                        class=3D=22moz-txt-link-freetext=22>usrp-users-le=
ave=40lists.ettus.com</a><br>
                    </blockquote>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--36883ccf26138dd369346e4d24ccdce1--

--===============3669269420938249435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3669269420938249435==--
