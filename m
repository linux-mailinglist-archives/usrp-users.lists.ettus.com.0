Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FE2344C10
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 17:46:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAC11383E44
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 12:46:02 -0400 (EDT)
Received: from dd22108.kasserver.com (dd22108.kasserver.com [85.13.141.232])
	by mm2.emwd.com (Postfix) with ESMTPS id 873073834A5
	for <usrp-users@lists.ettus.com>; Mon, 22 Mar 2021 12:45:08 -0400 (EDT)
Received: from [10.11.44.20] (office-ks.dedrone.com [80.69.200.138])
	by dd22108.kasserver.com (Postfix) with ESMTPSA id E064D4420084;
	Mon, 22 Mar 2021 17:45:06 +0100 (CET)
From: Julian Arnold <julian@elitecoding.org>
Mime-Version: 1.0 (1.0)
Date: Mon, 22 Mar 2021 17:45:05 +0100
Message-Id: <8CD94AFC-A834-4BB8-BA99-9A86BCED2A47@elitecoding.org>
References: <CAG16vQXTUpAt93YdLhTvSpZ-4FLpOn09Seu=kQTP5OK8DyHoTQ@mail.gmail.com>
In-Reply-To: <CAG16vQXTUpAt93YdLhTvSpZ-4FLpOn09Seu=kQTP5OK8DyHoTQ@mail.gmail.com>
To: =?utf-8?Q?Maria_Mu=C3=B1oz?= <mamuki92@gmail.com>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: AB25R2M6XC3Q5H7JVOAIESBKXYH66CWQ
X-Message-ID-Hash: AB25R2M6XC3Q5H7JVOAIESBKXYH66CWQ
X-MailFrom: julian@elitecoding.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Enable AGC in USRP E320 with RFNoC using GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AB25R2M6XC3Q5H7JVOAIESBKXYH66CWQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6965107096769330130=="


--===============6965107096769330130==
Content-Type: multipart/alternative; boundary=Apple-Mail-2B88E724-80C3-49B2-9ACE-0C2F435AACB7
Content-Transfer-Encoding: 7bit


--Apple-Mail-2B88E724-80C3-49B2-9ACE-0C2F435AACB7
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Maria,

would you mind sharing your patch? Otherwise, it=E2=80=99s hard to tell what=
 exactly is going on.

Cheers,
Julian

> Am 22.03.2021 um 16:24 schrieb Maria Mu=C3=B1oz <mamuki92@gmail.com>:
>=20
> =EF=BB=BF
> Hi Julian,
>=20
> I re-open this topic to ask a question about the configuration of the ad93=
61 registers in GNUradio/RFNoC
>=20
> As I understand, when AGC is enabled in slow mode, there are 4 configurabl=
e thresholds (inner low, inner high, outer low, and outer high) and also 4 c=
onfigurable steps to reach the zone between the inner thresholds.
>=20
> I have found the configuration of these registers in /uhd/host/lib/usrp/co=
mmon/ad9361_driver/ad9361_device.cpp and changed their values there. Then, I=
 have recompiled uhd (make & make install) but, when I re-run my graph I see=
 no change in my waveform (it seem to stay in the same limits as the default=
 configuration).
>=20
> Am I missing any other step that I have to done to configure these paramet=
ers?=20
>=20
> Kind Regards,
>=20
> Maria
>=20
> El vie, 12 mar 2021 a las 10:04, Maria Mu=C3=B1oz (<mamuki92@gmail.com>) e=
scribi=C3=B3:
>> Ok Julian, I will check the tree node and try to modify the properties. T=
hanks again for the help!
>>=20
>> Kind Regards,
>> Maria
>>=20
>> El jue, 11 mar 2021 a las 18:26, Julian Arnold (<julian@elitecoding.org>)=
 escribi=C3=B3:
