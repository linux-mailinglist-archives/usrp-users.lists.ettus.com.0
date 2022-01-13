Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E3448DCD4
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 18:20:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95093384B5D
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 12:20:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=univ-ubs.fr header.i=@univ-ubs.fr header.b="Pb8tuJKA";
	dkim-atps=neutral
Received: from smtpout02-ext4.partage.renater.fr (smtpout02-ext4.partage.renater.fr [194.254.241.31])
	by mm2.emwd.com (Postfix) with ESMTP id AD1C0384AFF
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 12:19:47 -0500 (EST)
Received: from zmtaout02.partage.renater.fr (zmtaout02.partage.renater.fr [194.254.241.30])
	by smtpout20.partage.renater.fr (Postfix) with ESMTP id 872E3C0B84;
	Thu, 13 Jan 2022 18:19:44 +0100 (CET)
Received: from zmtaout02.partage.renater.fr (localhost [127.0.0.1])
	by zmtaout02.partage.renater.fr (Postfix) with ESMTPS id 7069D20EE5;
	Thu, 13 Jan 2022 18:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zmtaout02.partage.renater.fr (Postfix) with ESMTP id 554E920EE3;
	Thu, 13 Jan 2022 18:19:44 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zmtaout02.partage.renater.fr 554E920EE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=univ-ubs.fr;
	s=17793E05-77B4-4C60-8F0C-0A8087DD0087; t=1642094384;
	bh=waD7N8KsgaDd184qgAepui6e/EWq15fF54I1TGk6Haw=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=Pb8tuJKAo/wxdFAARbzNXsywOR41CLjk9eXtN5RWXa+BnrU/Jq5I6RNypiNiX8Bxi
	 1ywnrg+W5D+EdZd3ridBQWioXgdL9fqjM8crxhNeFZ4V1zy9cZHSg5bypeLgYCruHD
	 gU01gzG1GyIrjRFneO6zsoG7wniUCPgPNn2ZUmPZDgmwqz7Xmsu7Ii2zvIdlT1dGdB
	 sXQqrRlqhyQfSlPg5u160caPLYxEqUNlurR1yrtUOKtn0AzaBYhpa+3fdO2e7glV9C
	 OoR3lgfqkDOYascYyO+RwYVdECe/m60sBOh4UZg61MfyCfmVKZs33om8LMw+22/33f
	 0+CSvPiyXrT5Q==