>>> Maria,
>>>=20
>>> >> /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
>>> >>=20
>>> >> but I have received the following errorThat's why I gave the referenc=
e ([1]) showing the correct syntax ;)
>>> Anyways, glad it worked out for you!
>>> You might consider filing a bug issue against gr-ettus on github.
>>>=20
>>> >> By the way, I have read that there are several modes for AGC=20
>>> >> (fast,slow,hybrid..) I was wondering which type is implemented by=20
>>> >> default and if it is possible to change AGC mode in the flowgraph.
>>> Those modes were mainly dictated by the AD9361. Default should be=20
>>> "slow". The "hybrid" mode is not implemented as far as I know.
>>> Which mode you want ("slow" / "fast") depends on the signal you want to
>>> receive. For burst-mode digital signals you might want to switch to the=20=

>>> "fast" mode.
>>> However, I think this is only possible by directly writing
>>> to the corresponding property-tree node. Again, I'm not sure about=20
>>> UHD-4.0/gr-ettus though.
>>>=20
>>> Cheers,
>>> Julian
>>>=20
>>>=20
>>> On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wrote:
>>> > Hi Julian,
>>> >=20
>>> > I have initially changed the python generated for my flowgraph with th=
is=20
>>> > line:
>>> >=20
>>> > /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
>>> >=20
>>> > but I have received the following error:
>>> >=20
>>> > T/raceback (most recent call last):
>>> >    File "constellation_soft_decoder.py", line 301, in <module>
>>> >      main()
>>> >    File "constellation_soft_decoder.py", line 277, in main
>>> >      tb =3D top_block_cls()
>>> >    File "constellation_soft_decoder.py", line 166, in __init__
>>> >      self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, 0)
>>> > AttributeError: 'rfnoc_rx_radio_sptr' object has no attribute 'set_rx_=
agc'/
>>> >=20
>>> > But rfnoc_radio_impl.cc defines it:
>>> >=20
>>> > /void rfnoc_rx_radio_impl::set_agc(const bool enable, const size_t cha=
n)
>>> > {
>>> >      return d_radio_ref->set_rx_agc(enable, chan);
>>> > }/
>>> >=20
>>> > Searching the rfnoc_rx_radio_sptr with grep takes me to "swig" files. I=
=20
>>> > have looked at ettus_swig.py and seen that the command name is set_agc=
=20
>>> > instead of set_rx_agc:
>>> >=20
>>> > /def set_agc(self, enable: "bool const", chan: "size_t const") -> "voi=
d":
>>> >          r"""
>>> >          set_agc(rfnoc_rx_radio self, bool const enable, size_t const c=
han)
>>> >          Enable/disable the AGC for this RX radio (if available)
>>> >          """
>>> >          return _ettus_swig.rfnoc_rx_radio_set_agc(self, enable, chan)=
/
>>> > /
>>> > /
>>> > Changing this in the flowgraph.py seems to work!! Thanks for the help o=
n=20
>>> > this! I put this information here just in case someone is stuck in the=

>>> > same point.
>>> >=20
>>> > By the way, I have read that there are several modes for AGC=20
>>> > (fast,slow,hybrid..) I was wondering which type is implemented by=20
>>> > default and if it is possible to change AGC mode in the flowgraph.
>>> >=20
>>> > Kind Regards,
>>> >=20
>>> > Maria
>>> >=20
>>> >=20
>>> > El mi=C3=A9, 10 mar 2021 a las 12:03, Maria Mu=C3=B1oz (<mamuki92@gmai=
l.com=20
>>> > <mailto:mamuki92@gmail.com>>) escribi=C3=B3:
>>> >=20
>>> >     Hi Jules,
>>> >=20
>>> >     Thank you, I will try it and let you know as soon as possible.
>>> >=20
>>> >     By the way, I have checked the python generated using the UHD USRP=

>>> >     SOURCE block (instead of the RFNoC radio block) with AGC active an=
d
>>> >     it generates the set of AGC fine. So, as you said, it is fixed in
>>> >     gr-uhd but it might still be a bug in gr-ettus.
>>> >=20
>>> >     Thanks again for the help!
>>> >=20
>>> >     Kind Regards,
>>> >=20
>>> >     Maria
>>> >=20
>>> >     El mi=C3=A9, 10 mar 2021 a las 11:25, Julian Arnold
>>> >     (<julian@elitecoding.org <mailto:julian@elitecoding.org>>) escribi=
=C3=B3:
>>> >=20
>>> >         Maria,
>>> >=20
>>> >          >> So, if I understand correctly, I have to put there also
>>> >         something like
>>> >          >> "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't i=
t?
>>> >=20
>>> >         Exactly! Take a look at [1] for the correct syntax.
>>> >=20
>>> >         [1]
>>> >         https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a28=
03b53554fc4971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
>>> >=20
>>> >         Let me know if that worked out for you.
>>> >=20
>>> >         Cheers,
>>> >         Julian
>>> >=20
>>> >=20
>>> >         On 3/10/21 9:59 AM, Maria Mu=C3=B1oz wrote:
>>> >          > Hi Julian,
>>> >          >
>>> >          > Thanks for the quick answer.
>>> >          >
>>> >          > I think you might be right about the possible bug turning o=
n
>>> >         the AGC
>>> >          > from GRC. I have checked the flow graph generated and there=
's no
>>> >          > set_rx_agc enable option (I checked the c++ definition bloc=
k
>>> >         where this
>>> >          > option did appear but I hadn't look at the python generated=
).
>>> >          >
>>> >          > The lines related to the radio in my flowgraph are these:
>>> >          >
>>> >          > /self.ettus_rfnoc_rx_radio_0 =3D ettus.rfnoc_rx_radio(
>>> >          >              self.rfnoc_graph,
>>> >          >              uhd.device_addr(''),
>>> >          >              -1,
>>> >          >              -1)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rat=
e, 0)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)=

>>> >          >          self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0=
)/
>>> >          >
>>> >          > So, if I understand correctly, I have to put there also
>>> >         something like
>>> >          > "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't it=
?
>>> >          >
>>> >          > Kind Regards,
>>> >          >
>>> >          > Maria
>>> >          >
>>> >          > El mi=C3=A9, 10 mar 2021 a las 9:16, Julian Arnold
>>> >         (<julian@elitecoding.org <mailto:julian@elitecoding.org>
>>> >          > <mailto:julian@elitecoding.org
>>> >         <mailto:julian@elitecoding.org>>>) escribi=C3=B3:
>>> >          >
>>> >          >     Maria,
>>> >          >
>>> >          >     I might not be the right person to answer this, as my
>>> >         experience with
>>> >          >     UHD 4.0 is relatively limited at the moment.
>>> >          >
>>> >          >     However, I cant tell you that the AGC on B2x0 devices i=
s
>>> >         controlled via
>>> >          >     software (using set_rx_agc()). There is no need to
>>> >         directly modify the
>>> >          >     state of any pins of the FPGA.
>>> >          >
>>> >          >     I vaguely remember that there was a bug in an earlier
>>> >         version of gr-uhd
>>> >          >     (somewhere in 3.7) that made it difficult to turn on th=
e
>>> >         AGC using GRC.
>>> >          >     That particular one is fixed in gr-uhd. Not sure about
>>> >         gr-ettus, though.
>>> >          >
>>> >          >     Maybe try using set_rx_agc() manually in you flow-graph=

>>> >         (*.py) and see
>>> >          >     if that helps.
>>> >          >
>>> >          >     Cheers,
>>> >          >     Julian
>>> >          >
>>> >          >     On 3/9/21 5:11 PM, Maria Mu=C3=B1oz via USRP-users wrot=
e:
>>> >          >      > Hi all,
>>> >          >      >
>>> >          >      > I was wondering if it is possible to enable AGC from=