X-Virus-Scanned: amavisd-new at zmtaout02.partage.renater.fr
Received: from zmtaout02.partage.renater.fr ([127.0.0.1])
	by localhost (zmtaout02.partage.renater.fr [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Cc6-nlNOVKMs; Thu, 13 Jan 2022 18:19:44 +0100 (CET)
Received: from [0.0.0.0] (unknown [194.254.241.250])
	by zmtaout02.partage.renater.fr (Postfix) with ESMTPA id 0624D20EE5;
	Thu, 13 Jan 2022 18:19:43 +0100 (CET)
Message-ID: <b116c657-2bcb-1a05-6999-90fc6033cc2b@univ-ubs.fr>
Date: Thu, 13 Jan 2022 18:19:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Wade Fife <wade.fife@ettus.com>
References: <7a0dba07-cfba-e011-e7d5-d0d7624a6218@univ-ubs.fr>
 <CAFche=gD4oH_m1FXzHPc8E5sgQNOZC_MGV4PoJvi+rX1Sf9wHQ@mail.gmail.com>
 <CAFche=iGqxswZJUA7+3_v46BParz5XXHMoxBiBh3L-+u+gpLSA@mail.gmail.com>
From: Camille Moniere <camille.moniere@univ-ubs.fr>
X-Pep-Version: 2.1
In-Reply-To: <CAFche=iGqxswZJUA7+3_v46BParz5XXHMoxBiBh3L-+u+gpLSA@mail.gmail.com>
X-Renater-Ptge-SpamState: clean
X-Renater-Ptge-SpamScore: -100
Message-ID-Hash: QQ4IC2RX2WKYMMXLT4GWRMRZT3WJLAZJ
X-Message-ID-Hash: QQ4IC2RX2WKYMMXLT4GWRMRZT3WJLAZJ
X-MailFrom: camille.moniere@univ-ubs.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fir Filter RFNoC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QQ4IC2RX2WKYMMXLT4GWRMRZT3WJLAZJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0455233578664338188=="

--===============0455233578664338188==
Content-Language: en-US
Content-Type: multipart/alternative; boundary="3b6a24cf4a5b7abe719308a46ff81cd6"

--3b6a24cf4a5b7abe719308a46ff81cd6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi wade,

I had already linked the =46IR ce to the ce of the =5Fdevice=5F.

Also, this custom image aims only to receive data (so no duc nor SEP for =
=20
TX). I tried to free some space, considering only one UBX-160 is =20
available (so only 1 radio).
I have read in the R=46NoC guide that, for a device to host communication=
, =20
an ingress buffer of size 0 is possible, again to free resources.
A big block is expected to be added in the future...

Here the YAML file I use with rfnoc=5Fimage=5Fbuilder:

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
- =7B srcblk: ddc0, srcport: out=5F0, dstblk: firS, dstport: in=5F0=7D
- =7B srcblk: firS, srcport: out=5F0, dstblk: ep0, dstport: in0=7D
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
- =7B srcblk: =5Fdevice=5F, srcport: ce, dstblk: firS, dstport: ce=7D


I have tried in python and in C++, with UHD and directly with R=46NoC API=
. =20
None succeeded
=46or instance, this is what I do in Python:

importnumpy asnp
importscipy assp
importipywidgets aswidgets
importmatplotlib.pyplot asplt
importuhd
graph =3D uhd.rfnoc.RfnocGraph(=22addr=3D192.168.10.2,dboard=5Fclock=5Fra=
te=3D20e6=22)
radio=5Fcrtl =3D uhd.rfnoc.RadioControl(graph.get=5Fblock(=220/Radio=230=22=
))
ddc=5Fcrtl =3D uhd.rfnoc.DdcBlockControl(graph.get=5Fblock(=220/DDC=230=22=
))
target=5Ffreq =3D 433e6
target=5Fgain =3D 25
target=5Frate =3D 1e6
radio=5Fcrtl.set=5Frx=5Fantenna('RX2', 0)
radio=5Fcrtl.get=5Frx=5Fantenna(0)
actual=5Fgain =3D radio=5Fcrtl.set=5Frx=5Fgain(target=5Fgain, 0)
actual=5Frf=5Ffreq =3D radio=5Fcrtl.set=5Frx=5Ffrequency(target=5Ffreq, 0=
)
target=5Fdsp=5Ffreq =3D actual=5Frf=5Ffreq - target=5Ffreq
actual=5Fdsp=5Ffreq =3D ddc=5Fcrtl.set=5Ffreq(target=5Fdsp=5Ffreq, 0)
clipped=5Frx=5Ffreq =3D actual=5Frf=5Ffreq - actual=5Fdsp=5Ffreq
actual=5Frate =3D ddc=5Fcrtl.set=5Foutput=5Frate(target=5Frate, 0)
fir=5Fstatic =3D uhd.rfnoc.=46ir=46ilterBlockControl(graph.get=5Fblock(=22=
0/=46IR=230=22))
coefficients =3D fir=5Fstatic.get=5Fcoefficients()
fir=5Fstatic.set=5Fcoefficients(coefficients)
coefficients =3D fir=5Fstatic.get=5Fcoefficients()
plt.stem(coefficients)
plt.show()
stream=5Fargs =3D uhd.usrp.StreamArgs(=22fc32=22, =22sc16=22)
recv=5Fstream =3D graph.create=5Frx=5Fstreamer(1, stream=5Fargs)
graph.connect(radio=5Fcrtl.get=5Fblock=5Fid(), 0, ddc=5Fcrtl.get=5Fblock=5F=
id(), 0, =20
=46alse)
graph.connect(ddc=5Fcrtl.get=5Fblock=5Fid(), 0, fir=5Fstatic.get=5Fblock=5F=
id(), 0, =20
=46alse)
graph.connect(fir=5Fstatic.get=5Fblock=5Fid(), 0, recv=5Fstream, 0)
graph.commit()
num=5Fsamps =3D int(1e6) =23 1 MB of data, be aware.
data =3D np.empty((num=5Fsamps), dtype=3Dnp.complex64)
md =3D uhd.types.RXMetadata()
stream=5Fcmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num=5Fdone)
stream=5Fcmd.stream=5Fnow =3D True
stream=5Fcmd.num=5Fsamps =3D num=5Fsamps
stream=5Fcmd.time=5Fspec =3D uhd.types.TimeSpec(1, 0) =23 Wait 1s before =
reception
recv=5Fstream.issue=5Fstream=5Fcmd(stream=5Fcmd)
received=5Fspls =3D recv=5Fstream.recv(data, md, 3.)
print(f'Received =7Bfloat(received=5Fspls):.2e=7Dsamples')
ifmd.error=5Fcode =21=3D md.error=5Fcode.none:
print(f'=5C033=5B1;31m=5BERROR=5D=5C033=5B0m =7Bmd.strerror()=7D')
else:
print(f'Everything went well.')

Without the =46ir (and adapting the code of course), I get my 1e6 data bu=
ffer.

Is there an error I miss, or have I made too much space, deleting =20
important part in the process=3F

On 1/13/22 17:08, Wade =46ife wrote:
> In particular, make sure you have a clock connected to the CE input of =
=20
> the =46IR filter. Something like this in your clk=5Fdomains section:
>
> clk=5Fdomains:
> =C2=A0 =C2=A0 - =7B srcblk: =5Fdevice=5F, srcport: ce, dstblk: fir0, ds=
tport: ce =7D
>
> Wade
>
> On Thu, Jan 13, 2022 at 10:04 AM Wade =46ife <wade.fife=40ettus.com> wr=
ote:
>
>     Hi Camille,
>
>     Maybe you could share your R=46NoC YML file and someone could take =
a
>     look=3F There might be something wrong there.
>
>     Wade
>
>     On Thu, Jan 13, 2022 at 8:32 AM Camille Moniere
>     <camille.moniere=40univ-ubs.fr> wrote:
>
>         Hello everyone,
>
>         I unsuccessfully try to use the =46IR =46ilter R=46NoC block in=

>         reception, in
>         an USRP X310 with a UBX-160 daughterboard on-board.
>         I have tested several topology for the custom image (radio0 -
>         > ddc0 ->
>         fir0 -> ep0 =7C=7C radio0 -> ddc0 -> ep0 + ep1 -> fir0 + fir0 -=
>
>         ep1, for
>         example),
>         with several parameter for the filter (With or without
>         re-loadable
>         coefficients, with or without embedded DSP registers, 21 coef'
>         instead
>         of 41 ...) but it ultimately
>         always fails the same way.
>         When the =46IR is used, I can't retrieve any data. I got an
>         Overflow
>         error, without receiving any samples. Sometimes, I even got a
>         =22Late
>         Command=22 error, even when using=C2=A0 R=46NoC in C++
>         (graph committed immediately before the stream now stream=5Fcmd=
).
>
>         =46or the record, the center frequency is 433 MHz for a samplin=
g
>         rate of 1
>         Msps.
>
>         I assumed the filter output one complex sample (sc16) for each
>         new input
>         (sc16 too). Am I wrong=3F Or is there specific setup I have
>         forgotten=3F
>         Has someone successfully used this block, and can provide an
>         example or
>         tutorial=3F
>
>         Regards,
>
>         Camille
>         =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F
>         USRP-users mailing list -- usrp-users=40lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave=40lists.ettus.=
com
>

--3b6a24cf4a5b7abe719308a46ff81cd6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D=22Content-Type=22 content=3D=22text/html; charset=
=3DUT=46-8=22>
  </head>
  <body>
    Hi wade, <br>
    <br>
    I had already linked the =46IR <tt>ce</tt> to the <tt>ce</tt> of the
    <tt>=5Fdevice=5F</tt>.<br>
    <br>
    Also, this custom image aims only to receive data (so no <tt>duc</tt>=

    nor SEP for TX). I tried to free some space, considering only one
    UBX-160 is available (so only 1 radio).<br>
    I have read in the R=46NoC guide that, for a device to host
    communication, an ingress buffer of size 0 is possible, again to
    free resources.<br>
    A big block is expected to be added in the future...<br>
    <br>
    Here the YAML file I use with <tt>rfnoc=5Fimage=5Fbuilder</tt>:<br>
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
color: =23d4d4d4;=22>: </span><span style=3D=22color: =23ce9178;=22>firS<=
/span><span style=3D=22color: =23d4d4d4;=22>,   </span><span style=3D=22c=
olor: =23569cd6;=22>dstport</span><span style=3D=22color: =23d4d4d4;=22>:=
 </span><span style=3D=22color: =23ce9178;=22>in=5F0</span><span style=3D=
=22color: =23d4d4d4;=22> =7D</span></div><div><span style=3D=22color: =23=
d4d4d4;=22>  - =7B </span><span style=3D=22color: =23569cd6;=22>srcblk</s=
pan><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=22color=
: =23ce9178;=22>firS</span><span style=3D=22color: =23d4d4d4;=22>,   </sp=
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
>: </span><span style=3D=22color: =23ce9178;=22>firS</span><span style=3D=
=22color: =23d4d4d4;=22>,   </span><span style=3D=22color: =23569cd6;=22>=
dstport</span><span style=3D=22color: =23d4d4d4;=22>: </span><span style=3D=
=22color: =23ce9178;=22>ce</span><span style=3D=22color: =23d4d4d4;=22>  =
  =7D</span></div>
</div>
    <br>
    <br>
    I have tried in python and in C++, with UHD and directly with R=46NoC=

    API. None succeeded<br>
    =46or instance, this is what I do in Python:<br>
    <br>
    <div style=3D=22color: =23d4d4d4;background-color: =231e1e1e;font-fam=
ily: 'Droid Sans Mono =46or Powerline', 'Droid Sans Mono', 'monospace', m=
onospace, 'Droid Sans =46allback';font-weight: normal;font-size: 14px;lin=
e-height: 19px;white-space: pre;=22><div><span style=3D=22color: =23c586c=
0;=22>import</span><span style=3D=22color: =23d4d4d4;=22> numpy </span><s=
pan style=3D=22color: =23c586c0;=22>as</span><span style=3D=22color: =23d=
4d4d4;=22> np</span></div><div><span style=3D=22color: =23c586c0;=22>impo=
rt</span><span style=3D=22color: =23d4d4d4;=22> scipy </span><span style=3D=
=22color: =23c586c0;=22>as</span><span style=3D=22color: =23d4d4d4;=22> s=
p</span></div>
<div><span style=3D=22color: =23c586c0;=22>import</span><span style=3D=22=
color: =23d4d4d4;=22> ipywidgets </span><span style=3D=22color: =23c586c0=
;=22>as</span><span style=3D=22color: =23d4d4d4;=22> widgets</span></div>=
<div><span style=3D=22color: =23c586c0;=22>import</span><span style=3D=22=
color: =23d4d4d4;=22> matplotlib.pyplot </span><span style=3D=22color: =23=
c586c0;=22>as</span><span style=3D=22color: =23d4d4d4;=22> plt</span></di=
v>
<div><span style=3D=22color: =23c586c0;=22>import</span><span style=3D=22=
color: =23d4d4d4;=22> uhd</span></div>
<div><span style=3D=22color: =23d4d4d4;=22>graph =3D uhd.rfnoc.RfnocGraph=
(</span><span style=3D=22color: =23ce9178;=22>=22addr=3D192.168.10.2,</sp=
an><span style=3D=22color: =23ce9178;=22>dboard=5Fclock=5Frate=3D20e6</sp=
an><span style=3D=22color: =23ce9178;=22>=22</span><span style=3D=22color=
: =23d4d4d4;=22>)</span><span style=3D=22color: =23ce9178;=22></span></di=
v>
<div><span style=3D=22color: =23d4d4d4;=22>radio=5Fcrtl =3D uhd.rfnoc.Rad=
ioControl(graph.get=5Fblock(</span><span style=3D=22color: =23ce9178;=22>=
=220/Radio=230=22</span><span style=3D=22color: =23d4d4d4;=22>))</span></=
div><div><span style=3D=22color: =23d4d4d4;=22>ddc=5Fcrtl   =3D uhd.rfnoc=
.DdcBlockControl(graph.get=5Fblock(</span><span style=3D=22color: =23ce91=
78;=22>=220/DDC=230=22</span><span style=3D=22color: =23d4d4d4;=22>))

</span></div><div><span style=3D=22color: =23d4d4d4;=22>target=5Ffreq =3D=
 </span><span style=3D=22color: =23b5cea8;=22>433e6</span></div><div><spa=
n style=3D=22color: =23d4d4d4;=22>target=5Fgain =3D </span><span style=3D=
=22color: =23b5cea8;=22>25</span></div><div><span style=3D=22color: =23d4=
d4d4;=22>target=5Frate =3D </span><span style=3D=22color: =23b5cea8;=22>1=
e6</span></div>
<div><span style=3D=22color: =23d4d4d4;=22>radio=5Fcrtl.set=5Frx=5Fantenn=
a(</span><span style=3D=22color: =23ce9178;=22>'RX2'</span><span style=3D=
=22color: =23d4d4d4;=22>, 0)</span></div><div><span style=3D=22color: =23=
d4d4d4;=22>radio=5Fcrtl.get=5Frx=5Fantenna(0)</span></div>
<div><span style=3D=22color: =23d4d4d4;=22>actual=5Fgain    =3D radio=5Fc=
rtl.set=5Frx=5Fgain(target=5Fgain, 0)
</span>
<div><span style=3D=22color: =23d4d4d4;=22>actual=5Frf=5Ffreq  =3D radio=5F=
crtl.set=5Frx=5Ffrequency(target=5Ffreq, 0)</span></div><span style=3D=22=
color: =23d4d4d4;=22></span></div><div><span style=3D=22color: =23d4d4d4;=
=22>target=5Fdsp=5Ffreq =3D actual=5Frf=5Ffreq - target=5Ffreq</span></di=
v><div><span style=3D=22color: =23d4d4d4;=22>actual=5Fdsp=5Ffreq =3D ddc=5F=
crtl.set=5Ffreq(target=5Fdsp=5Ffreq, 0)</span></div><div><span style=3D=22=
color: =23d4d4d4;=22>clipped=5Frx=5Ffreq =3D actual=5Frf=5Ffreq - actual=5F=
dsp=5Ffreq</span></div>
<div><span style=3D=22color: =23d4d4d4;=22>actual=5Frate =3D ddc=5Fcrtl.s=
et=5Foutput=5Frate(target=5Frate, 0)

</span><div style=3D=22color: =23d4d4d4;background-color: =231e1e1e;font-=
family: 'Droid Sans Mono =46or Powerline', 'Droid Sans Mono', 'monospace'=
, monospace, 'Droid Sans =46allback';font-weight: normal;font-size: 14px;=
line-height: 19px;white-space: pre;=22><div><span style=3D=22color: =23d4=
d4d4;=22>fir=5Fstatic   =3D uhd.rfnoc.=46ir=46ilterBlockControl(graph.get=
=5Fblock(</span><span style=3D=22color: =23ce9178;=22>=220/=46IR=230=22</=
span><span style=3D=22color: =23d4d4d4;=22>))
</span><div style=3D=22color: =23d4d4d4;background-color: =231e1e1e;font-=
family: 'Droid Sans Mono =46or Powerline', 'Droid Sans Mono', 'monospace'=
, monospace, 'Droid Sans =46allback';font-weight: normal;font-size: 14px;=
line-height: 19px;white-space: pre;=22><div><span style=3D=22color: =23d4=
d4d4;=22>coefficients =3D </span><span style=3D=22color: =23d4d4d4;=22><s=
pan style=3D=22color: =23d4d4d4;=22>fir=5Fstatic</span>.get=5Fcoefficient=
s()</span></div><div><span style=3D=22color: =23d4d4d4;=22><span style=3D=
=22color: =23d4d4d4;=22>fir=5Fstatic</span>.set=5Fcoefficients(coefficien=
ts)</span></div><div><span style=3D=22color: =23d4d4d4;=22>coefficients =3D=
 </span><span style=3D=22color: =23d4d4d4;=22><span style=3D=22color: =23=
d4d4d4;=22>fir=5Fstatic</span>.get=5Fcoefficients()</span></div><div><spa=
n style=3D=22color: =23d4d4d4;=22>
plt.stem(coefficients)</span></div><div><span style=3D=22color: =23d4d4d4=
;=22>plt.show() </span></div></div>
<span style=3D=22color: =23d4d4d4;=22></span></div></div><div style=3D=22=
color: =23d4d4d4;background-color: =231e1e1e;font-family: 'Droid Sans Mon=
o =46or Powerline', 'Droid Sans Mono', 'monospace', monospace, 'Droid San=
s =46allback';font-weight: normal;font-size: 14px;line-height: 19px;white=
-space: pre;=22><div><span style=3D=22color: =23d4d4d4;=22>stream=5Fargs =
=3D uhd.usrp.StreamArgs(</span><span style=3D=22color: =23ce9178;=22>=22f=
c32=22</span><span style=3D=22color: =23d4d4d4;=22>, </span><span style=3D=
=22color: =23ce9178;=22>=22sc16=22</span><span style=3D=22color: =23d4d4d=
4;=22>)</span></div><div><span style=3D=22color: =23d4d4d4;=22>recv=5Fstr=
eam =3D graph.create=5Frx=5Fstreamer(</span><span style=3D=22color: =23b5=
cea8;=22>1</span><span style=3D=22color: =23d4d4d4;=22>, stream=5Fargs)</=
span></div>
<div><span style=3D=22color: =23d4d4d4;=22>graph.connect(radio=5Fcrtl.get=
=5Fblock=5Fid(), </span><span style=3D=22color: =23b5cea8;=22>0</span><sp=
an style=3D=22color: =23d4d4d4;=22>, ddc=5Fcrtl.get=5Fblock=5Fid(),   </s=
pan><span style=3D=22color: =23b5cea8;=22>0</span><span style=3D=22color:=
 =23d4d4d4;=22>, </span><span style=3D=22color: =23569cd6;=22>=46alse</sp=
an><span style=3D=22color: =23d4d4d4;=22>) </span></div><div><span style=3D=
=22color: =23d4d4d4;=22>graph.connect(ddc=5Fcrtl.get=5Fblock=5Fid(),   </=
span><span style=3D=22color: =23b5cea8;=22>0</span><span style=3D=22color=
: =23d4d4d4;=22>, fir=5Fstatic.get=5Fblock=5Fid(), </span><span style=3D=22=
color: =23b5cea8;=22>0</span><span style=3D=22color: =23d4d4d4;=22>, </sp=
an><span style=3D=22color: =23569cd6;=22>=46alse</span><span style=3D=22c=
olor: =23d4d4d4;=22>)</span></div><div><span style=3D=22color: =23d4d4d4;=
=22>graph.connect(fir=5Fstatic.get=5Fblock=5Fid(), </span><span style=3D=22=
color: =23b5cea8;=22>0</span><span style=3D=22color: =23d4d4d4;=22>, recv=
=5Fstream,               </span><span style=3D=22color: =23b5cea8;=22>0</=
span><span style=3D=22color: =23d4d4d4;=22>) </span></div>
<div><span style=3D=22color: =23d4d4d4;=22>graph.commit()</span></div>
<div><span style=3D=22color: =23d4d4d4;=22>num=5Fsamps =3D </span><span s=
tyle=3D=22color: =234ec9b0;=22>int</span><span style=3D=22color: =23d4d4d=
4;=22>(</span><span style=3D=22color: =23b5cea8;=22>1e6</span><span style=
=3D=22color: =23d4d4d4;=22>) </span><span style=3D=22color: =236a9955;=22=
>=23 1 MB of data, be aware.</span></div>
<div><span style=3D=22color: =23d4d4d4;=22>data       =3D np.empty((num=5F=
samps), </span><span style=3D=22color: =239cdcfe;=22>dtype</span><span st=
yle=3D=22color: =23d4d4d4;=22>=3Dnp.complex64)</span></div><div><span sty=
le=3D=22color: =23d4d4d4;=22>md         =3D uhd.types.RXMetadata()</span>=
</div><div><span style=3D=22color: =23d4d4d4;=22>stream=5Fcmd =3D uhd.typ=
es.StreamCMD(uhd.types.StreamMode.num=5Fdone)</span></div>
<div><span style=3D=22color: =23d4d4d4;=22>stream=5Fcmd.stream=5Fnow =3D =
</span><span style=3D=22color: =23569cd6;=22>True</span></div><div><span =
style=3D=22color: =23d4d4d4;=22>stream=5Fcmd.num=5Fsamps  =3D num=5Fsamps=
</span></div><div><span style=3D=22color: =23d4d4d4;=22>stream=5Fcmd.time=
=5Fspec  =3D uhd.types.TimeSpec(</span><span style=3D=22color: =23b5cea8;=
=22>1</span><span style=3D=22color: =23d4d4d4;=22>, </span><span style=3D=
=22color: =23b5cea8;=22>0</span><span style=3D=22color: =23d4d4d4;=22>) <=
/span><span style=3D=22color: =236a9955;=22>=23 Wait 1s before reception<=
/span></div>
<div><span style=3D=22color: =23d4d4d4;=22>recv=5Fstream.issue=5Fstream=5F=
cmd(stream=5Fcmd)</span></div><div><span style=3D=22color: =23d4d4d4;=22>=
received=5Fspls =3D recv=5Fstream.recv(data, md, </span><span style=3D=22=
color: =23b5cea8;=22>3</span><span style=3D=22color: =23d4d4d4;=22>.)</sp=
an></div>
<div><span style=3D=22color: =23dcdcaa;=22>print</span><span style=3D=22c=
olor: =23d4d4d4;=22>(</span><span style=3D=22color: =23569cd6;=22>f</span=
><span style=3D=22color: =23ce9178;=22>'Received </span><span style=3D=22=
color: =23569cd6;=22>=7B</span><span style=3D=22color: =234ec9b0;=22>floa=
t</span><span style=3D=22color: =23d4d4d4;=22>(received=5Fspls)</span><sp=
an style=3D=22color: =23569cd6;=22>:.2e=7D</span><span style=3D=22color: =
=23ce9178;=22> samples'</span><span style=3D=22color: =23d4d4d4;=22>)</sp=
an></div>
<div><span style=3D=22color: =23c586c0;=22>if</span><span style=3D=22colo=
r: =23d4d4d4;=22> md.error=5Fcode =21=3D md.error=5Fcode.none:</span></di=
v><div><span style=3D=22color: =23d4d4d4;=22>    </span><span style=3D=22=
color: =23dcdcaa;=22>print</span><span style=3D=22color: =23d4d4d4;=22>(<=
/span><span style=3D=22color: =23569cd6;=22>f</span><span style=3D=22colo=
r: =23ce9178;=22>'</span><span style=3D=22color: =23d7ba7d;=22>=5C033</sp=
an><span style=3D=22color: =23ce9178;=22>=5B1;31m=5BERROR=5D</span><span =
style=3D=22color: =23d7ba7d;=22>=5C033</span><span style=3D=22color: =23c=
e9178;=22>=5B0m </span><span style=3D=22color: =23569cd6;=22>=7B</span><s=
pan style=3D=22color: =23d4d4d4;=22>md.strerror()</span><span style=3D=22=
color: =23569cd6;=22>=7D</span><span style=3D=22color: =23ce9178;=22>'</s=
pan><span style=3D=22color: =23d4d4d4;=22>)</span></div><div><span style=3D=
=22color: =23c586c0;=22>else</span><span style=3D=22color: =23d4d4d4;=22>=
:</span></div><div><span style=3D=22color: =23d4d4d4;=22>    </span><span=
 style=3D=22color: =23dcdcaa;=22>print</span><span style=3D=22color: =23d=
4d4d4;=22>(</span><span style=3D=22color: =23569cd6;=22>f</span><span sty=
le=3D=22color: =23ce9178;=22>'Everything went well.'</span><span style=3D=
=22color: =23d4d4d4;=22>)</span></div></div><span style=3D=22color: =23d4=
d4d4;=22></span></div></div>
    <br>
    Without the =46ir (and adapting the code of course), I get my 1e6 dat=
a
    buffer.<br>
    <br>
    Is there an error I miss, or have I made too much space, deleting
    important part in the process=3F<br>
    <br>
    <div class=3D=22moz-cite-prefix=22>On 1/13/22 17:08, Wade =46ife wrot=
e:<br>
    </div>
    <blockquote type=3D=22cite=22
cite=3D=22mid:CA=46che=3DiGqxswZJUA7+3=5Fv46BParz5XXHMoxBiBh3L-+u+gpLSA=40=
mail.gmail.com=22>
      <meta http-equiv=3D=22content-type=22 content=3D=22text/html; chars=
et=3DUT=46-8=22>
      <div dir=3D=22ltr=22>
        <div>In particular, make sure you have a clock connected to the
          CE input of the =46IR filter. Something like this in your
          clk=5Fdomains section:</div>
        <div><br>
        </div>
        <div>clk=5Fdomains:</div>
        <div>=C2=A0 =C2=A0 - =7B srcblk: =5Fdevice=5F, srcport: ce, dstbl=
k: fir0,
          dstport: ce =7D</div>
        <div><br>
        </div>
        <div>Wade<br>
        </div>
      </div>
      <br>
      <div class=3D=22gmail=5Fquote=22>
        <div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Thu, Jan 13, 2=
022 at 10:04
          AM Wade =46ife &lt;<a href=3D=22mailto:wade.fife=40ettus.com=22=

            moz-do-not-send=3D=22true=22 class=3D=22moz-txt-link-freetext=
=22>wade.fife=40ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px=
 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22=
>
          <div dir=3D=22ltr=22>
            <div>Hi Camille,</div>
            <div><br>
            </div>
            <div>Maybe you could share your R=46NoC YML file and someone
              could take a look=3F There might be something wrong there.<=
/div>
            <div><br>
            </div>
            <div>Wade<br>
            </div>
          </div>
          <br>
          <div class=3D=22gmail=5Fquote=22>
            <div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Thu, Jan 1=
3, 2022 at
              8:32 AM Camille Moniere &lt;<a
                href=3D=22mailto:camille.moniere=40univ-ubs.fr=22
                target=3D=22=5Fblank=22 moz-do-not-send=3D=22true=22
                class=3D=22moz-txt-link-freetext=22>camille.moniere=40uni=
v-ubs.fr</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px=
 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex=22>Hello everyone,<br>
              <br>
              I unsuccessfully try to use the =46IR =46ilter R=46NoC bloc=
k in
              reception, in=C2=A0 <br>
              an USRP X310 with a UBX-160 daughterboard on-board.<br>
              I have tested several topology for the custom image
              (radio0 - &gt; ddc0 -&gt;=C2=A0 <br>
              fir0 -&gt; ep0 =7C=7C radio0 -&gt; ddc0 -&gt; ep0 + ep1 -&g=
t;
              fir0 + fir0 -&gt; ep1, for=C2=A0 <br>
              example),<br>
              with several parameter for the filter (With or without
              re-loadable=C2=A0 <br>
              coefficients, with or without embedded DSP registers, 21
              coef' instead=C2=A0 <br>
              of 41 ...) but it ultimately<br>
              always fails the same way.<br>
              When the =46IR is used, I can't retrieve any data. I got an=

              Overflow=C2=A0 <br>
              error, without receiving any samples. Sometimes, I even
              got a =22Late=C2=A0 <br>
              Command=22 error, even when using=C2=A0 R=46NoC in C++<br>
              (graph committed immediately before the stream now
              stream=5Fcmd).<br>
              <br>
              =46or the record, the center frequency is 433 MHz for a
              sampling rate of 1=C2=A0 <br>
              Msps.<br>
              <br>
              I assumed the filter output one complex sample (sc16) for
              each new input=C2=A0 <br>
              (sc16 too). Am I wrong=3F Or is there specific setup I have=

              forgotten=3F<br>
              Has someone successfully used this block, and can provide
              an example or=C2=A0 <br>
              tutorial=3F<br>
              <br>
              Regards,<br>
              <br>
              Camille<br>
              =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F<br>
              USRP-users mailing list -- <a
                href=3D=22mailto:usrp-users=40lists.ettus.com=22 target=3D=
=22=5Fblank=22
                moz-do-not-send=3D=22true=22 class=3D=22moz-txt-link-free=
text=22>usrp-users=40lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D=22mailto:usrp-users-leave=40lists.ettus.com=22
                target=3D=22=5Fblank=22 moz-do-not-send=3D=22true=22
                class=3D=22moz-txt-link-freetext=22>usrp-users-leave=40li=
sts.ettus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--3b6a24cf4a5b7abe719308a46ff81cd6--

--===============0455233578664338188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0455233578664338188==--