>>> >         the RFNoC radio
>>> >          >      > block in GNURadio. I use UHD 4.0 version and GNURadi=
o
>>> >         3.8 with
>>> >          >     gr-ettus.
>>> >          >      >
>>> >          >      > I see that the RFNoC Rx radio block has an
>>> >         enable/disable/default
>>> >          >     AGC
>>> >          >      > option in the GNURadio block which I assume calls th=
e
>>> >         UHD function
>>> >          >      > "set_rx_agc"
>>> >          >      >
>>> >          >  =20
>>> >           (https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__u=
srp.html#abdab1f6c3775a9071b15c9805f866486)
>>> >          >      >
>>> >          >      > I have also checked on the FPGA side that there is a=

>>> >         pin from
>>> >          >     FPGA to
>>> >          >      > AD9361 called XCVR_ENA_AGC which is set always to 1 o=
n
>>> >         the top
>>> >          >     level of
>>> >          >      > the FPGA image (see attached file "e320.v", line 872=
).
>>> >         This pin,
>>> >          >      > according to
>>> >          >      >
>>> >          >
>>> >         https://www.analog.com/media/en/technical-documentation/data-s=
heets/AD9361.pdf
>>> >          >
>>> >          >      > is the "Manual Control Input for Automatic Gain
>>> >         Control (AGC)".
>>> >          >      > Must be this pin set to 0 to have AGC working?
>>> >          >      > If not, how can I get AGC working? I've made some te=
sts
>>> >          >      > enabling/disabling this option but I do not see any
>>> >         changes
>>> >          >     between the
>>> >          >      > waveforms received.
>>> >          >      >
>>> >          >      > Any help would be appreciated.
>>> >          >      >
>>> >          >      > Kind Regards,
>>> >          >      >
>>> >          >      > Maria
>>> >          >      >
>>> >          >      > _______________________________________________
>>> >          >      > USRP-users mailing list
>>> >          >      > USRP-users@lists.ettus.com
>>> >         <mailto:USRP-users@lists.ettus.com>
>>> >         <mailto:USRP-users@lists.ettus.com
>>> >         <mailto:USRP-users@lists.ettus.com>>
>>> >          >      >
>>> >         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com
>>> >          >      >
>>> >          >
>>> >=20

--Apple-Mail-2B88E724-80C3-49B2-9ACE-0C2F435AACB7
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Maria,<div><br></div><div>would you mind sh=
aring your patch? Otherwise, it=E2=80=99s hard to tell what exactly is going=
 on.</div><div><br></div><div>Cheers,<br>Julian<br><div dir=3D"ltr"><br><blo=
ckquote type=3D"cite">Am 22.03.2021 um 16:24 schrieb Maria Mu=C3=B1oz &lt;ma=
muki92@gmail.com&gt;:<br><br></blockquote></div><blockquote type=3D"cite"><d=
iv dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi Julian,<div><br></div><div>I re-=
open this topic to ask a question about the configuration of the ad9361 regi=
sters in GNUradio/RFNoC</div><div><br></div><div>As I understand, when AGC i=
s enabled&nbsp;in slow mode, there are 4 configurable thresholds (inner low,=
 inner high, outer&nbsp;low, and outer&nbsp;high) and also 4 configurable st=
eps to reach the zone between&nbsp;the inner thresholds.</div><div><br></div=
><div>I have found the configuration of these registers in<font face=3D"aria=
l, sans-serif" color=3D"#000000">&nbsp;/uhd/host/lib/usrp/common/ad9361_driv=
er/ad9361_device.cpp and</font><span style=3D"color:rgb(0,0,0);font-family:a=
rial,sans-serif">&nbsp;changed their values there. Then, I have recompiled u=
hd (make &amp; make install) but, when I re-run my graph I see no change in m=
y waveform (it seem to stay in the same limits as the default configuration)=
.</span></div><div><font face=3D"arial, sans-serif" color=3D"#000000"><br></=
font></div><div><font face=3D"arial, sans-serif" style=3D""><font color=3D"#=
000000">Am I missing&nbsp;any&nbsp;other&nbsp;step that I have to done&nbsp;=
to configure these parameters?</font><font color=3D"#172b4d">&nbsp;</font></=
font></div><div><font face=3D"arial, sans-serif" style=3D""><font color=3D"#=
172b4d"><br></font></font></div><div><font face=3D"arial, sans-serif" style=3D=
"" color=3D"#000000">Kind Regards,</font></div><div><font face=3D"arial, san=
s-serif" style=3D"" color=3D"#000000"><br></font></div><div><font face=3D"ar=
ial, sans-serif" style=3D"" color=3D"#000000">Maria</font></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El vie, 12 ma=
r 2021 a las 10:04, Maria Mu=C3=B1oz (&lt;<a href=3D"mailto:mamuki92@gmail.c=
om">mamuki92@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">Ok Julian, I will check the tr=
ee node and try to modify the properties. Thanks again for the help!<div><br=
></div><div>Kind Regards,</div><div>Maria</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 11 mar 2021 a las 18:2=
6, Julian Arnold (&lt;<a href=3D"mailto:julian@elitecoding.org" target=3D"_b=
lank">julian@elitecoding.org</a>&gt;) escribi=C3=B3:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Maria,<br>
<br>
&gt;&gt; /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/<br>
&gt;&gt; <br>
&gt;&gt; but I have received the following errorThat's why I gave the refere=
nce ([1]) showing the correct syntax ;)<br>
Anyways, glad it worked out for you!<br>
You might consider filing a bug issue against gr-ettus on github.<br>
<br>
&gt;&gt; By the way, I have read that there are several modes for AGC <br>
&gt;&gt; (fast,slow,hybrid..) I was wondering which type is implemented by <=
br>
&gt;&gt; default and if it is possible to change AGC mode in the flowgraph.<=
br>
Those modes were mainly dictated by the AD9361. Default should be <br>
"slow". The "hybrid" mode is not implemented as far as I know.<br>
Which mode you want ("slow" / "fast") depends on the signal you want to<br>
receive. For burst-mode digital signals you might want to switch to the <br>=

"fast" mode.<br>
However, I think this is only possible by directly writing<br>
to the corresponding property-tree node. Again, I'm not sure about <br>
UHD-4.0/gr-ettus though.<br>
<br>
Cheers,<br>
Julian<br>
<br>
<br>
On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wrote:<br>
&gt; Hi Julian,<br>
&gt; <br>
&gt; I have initially changed the python generated for my flowgraph with thi=
s <br>
&gt; line:<br>
&gt; <br>
&gt; /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/<br>
&gt; <br>
&gt; but I have received the following error:<br>
&gt; <br>
&gt; T/raceback (most recent call last):<br>
&gt;&nbsp; &nbsp; File "constellation_soft_decoder.py", line 301, in &lt;mod=
ule&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; main()<br>
&gt;&nbsp; &nbsp; File "constellation_soft_decoder.py", line 277, in main<br=
>
&gt;&nbsp; &nbsp; &nbsp; tb =3D top_block_cls()<br>
&gt;&nbsp; &nbsp; File "constellation_soft_decoder.py", line 166, in __init_=
_<br>
&gt;&nbsp; &nbsp; &nbsp; self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, 0)<br>=

&gt; AttributeError: 'rfnoc_rx_radio_sptr' object has no attribute 'set_rx_a=
gc'/<br>
&gt; <br>
&gt; But rfnoc_radio_impl.cc defines it:<br>
&gt; <br>
&gt; /void rfnoc_rx_radio_impl::set_agc(const bool enable, const size_t chan=
)<br>
&gt; {<br>
&gt;&nbsp; &nbsp; &nbsp; return d_radio_ref-&gt;set_rx_agc(enable, chan);<br=
>
&gt; }/<br>
&gt; <br>
&gt; Searching the rfnoc_rx_radio_sptr with grep takes me to "swig" files. I=
 <br>
&gt; have looked at ettus_swig.py and seen that the command name is set_agc <=
br>
&gt; instead of set_rx_agc:<br>
&gt; <br>
&gt; /def set_agc(self, enable: "bool const", chan: "size_t const") -&gt; "v=
oid":<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; r"""<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; set_agc(rfnoc_rx_radio self, bool con=
st enable, size_t const chan)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Enable/disable the AGC for this RX ra=
dio (if available)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; """<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return _ettus_swig.rfnoc_rx_radio_set=
_agc(self, enable, chan)/<br>
&gt; /<br>
&gt; /<br>
&gt; Changing this in the flowgraph.py seems to work!! Thanks for the help o=
n <br>
&gt; this! I put this information here just in case someone is stuck in the <=
br>
&gt; same point.<br>
&gt; <br>
&gt; By the way, I have read that there are several modes for AGC <br>
&gt; (fast,slow,hybrid..) I was wondering which type is implemented by <br>
&gt; default and if it is possible to change AGC mode in the flowgraph.<br>
&gt; <br>
&gt; Kind Regards,<br>
&gt; <br>
&gt; Maria<br>
&gt; <br>
&gt; <br>
&gt; El mi=C3=A9, 10 mar 2021 a las 12:03, Maria Mu=C3=B1oz (&lt;<a href=3D"=
mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamu=
ki92@gmail.com</a>&gt;&gt;) escribi=C3=B3:<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;Hi Jules,<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;Thank you, I will try it and&nbsp;let you know as so=
on as possible.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;By the way, I have checked the python generated&nbsp=
;using the UHD USRP<br>
&gt;&nbsp; &nbsp; &nbsp;SOURCE block (instead of the RFNoC radio block) with=
 AGC active and<br>
&gt;&nbsp; &nbsp; &nbsp;it generates the set of AGC fine. So, as you said, i=
t is fixed in<br>
&gt;&nbsp; &nbsp; &nbsp;gr-uhd but it might still be a bug in gr-ettus.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;Thanks again for the help!<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;Kind Regards,<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;Maria<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;El mi=C3=A9, 10 mar 2021 a las 11:25, Julian Arnold<=
br>
&gt;&nbsp; &nbsp; &nbsp;(&lt;<a href=3D"mailto:julian@elitecoding.org" targe=
t=3D"_blank">julian@elitecoding.org</a> &lt;mailto:<a href=3D"mailto:julian@=
elitecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;) escri=
bi=C3=B3:<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Maria,<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt; So, if I understand correctl=
y, I have to put there also<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;something like<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt; "self.ettus_rfnoc_rx_radio_0=
.set_rx_agc(enable,0)" isn't it?<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exactly! Take a look at [1] for the co=
rrect syntax.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[1]<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=3D"https://github.com/EttusRes=
earch/gr-ettus/blob/1038c4ce5135a2803b53554fc4971fe3de747d9a/include/ettus/r=
fnoc_rx_radio.h#L97" rel=3D"noreferrer" target=3D"_blank">https://github.com=
/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc4971fe3de747d9a/includ=
e/ettus/rfnoc_rx_radio.h#L97</a><br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Let me know if that worked out for you=
.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Cheers,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Julian<br>
&gt; <br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;On 3/10/21 9:59 AM, Maria Mu=C3=B1oz w=
rote:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Hi Julian,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Thanks for the quick answer.<br>=

&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; I think you might be right about=
 the possible bug turning on<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;the AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; from GRC. I have checked the flo=
w graph generated and there's no<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; set_rx_agc enable option (I chec=
ked the c++ definition block<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;where this<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; option did appear but I hadn't l=
ook at the python generated).<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; The lines related to the radio i=
n my flowgraph are these:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; /self.ettus_rfnoc_rx_radio_0 =3D=
 ettus.rfnoc_rx_radio(<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; self.rfnoc_graph,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; uhd.device_addr(''),<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; -1,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; -1)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)/<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; So, if I understand correctly, I=
 have to put there also<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;something like<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; "self.ettus_rfnoc_rx_radio_0.set=
_rx_agc(enable,0)" isn't it?<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Kind Regards,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Maria<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; El mi=C3=A9, 10 mar 2021 a las 9=
:16, Julian Arnold<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(&lt;<a href=3D"mailto:julian@elitecod=
ing.org" target=3D"_blank">julian@elitecoding.org</a> &lt;mailto:<a href=3D"=
mailto:julian@elitecoding.org" target=3D"_blank">julian@elitecoding.org</a>&=
gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &lt;mailto:<a href=3D"mailto:jul=
ian@elitecoding.org" target=3D"_blank">julian@elitecoding.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;&gt;) esc=
ribi=C3=B3:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;Maria,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;I might not b=
e the right person to answer this, as my<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;experience with<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;UHD 4.0 is re=
latively limited at the moment.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;However, I ca=
nt tell you that the AGC on B2x0 devices is<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;controlled via<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;software (usi=
ng set_rx_agc()). There is no need to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;directly modify the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;state of any p=
ins of the FPGA.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;I vaguely rem=
ember that there was a bug in an earlier<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;version of gr-uhd<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;(somewhere in=
 3.7) that made it difficult to turn on the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;AGC using GRC.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;That particul=
ar one is fixed in gr-uhd. Not sure about<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gr-ettus, though.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;Maybe try usi=
ng set_rx_agc() manually in you flow-graph<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(*.py) and see<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;if that helps=
.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;Cheers,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;Julian<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;On 3/9/21 5:1=
1 PM, Maria Mu=C3=B1oz via USRP-users wrote:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; Hi all,=
<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; I was w=
ondering if it is possible to enable AGC from<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;the RFNoC radio<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; block i=
n GNURadio. I use UHD 4.0 version and GNURadio<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.8 with<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;gr-ettus.<br>=

&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; I see t=
hat the RFNoC Rx radio block has an<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;enable/disable/default<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; option i=
n the GNURadio block which I assume calls the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;UHD function<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; "set_rx=
_agc"<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(<a href=3D"https://files.ettus=
.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abdab1f6c3775a9071b15c9805f=
866486" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual/=
classuhd_1_1usrp_1_1multi__usrp.html#abdab1f6c3775a9071b15c9805f866486</a>)<=
br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; I have a=
lso checked on the FPGA side that there is a<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pin from<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;FPGA to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; AD9361 c=
alled&nbsp;XCVR_ENA_AGC which is set always to 1 on<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;the top<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;level of<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; the FPG=
A image (see attached file "e320.v", line 872).<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;This pin,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; accordi=
ng to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=3D"https://www.analog.com/medi=
a/en/technical-documentation/data-sheets/AD9361.pdf" rel=3D"noreferrer" targ=
et=3D"_blank">https://www.analog.com/media/en/technical-documentation/data-s=
heets/AD9361.pdf</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; is the "=
Manual Control Input for Automatic Gain<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Control (AGC)".<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; Must be=
 this pin set to 0 to have AGC working?<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; If&nbsp=
;not, how can I&nbsp;get AGC working? I've made some tests<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; enablin=
g/disabling this option but I do not see any<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;changes<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;between the<b=
r>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; wavefor=
ms received.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; Any hel=
p would be appreciated.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; Kind Re=
gards,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; Maria<b=
r>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; _______=
________________________________________<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; USRP-us=
ers mailing list<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt; <a href=
=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.et=
tus.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-user=
s@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-user=
s@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-user=
s@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;&gt;<=
br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=3D"http://lists.ettus.com/mail=
man/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank=
">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>=

&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; <br>
</blockquote></div>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-2B88E724-80C3-49B2-9ACE-0C2F435AACB7--

--===============6965107096769330130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6965107096769330130==--
