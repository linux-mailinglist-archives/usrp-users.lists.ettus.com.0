Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4CD359FE8
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 15:35:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D45FD384484
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 09:35:37 -0400 (EDT)
Received: from dd22108.kasserver.com (dd22108.kasserver.com [85.13.141.232])
	by mm2.emwd.com (Postfix) with ESMTPS id BCFF738405E
	for <usrp-users@lists.ettus.com>; Fri,  9 Apr 2021 09:34:48 -0400 (EDT)
Received: from [100.67.66.123] (tmo-103-187.customers.d1-online.com [80.187.103.187])
	by dd22108.kasserver.com (Postfix) with ESMTPSA id F0B984420086;
	Fri,  9 Apr 2021 15:34:46 +0200 (CEST)
From: Julian Arnold <julian@elitecoding.org>
Mime-Version: 1.0 (1.0)
Date: Fri, 9 Apr 2021 15:34:45 +0200
Message-Id: <29D4AD3E-11D9-42A0-A6C3-60D03ED19AE5@elitecoding.org>
References: <CAG16vQV7J1dnf+-v5pzUf6eTxn7SJYgPtHh03=Pchd5v_Ui54w@mail.gmail.com>
In-Reply-To: <CAG16vQV7J1dnf+-v5pzUf6eTxn7SJYgPtHh03=Pchd5v_Ui54w@mail.gmail.com>
To: =?utf-8?Q?Maria_Mu=C3=B1oz?= <mamuki92@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 2OQDH4CPJWYCWAYU3RYVMR3EQNUF4EOO
X-Message-ID-Hash: 2OQDH4CPJWYCWAYU3RYVMR3EQNUF4EOO
X-MailFrom: julian@elitecoding.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Enable AGC in USRP E320 with RFNoC using GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2OQDH4CPJWYCWAYU3RYVMR3EQNUF4EOO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1658680630360549321=="


--===============1658680630360549321==
Content-Type: multipart/alternative; boundary=Apple-Mail-593EB1C8-75C2-488A-97FA-F61FC4394CF7
Content-Transfer-Encoding: 7bit


--Apple-Mail-593EB1C8-75C2-488A-97FA-F61FC4394CF7
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Maria,

the properties you want to change (min/max thresholds) are not exposed via t=
he property tree. Only the mode is (slow or fast).
However, the same code that configures the AGC that worked for me on the B21=
0 should run on the E310. The RPC client should not be involved in that case=
 (although I=E2=80=99m not sure about that).

Have you tried applying my patch directly (I had slightly modified register v=
alues).

Also, could you try running your code directly on the E310 (bypassing networ=
ked-mode) to see if that makes a difference?

Cheers,
Julian


Julian Arnold, M.Sc

> Am 09.04.2021 um 09:48 schrieb Maria Mu=C3=B1oz <mamuki92@gmail.com>:
>=20
> =EF=BB=BF
> Hi Julian,
>=20
> Sorry for the late reply and thanks for the answer.
>=20
> I have been debugging the configuration printing the entries of "set_agc" t=
hat I have found on cpp/py files in the uhd driver and ettus repositories, a=
nd I can confirm that the code is not getting to the ad9361_device.cpp as I t=
hought in the beginning.
>=20
> If I go through the code from my python script to the ad9361_device.cpp co=
nfiguration file I see the following:
> The python scripts calls for ettus.rfnoc_rx_radio.set_agc method, which is=
 found in ettus repository (for usrp_source is on gnuradio/uhd lib)
> The rfnoc_rx_radio class is defined in gr-ettus/lib/rfnoc_rx_radio_impl.h,=
 where there is also a pointer to the radio_control class defined:
>>> class rfnoc_rx_radio_impl : public rfnoc_rx_radio
>>> {
>>> public:
>>>     rfnoc_rx_radio_impl(::uhd::rfnoc::noc_block_base::sptr block_ref);
>>>     ~rfnoc_rx_radio_impl();
>>>=20
>>>     /*** API ***********************************************************=
******/
>>>     double set_rate(const double rate);
>>>     void set_antenna(const std::string& antenna, const size_t chan);
>>>     double set_frequency(const double frequency, const size_t chan);
>>>     void set_tune_args(const ::uhd::device_addr_t& args, const size_t ch=
an);
>>>     double set_gain(const double gain, const size_t chan);
>>>     double set_gain(const double gain, const std::string& name, const si=
ze_t chan);
>>>     void set_agc(const bool enable, const size_t chan);
>>>     void set_gain_profile(const std::string& profile, const size_t chan)=
;
>>>     double set_bandwidth(const double bandwidth, const size_t chan);
>>>     void
>>>     set_lo_source(const std::string& source, const std::string& name, co=
nst size_t chan);
>>>     void
>>>     set_lo_export_enabled(const bool enabled, const std::string& name, c=
onst size_t chan);
>>>     double set_lo_freq(const double freq, const std::string& name, const=
 size_t chan);
>>>     void set_dc_offset(const bool enable, const size_t chan);
>>>     void set_dc_offset(const std::complex<double>& offset, const size_t c=
han);
>>>     void set_iq_balance(const bool enable, const size_t chan);
>>>     void set_iq_balance(const std::complex<double>& correction, const si=
ze_t chan);
>>>=20
>>> private:
>>>     ::uhd::rfnoc::radio_control::sptr d_radio_ref;
>>> };
> In gr-ettus/lib/rfnoc_rx_radio_impl.cpp when set_agc command is received, i=
t returns a call to the pointer I mention before, and therefore, to the radi=
o_control class:
>>> void rfnoc_rx_radio_impl::set_agc(const bool enable, const size_t chan)
>>> {
>>>     return d_radio_ref->set_rx_agc(enable, chan);
>>> }
>=20
> The radio_control class is found in the UHD driver repository in uhd/host/=
include/uhd/rfnoc/radio_control.hpp which is virtually implemented as radio_=
control_impl class in e3xx_radio_control_impl.cpp (host/lib/usrp/board/e3xx)=

> This file calls to the ad9361_ctrl class which is implemented in e3xx_ad93=
61_iface.cpp (host/lib/usrp/board/e3xx)
> At this point, there is a call for the rpc_client where I get kind of lost=
 about how to change the registers this way:
>=20
>>> void set_agc(const std::string& which, bool enable)
>>> {
>>> _rpcc->request_with_token<void>(this->_rpc_prefix + "set_agc", which, en=
able);
>>> }
>=20
> =20
>=20
> To be brief:=20
> When debugging I can't see that my code gets to the only configuration fil=
e I found which is the ad9361_device.cpp
> The set_agc command seems to be manage through the rpc_client (I think thi=
s is related to the module peripheral manager which is a "layer of control t=
hat UHD uses to access, configure and control the hardware", https://files.e=
ttus.com/manual/page_mpm.html)=20
> Inside the code, in multi_usrp files there is a comment that the specific c=
onfiguration of the AGC is set in the property_tree but I don't know how to w=
rite the configuration registers of the agc through the property_tree.
>=20
> So my questions here are:
> How can I set the configuration registers of the AGC, through the MPM or t=
he property tree?
> Are there examples on how I can set these registers through the MPM or the=
 property_tree?=20
>=20
> Kind Regards,
>=20
> Maria
>=20
>> El mi=C3=A9, 24 mar 2021 a las 11:20, Julian Arnold (<julian@elitecoding.=
org>) escribi=C3=B3:
>> Maria,
>>=20
>> that sounds about right!
>> However, to make absolutely sure GNU Radio picks up the modified libuhd=20=

>> you could add a print statement somewhere in your UHD code.
>> You could also compare your UHD install prefix to the path gr-uhd
>> uses for linking libuhd.
>>=20
>> Below is the patch I used for my tests:
>>=20
>> diff --git a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp=20
>> b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> index 9e088871d..0e5bc86c5 100644
>> --- a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> +++ b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> @@ -1089,7 +1089,7 @@ void ad9361_device_t::_setup_gain_control(bool agc)=

>>           _io_iface->poke8(0x0FD, 0x4C); // Max Full/LMT Gain Table Index=

>>           _io_iface->poke8(0x0FE, 0x44); // Decr Step Size, Peak=20
>> Overload Time
>>           _io_iface->poke8(0x100, 0x6F); // Max Digital Gain
>> -        _io_iface->poke8(0x101, 0x0A); // Max Digital Gain
>> +        _io_iface->poke8(0x101, 0x02); // Max Digital Gain
>>           _io_iface->poke8(0x103, 0x08); // Max Digital Gain
>>           _io_iface->poke8(0x104, 0x2F); // ADC Small Overload Threshold
>>           _io_iface->poke8(0x105, 0x3A); // ADC Large Overload Threshold
>> @@ -1098,14 +1098,14 @@ void ad9361_device_t::_setup_gain_control(bool ag=
c)
>>           _io_iface->poke8(0x108, 0x31);
>>           _io_iface->poke8(0x111, 0x0A);
>>           _io_iface->poke8(0x11A, 0x1C);
>> -        _io_iface->poke8(0x120, 0x0C);
>> +        _io_iface->poke8(0x120, 0x04);
>>           _io_iface->poke8(0x121, 0x44);
>>           _io_iface->poke8(0x122, 0x44);
>>           _io_iface->poke8(0x123, 0x11);
>>           _io_iface->poke8(0x124, 0xF5);
>>           _io_iface->poke8(0x125, 0x3B);
>>           _io_iface->poke8(0x128, 0x03);
>> -        _io_iface->poke8(0x129, 0x56);
>> +        _io_iface->poke8(0x129, 0x11);
>>           _io_iface->poke8(0x12A, 0x22);
>>       } else {
>>           _io_iface->poke8(0x0FA, 0xE0); // Gain Control Mode Select
>>=20
>>=20
>> Cheers,
>> Julian
>>=20
>> On 3/24/21 9:59 AM, Maria Mu=C3=B1oz wrote:
>> > Hi Julian,
>> >=20
>> > I have the chance to test the AGC with a B210 and perform the same grap=
h=20
>> > as you send me but I am unable to see what you saw so I think I'm=20
>> > missing something.
>> > I also have UHD 4.0 and GNURadio 3.8 (installed by source).
>> >=20
>> > The steps I take are these:
>> >=20
>> >   * First, I change the ad9361_device.cpp that is in uhd repository in
>> >     //uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp,
>> >     registers 0x101, 0x120, 0x129, 0x123 and 0x12A./
>> >   * Then, I do "make" and "make install" to compile the changes in
>> >     build-host folder.
>> >   * After that, I generate the python script for the GRC flow graph and=

>> >     move the "set_agc" command after the "set_rate" one.
>> >   * Finally, I run the python.
>> >=20
>> > I can't see my waveform between the values I set. Is there something=20=

>> > wrong with those steps? Did you do anything else?
>> >=20
>> > King Regards,
>> >=20
>> > Maria
>> >=20
>> > /
>> > /
>> >=20
>> > El mar, 23 mar 2021 a las 9:23, Maria Mu=C3=B1oz (<mamuki92@gmail.com=20=

>> > <mailto:mamuki92@gmail.com>>) escribi=C3=B3:
>> >=20
>> >     Hi Julian,
>> >=20
>> >     Thanks for the checking!
>> >=20
>> >     I have also checked my graph and samp_rate is setting first, so I'l=
l
>> >     try to test it with a sine waveform as you suggested and see if tha=
t
>> >     works. If not, maybe is an RFNoC/gr-ettus problem. I'll put an issu=
e
>> >     in the gr-ettus repository in that case.
>> >=20
>> >     Thanks again for your help.
>> >=20
>> >     Kind Regards,
>> >=20
>> >     Maria.
>> >=20
>> >     El mar, 23 mar 2021 a las 0:36, Julian Arnold
>> >     (<julian@elitecoding.org <mailto:julian@elitecoding.org>>) escribi=C3=
=B3:
>> >=20
>> >         Maria,
>> >=20
>> >         I couldn't resist trying this myself, as your modifications see=
med
>> >         reasonable.
>> >=20
>> >         So I did set up a simple test with a b210 connected to my sigge=
n
>> >         feeding
>> >         it with a tone of varying power at 2.4102GHz.
>> >=20
>> >         For the default UHD AGC settings I could confirm that the signa=
l
>> >         was
>> >         kept between -10 dBFS and -12 dBFS (20 * log10(|x|) over a
>> >         pretty wide
>> >         input power range.
>> >         This was using GR 3.8 and UHD 4.0.
>> >=20
>> >         However, I had to modify the generate flow-graph slightly, as
>> >         the AGC
>> >         was enables before the sample-rate was set (maybe double check
>> >         that, too).
>> >=20
>> >         Afterwards, I used your settings (I did change reg 0x129 to 0x1=
1
>> >         (1dB
>> >         +-), though).
>> >         Also those settings worked as expected and the signal was nicel=
y
>> >         kept
>> >         between -2 dBFS and -4 dBFS.
>> >=20
>> >         Attached is a picture of the flow-graph I used for testing.
>> >         Maybe you
>> >         could also start by testing with a sine wave to verifying that y=
our
>> >         values get applied properly.
>> >=20
>> >         Cheers,
>> >         Julian
>> >=20
>> >         On 3/22/21 6:21 PM, Maria Mu=C3=B1oz wrote:
>> >          > Hi Julian,
>> >          >
>> >          > Sure.
>> >          >
>> >          > I am receiving a QPSK through the radio and plotting it in a=

>> >         QT graph
>> >          > (see grc.png)
>> >          > If I have AGC disable, I get what is shown in
>> >         "test_without_agc.png",
>> >          > then if I enable it, I see what is on "test_with_agc.png" wh=
ere
>> >          > "Quadrature" is always center more or less in 0.25 which
>> >         might fit with
>> >          > the values given by default (inner high threshold =3D -12dBFS=
,
>> >         inner low
>> >          > threshold =3D -10 dBFS).
>> >          >
>> >          > If I change the ad9361_device.cpp (attached) from line 1085,=

>> >         by changing
>> >          > registers 0x101, 0x120 and 0x129 with values 0x02, 0x04 and 0=
x16
>> >          > respectively to move between -2dbFS and -4 dBFS,  I see the s=
ame
>> >          > waveform that I have in "test_with_agc.png" (I expect it to
>> >         be around 0.7)
>> >          >
>> >          > Kind regards,
>> >          >
>> >          > Maria
>> >          >
>> >          > El lun, 22 mar 2021 a las 17:45, Julian Arnold
>> >         (<julian@elitecoding.org <mailto:julian@elitecoding.org>
>> >          > <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>) escribi=C3=B3:
>> >          >
>> >          >     Maria,
>> >          >
>> >          >     would you mind sharing your patch? Otherwise, it=E2=80=99=
s hard
>> >         to tell what
>> >          >     exactly is going on.
>> >          >
>> >          >     Cheers,
>> >          >     Julian
>> >          >
>> >          >>     Am 22.03.2021 um 16:24 schrieb Maria Mu=C3=B1oz
>> >         <mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>=
>:
>> >          >>
>> >          >>     =EF=BB=BF
>> >          >>     Hi Julian,
>> >          >>
>> >          >>     I re-open this topic to ask a question about the
>> >         configuration of
>> >          >>     the ad9361 registers in GNUradio/RFNoC
>> >          >>
>> >          >>     As I understand, when AGC is enabled in slow mode, ther=
e
>> >         are 4
>> >          >>     configurable thresholds (inner low, inner high,
>> >         outer low, and
>> >          >>     outer high) and also 4 configurable steps to reach the z=
one
>> >          >>     between the inner thresholds.
>> >          >>
>> >          >>     I have found the configuration of these registers
>> >          >>     in /uhd/host/lib/usrp/common/ad9361_driver/ad9361_devic=
e.cpp
>> >          >>     and changed their values there. Then, I have recompiled=

>> >         uhd (make
>> >          >>     & make install) but, when I re-run my graph I see no
>> >         change in my
>> >          >>     waveform (it seem to stay in the same limits as the def=
ault
>> >          >>     configuration).
>> >          >>
>> >          >>     Am I missing any other step that I have to done to
>> >         configure these
>> >          >>     parameters?
>> >          >>
>> >          >>     Kind Regards,
>> >          >>
>> >          >>     Maria
>> >          >>
>> >          >>     El vie, 12 mar 2021 a las 10:04, Maria Mu=C3=B1oz
>> >         (<mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>>>) escribi=C3=B3:
>> >          >>
>> >          >>         Ok Julian, I will check the tree node and try to
>> >         modify the
>> >          >>         properties. Thanks again for the help!
>> >          >>
>> >          >>         Kind Regards,
>> >          >>         Maria
>> >          >>
>> >          >>         El jue, 11 mar 2021 a las 18:26, Julian Arnold
>> >          >>         (<julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>)
>> >          >>         escribi=C3=B3:
>> >          >>
>> >          >>             Maria,
>> >          >>
>> >          >>             >>
>> >         /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
>> >          >>             >>
>> >          >>             >> but I have received the following errorThat'=
s
>> >         why I
>> >          >>             gave the reference ([1]) showing the correct
>> >         syntax ;)
>> >          >>             Anyways, glad it worked out for you!
>> >          >>             You might consider filing a bug issue against
>> >         gr-ettus on
>> >          >>             github.
>> >          >>
>> >          >>             >> By the way, I have read that there are
>> >         several modes
>> >          >>             for AGC
>> >          >>             >> (fast,slow,hybrid..) I was wondering which
>> >         type is
>> >          >>             implemented by
>> >          >>             >> default and if it is possible to change AGC
>> >         mode in the
>> >          >>             flowgraph.
>> >          >>             Those modes were mainly dictated by the AD9361.=

>> >         Default
>> >          >>             should be
>> >          >>             "slow". The "hybrid" mode is not implemented as=

>> >         far as I know.
>> >          >>             Which mode you want ("slow" / "fast") depends o=
n the
>> >          >>             signal you want to
>> >          >>             receive. For burst-mode digital signals you
>> >         might want to
>> >          >>             switch to the
>> >          >>             "fast" mode.
>> >          >>             However, I think this is only possible by
>> >         directly writing
>> >          >>             to the corresponding property-tree node. Again,=

>> >         I'm not
>> >          >>             sure about
>> >          >>             UHD-4.0/gr-ettus though.
>> >          >>
>> >          >>             Cheers,
>> >          >>             Julian
>> >          >>
>> >          >>
>> >          >>             On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wrote:
>> >          >>             > Hi Julian,
>> >          >>             >
>> >          >>             > I have initially changed the python generated=

>> >         for my
>> >          >>             flowgraph with this
>> >          >>             > line:
>> >          >>             >
>> >          >>             > /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False=
, 0)/
>> >          >>             >
>> >          >>             > but I have received the following error:
>> >          >>             >
>> >          >>             > T/raceback (most recent call last):
>> >          >>             >    File "constellation_soft_decoder.py", line=

>> >         301, in
>> >          >>             <module>
>> >          >>             >      main()
>> >          >>             >    File "constellation_soft_decoder.py", line=

>> >         277, in main
>> >          >>             >      tb =3D top_block_cls()
>> >          >>             >    File "constellation_soft_decoder.py", line=

>> >         166, in
>> >          >>             __init__
>> >          >>             >    =20
>> >         self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, 0)
>> >          >>             > AttributeError: 'rfnoc_rx_radio_sptr' object
>> >         has no
>> >          >>             attribute 'set_rx_agc'/
>> >          >>             >
>> >          >>             > But rfnoc_radio_impl.cc defines it:
>> >          >>             >
>> >          >>             > /void rfnoc_rx_radio_impl::set_agc(const bool=

>> >         enable,
>> >          >>             const size_t chan)
>> >          >>             > {
>> >          >>             >      return d_radio_ref->set_rx_agc(enable, c=
han);
>> >          >>             > }/
>> >          >>             >
>> >          >>             > Searching the rfnoc_rx_radio_sptr with grep
>> >         takes me to
>> >          >>             "swig" files. I
>> >          >>             > have looked at ettus_swig.py and seen that th=
e
>> >         command
>> >          >>             name is set_agc
>> >          >>             > instead of set_rx_agc:
>> >          >>             >
>> >          >>             > /def set_agc(self, enable: "bool const", chan=
:
>> >         "size_t
>> >          >>             const") -> "void":
>> >          >>             >          r"""
>> >          >>             >          set_agc(rfnoc_rx_radio self, bool
>> >         const enable,
>> >          >>             size_t const chan)
>> >          >>             >          Enable/disable the AGC for this RX
>> >         radio (if
>> >          >>             available)
>> >          >>             >          """
>> >          >>             >          return
>> >         _ettus_swig.rfnoc_rx_radio_set_agc(self,
>> >          >>             enable, chan)/
>> >          >>             > /
>> >          >>             > /
>> >          >>             > Changing this in the flowgraph.py seems to
>> >         work!! Thanks
>> >          >>             for the help on
>> >          >>             > this! I put this information here just in cas=
e
>> >         someone
>> >          >>             is stuck in the
>> >          >>             > same point.
>> >          >>             >
>> >          >>             > By the way, I have read that there are severa=
l
>> >         modes for
>> >          >>             AGC
>> >          >>             > (fast,slow,hybrid..) I was wondering which ty=
pe is
>> >          >>             implemented by
>> >          >>             > default and if it is possible to change AGC
>> >         mode in the
>> >          >>             flowgraph.
>> >          >>             >
>> >          >>             > Kind Regards,
>> >          >>             >
>> >          >>             > Maria
>> >          >>             >
>> >          >>             >
>> >          >>             > El mi=C3=A9, 10 mar 2021 a las 12:03, Maria M=
u=C3=B1oz
>> >          >>             (<mamuki92@gmail.com <mailto:mamuki92@gmail.com=
>
>> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
>> >          >>             > <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>
>> >          >>             <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>>>>) escribi=C3=B3:
>> >          >>             >
>> >          >>             >     Hi Jules,
>> >          >>             >
>> >          >>             >     Thank you, I will try it and let you know=

>> >         as soon as
>> >          >>             possible.
>> >          >>             >
>> >          >>             >     By the way, I have checked the python
>> >          >>             generated using the UHD USRP
>> >          >>             >     SOURCE block (instead of the RFNoC radio
>> >         block) with
>> >          >>             AGC active and
>> >          >>             >     it generates the set of AGC fine. So, as
>> >         you said,
>> >          >>             it is fixed in
>> >          >>             >     gr-uhd but it might still be a bug in
>> >         gr-ettus.
>> >          >>             >
>> >          >>             >     Thanks again for the help!
>> >          >>             >
>> >          >>             >     Kind Regards,
>> >          >>             >
>> >          >>             >     Maria
>> >          >>             >
>> >          >>             >     El mi=C3=A9, 10 mar 2021 a las 11:25, Jul=
ian Arnold
>> >          >>             >     (<julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>             <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>             <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>             <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>>) escribi=C3=B3:
>> >          >>             >
>> >          >>             >         Maria,
>> >          >>             >
>> >          >>             >          >> So, if I understand correctly, I
>> >         have to put
>> >          >>             there also
>> >          >>             >         something like
>> >          >>             >          >>
>> >          >>          =20
>> >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't it?
>> >          >>             >
>> >          >>             >         Exactly! Take a look at [1] for the
>> >         correct syntax.
>> >          >>             >
>> >          >>             >         [1]
>> >          >>             >
>> >          >>
>> >         https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a280=
3b53554fc4971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
>> >          >>             >
>> >          >>             >         Let me know if that worked out for yo=
u.
>> >          >>             >
>> >          >>             >         Cheers,
>> >          >>             >         Julian
>> >          >>             >
>> >          >>             >
>> >          >>             >         On 3/10/21 9:59 AM, Maria Mu=C3=B1oz w=
rote:
>> >          >>             >          > Hi Julian,
>> >          >>             >          >
>> >          >>             >          > Thanks for the quick answer.
>> >          >>             >          >
>> >          >>             >          > I think you might be right about
>> >         the possible
>> >          >>             bug turning on
>> >          >>             >         the AGC
>> >          >>             >          > from GRC. I have checked the flow g=
raph
>> >          >>             generated and there's no
>> >          >>             >          > set_rx_agc enable option (I checke=
d
>> >         the c++
>> >          >>             definition block
>> >          >>             >         where this
>> >          >>             >          > option did appear but I hadn't loo=
k
>> >         at the
>> >          >>             python generated).
>> >          >>             >          >
>> >          >>             >          > The lines related to the radio in m=
y
>> >          >>             flowgraph are these:
>> >          >>             >          >
>> >          >>             >          > /self.ettus_rfnoc_rx_radio_0 =3D
>> >          >>             ettus.rfnoc_rx_radio(
>> >          >>             >          >              self.rfnoc_graph,
>> >          >>             >          >              uhd.device_addr(''),
>> >          >>             >          >              -1,
>> >          >>             >          >              -1)
>> >          >>             >          >
>> >          >>             self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)=

>> >          >>             >          >
>> >          >>             self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0=
)
>> >          >>             >          >
>> >          >>             self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0=
)
>> >          >>             >          >
>> >          >>             self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
>> >          >>             >          >
>> >          >>          =20
>> >           self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)
>> >          >>             >          >
>> >          >>             self.ettus_rfnoc_rx_radio_0.set_dc_offset(True,=
 0)
>> >          >>             >          >
>> >          >>             self.ettus_rfnoc_rx_radio_0.set_iq_balance(True=
, 0)/
>> >          >>             >          >
>> >          >>             >          > So, if I understand correctly, I
>> >         have to put
>> >          >>             there also
>> >          >>             >         something like
>> >          >>             >          >
>> >          >>          =20
>> >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't it?
>> >          >>             >          >
>> >          >>             >          > Kind Regards,
>> >          >>             >          >
>> >          >>             >          > Maria
>> >          >>             >          >
>> >          >>             >          > El mi=C3=A9, 10 mar 2021 a las 9:1=
6,
>> >         Julian Arnold
>> >          >>             >         (<julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>             <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>             <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>             <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>
>> >          >>             >          > <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>             <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>             >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>             <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>>>) escribi=C3=B3:
>> >          >>             >          >
>> >          >>             >          >     Maria,
>> >          >>             >          >
>> >          >>             >          >     I might not be the right perso=
n
>> >         to answer
>> >          >>             this, as my
>> >          >>             >         experience with
>> >          >>             >          >     UHD 4.0 is relatively limited
>> >         at the moment.
>> >          >>             >          >
>> >          >>             >          >     However, I cant tell you that
>> >         the AGC on
>> >          >>             B2x0 devices is
>> >          >>             >         controlled via
>> >          >>             >          >     software (using set_rx_agc()).=

>> >         There is
>> >          >>             no need to
>> >          >>             >         directly modify the
>> >          >>             >          >     state of any pins of the FPGA.=

>> >          >>             >          >
>> >          >>             >          >     I vaguely remember that there
>> >         was a bug
>> >          >>             in an earlier
>> >          >>             >         version of gr-uhd
>> >          >>             >          >     (somewhere in 3.7) that made i=
t
>> >         difficult
>> >          >>             to turn on the
>> >          >>             >         AGC using GRC.
>> >          >>             >          >     That particular one is fixed i=
n
>> >         gr-uhd.
>> >          >>             Not sure about
>> >          >>             >         gr-ettus, though.
>> >          >>             >          >
>> >          >>             >          >     Maybe try using set_rx_agc()
>> >         manually in
>> >          >>             you flow-graph
>> >          >>             >         (*.py) and see
>> >          >>             >          >     if that helps.
>> >          >>             >          >
>> >          >>             >          >     Cheers,
>> >          >>             >          >     Julian
>> >          >>             >          >
>> >          >>             >          >     On 3/9/21 5:11 PM, Maria Mu=C3=
=B1oz via
>> >          >>             USRP-users wrote:
>> >          >>             >          >      > Hi all,
>> >          >>             >          >      >
>> >          >>             >          >      > I was wondering if it is
>> >         possible to
>> >          >>             enable AGC from
>> >          >>             >         the RFNoC radio
>> >          >>             >          >      > block in GNURadio. I use UH=
D 4.0
>> >          >>             version and GNURadio
>> >          >>             >         3.8 with
>> >          >>             >          >     gr-ettus.
>> >          >>             >          >      >
>> >          >>             >          >      > I see that the RFNoC Rx
>> >         radio block has an
>> >          >>             >         enable/disable/default
>> >          >>             >          >     AGC
>> >          >>             >          >      > option in the GNURadio bloc=
k
>> >         which I
>> >          >>             assume calls the
>> >          >>             >         UHD function
>> >          >>             >          >      > "set_rx_agc"
>> >          >>             >          >      >
>> >          >>             >          >
>> >          >>             >
>> >          >>          =20
>> >            (https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__u=
srp.html#abdab1f6c3775a9071b15c9805f866486)
>> >          >>             >          >      >
>> >          >>             >          >      > I have also checked on the
>> >         FPGA side
>> >          >>             that there is a
>> >          >>             >         pin from
>> >          >>             >          >     FPGA to
>> >          >>             >          >      > AD9361 called XCVR_ENA_AGC
>> >         which is
>> >          >>             set always to 1 on
>> >          >>             >         the top
>> >          >>             >          >     level of
>> >          >>             >          >      > the FPGA image (see attache=
d
>> >         file
>> >          >>             "e320.v", line 872).
>> >          >>             >         This pin,
>> >          >>             >          >      > according to
>> >          >>             >          >      >
>> >          >>             >          >
>> >          >>             >
>> >          >>
>> >         https://www.analog.com/media/en/technical-documentation/data-sh=
eets/AD9361.pdf
>> >          >>             >          >
>> >          >>             >          >      > is the "Manual Control Inpu=
t for
>> >          >>             Automatic Gain
>> >          >>             >         Control (AGC)".
>> >          >>             >          >      > Must be this pin set to 0 t=
o
>> >         have AGC
>> >          >>             working?
>> >          >>             >          >      > If not, how can I get AGC
>> >         working?
>> >          >>             I've made some tests
>> >          >>             >          >      > enabling/disabling this
>> >         option but I
>> >          >>             do not see any
>> >          >>             >         changes
>> >          >>             >          >     between the
>> >          >>             >          >      > waveforms received.
>> >          >>             >          >      >
>> >          >>             >          >      > Any help would be appreciat=
ed.
>> >          >>             >          >      >
>> >          >>             >          >      > Kind Regards,
>> >          >>             >          >      >
>> >          >>             >          >      > Maria
>> >          >>             >          >      >
>> >          >>             >          >      >
>> >          >>             _______________________________________________=

>> >          >>             >          >      > USRP-users mailing list
>> >          >>             >          >      > USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>             <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>
>> >          >>             >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>             <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>>
>> >          >>             >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>             <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>
>> >          >>             >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>             <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>>>
>> >          >>             >          >      >
>> >          >>             >
>> >          >>
>> >         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com
>> >          >>             >          >      >
>> >          >>             >          >
>> >          >>             >
>> >          >>
>> >=20

--Apple-Mail-593EB1C8-75C2-488A-97FA-F61FC4394CF7
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Maria,<div><br></div><div>the properties yo=
u want to change (min/max thresholds) are not exposed via the property tree.=
 Only the mode is (slow or fast).</div><div>However, the same code that conf=
igures the AGC that worked for me on the B210 should run on the E310. The RP=
C client should not be involved in that case (although I=E2=80=99m not sure a=
bout that).</div><div><br>Have you tried applying my patch directly (I had s=
lightly modified register values).</div><div><br></div><div>Also, could you t=
ry running your code directly on the E310 (bypassing networked-mode) to see i=
f that makes a difference?</div><div><br></div><div>Cheers,</div><div>Julian=
</div><div><br></div><div><br><div dir=3D"ltr">Julian Arnold, M.Sc</div><div=
 dir=3D"ltr"><br><blockquote type=3D"cite">Am 09.04.2021 um 09:48 schrieb Ma=
ria Mu=C3=B1oz &lt;mamuki92@gmail.com&gt;:<br><br></blockquote></div><blockq=
uote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi Julian,<div=
><br></div><div>Sorry for the late reply and thanks for the answer.</div><di=
v><br></div><div>I have been debugging the configuration printing the entrie=
s of "set_agc" that I have found on cpp/py files in the uhd driver and ettus=
 repositories, and I can confirm that the code is not getting to the ad9361_=
device.cpp as I thought in the beginning.</div><div><br></div><div>If I go t=
hrough the code from my python script to the ad9361_device.cpp configuration=
 file I see the following:</div><div><ul><li>The python scripts calls for et=
tus.rfnoc_rx_radio.set_agc method, which is found in ettus repository (for u=
srp_source is on gnuradio/uhd lib)</li></ul><ul><li>The rfnoc_rx_radio class=
 is defined in gr-ettus/lib/rfnoc_rx_radio_impl.h, where there is also a poi=
nter to the radio_control class defined:</li></ul><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 style=3D"margin-left:80px"><i>class rfnoc_rx_radio_impl : public rfnoc_rx_r=
adio<br>{<br>public:<br>&nbsp; &nbsp; rfnoc_rx_radio_impl(::uhd::</i><i>rfno=
c::noc_block_base::sptr block_ref);<br>&nbsp; &nbsp; ~rfnoc_rx_radio_impl();=
<br><br>&nbsp; &nbsp; /*** API ******************************</i><i>********=
**********************</i><i>*****/<br>&nbsp; &nbsp; double set_rate(const d=
ouble rate);<br>&nbsp; &nbsp; void set_antenna(const std::string&amp; antenn=
a, const size_t chan);<br>&nbsp; &nbsp; double set_frequency(const double fr=
equency, const size_t chan);<br>&nbsp; &nbsp; void set_tune_args(const ::uhd=
::device_addr_t&amp; args, const size_t chan);<br>&nbsp; &nbsp; double set_g=
ain(const double gain, const size_t chan);<br>&nbsp; &nbsp; double set_gain(=
const double gain, const std::string&amp; name, const size_t chan);<br>&nbsp=
; &nbsp; void set_agc(const bool enable, const size_t chan);<br>&nbsp; &nbsp=
; void set_gain_profile(const std::string&amp; profile, const size_t chan);<=
br>&nbsp; &nbsp; double set_bandwidth(const double bandwidth, const size_t c=
han);<br>&nbsp; &nbsp; void<br>&nbsp; &nbsp; set_lo_source(const std::string=
&amp; source, const std::string&amp; name, const size_t chan);<br>&nbsp; &nb=
sp; void<br>&nbsp; &nbsp; set_lo_export_enabled(const bool enabled, const st=
d::string&amp; name, const size_t chan);<br>&nbsp; &nbsp; double set_lo_freq=
(const double freq, const std::string&amp; name, const size_t chan);<br>&nbs=
p; &nbsp; void set_dc_offset(const bool enable, const size_t chan);<br>&nbsp=
; &nbsp; void set_dc_offset(const std::complex&lt;double&gt;&amp; offset, co=
nst size_t chan);<br>&nbsp; &nbsp; void set_iq_balance(const bool enable, co=
nst size_t chan);<br>&nbsp; &nbsp; void set_iq_balance(const std::complex&lt=
;double&gt;&amp; correction, const size_t chan);<br><br>private:<br>&nbsp; &=
nbsp; ::uhd::rfnoc::radio_control::</i><i>sptr d_radio_ref;<br>};</i><br></d=
iv></blockquote></blockquote><div><ul><li>In gr-ettus/lib/rfnoc_rx_radio_imp=
l.cpp when set_agc command is received, it returns a call to the pointer I m=
ention before, and therefore, to the radio_control class:</li></ul><div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div style=3D"margin-left:80px"><i>void rfnoc_rx_radio_imp=
l::set_agc(</i><i>const bool enable, const size_t chan)<br>{<br>&nbsp; &nbsp=
; return d_radio_ref-&gt;set_rx_agc(</i><i>enable, chan);<br>}</i><br></div>=
</blockquote></blockquote></div><ul><li>The radio_control class is found in t=
he UHD driver repository in uhd/host/include/uhd/rfnoc/radio_control.hpp whi=
ch is virtually implemented as radio_control_impl class in e3xx_radio_contro=
l_impl.cpp (host/lib/usrp/board/e3xx)</li><li>This file calls to the ad9361_=
ctrl class which is implemented in e3xx_ad9361_iface.cpp (host/lib/usrp/boar=
d/e3xx)</li><li>At this point, there is a call for the rpc_client where I ge=
t kind of lost about how to change the registers this way:</li></ul></div><d=
iv><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div style=3D"margin-left:40px"><i>void se=
t_agc(const std::string&amp; which, bool enable)<br>{<br>_rpcc-&gt;request_w=
ith_token&lt;void&gt;(this-&gt;_rpc_prefix + "set_agc", which, enable);<br>}=
</i></div></blockquote></blockquote><div><br></div><div>&nbsp;</div><div><br=
></div><div>To be brief: <br></div><div><ul><li>When debugging I can't see t=
hat my code gets to the only configuration file I found which is the ad9361_=
device.cpp </li><li>The set_agc command seems to be manage through the rpc_c=
lient (I think this is related to the module peripheral manager which is a "=
layer of control that UHD uses to access, configure and control the hardware=
", <a href=3D"https://files.ettus.com/manual/page_mpm.html">https://files.et=
tus.com/manual/page_mpm.html</a>)&nbsp;</li><li>Inside the code, in multi_us=
rp files there is a comment that the specific configuration of the AGC is se=
t in the property_tree but I don't know how to write the configuration regis=
ters of the agc through the property_tree.</li></ul><div><br></div><div>So m=
y questions here are:</div><div><ol><li>How can I set the configuration regi=
sters of the AGC, through the MPM or the property tree?</li><li>Are there ex=
amples on how I can set these registers through the MPM or the property_tree=
?&nbsp;</li></ol><div><br></div><div>Kind Regards,</div><div><br></div><div>=
Maria<br></div></div></div></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 24 mar 2021 a las 11:20, Julian=
 Arnold (&lt;<a href=3D"mailto:julian@elitecoding.org" target=3D"_blank">jul=
ian@elitecoding.org</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Maria,<br>
<br>
that sounds about right!<br>
However, to make absolutely sure GNU Radio picks up the modified libuhd <br>=

you could add a print statement somewhere in your UHD code.<br>
You could also compare your UHD install prefix to the path gr-uhd<br>
uses for linking libuhd.<br>
<br>
Below is the patch I used for my tests:<br>
<br>
diff --git a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp <br>
b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp<br>
index 9e088871d..0e5bc86c5 100644<br>
--- a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp<br>
+++ b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp<br>
@@ -1089,7 +1089,7 @@ void ad9361_device_t::_setup_gain_control(bool agc)<br=
>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x0FD, 0x4C); // Max =
Full/LMT Gain Table Index<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x0FE, 0x44); // Decr=
 Step Size, Peak <br>
Overload Time<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x100, 0x6F); // Max D=
igital Gain<br>
-&nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x101, 0x0A); // Max Digita=
l Gain<br>
+&nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x101, 0x02); // Max Digita=
l Gain<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x103, 0x08); // Max D=
igital Gain<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x104, 0x2F); // ADC S=
mall Overload Threshold<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x105, 0x3A); // ADC L=
arge Overload Threshold<br>
@@ -1098,14 +1098,14 @@ void ad9361_device_t::_setup_gain_control(bool agc)<=
br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x108, 0x31);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x111, 0x0A);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x11A, 0x1C);<br>
-&nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x120, 0x0C);<br>
+&nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x120, 0x04);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x121, 0x44);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x122, 0x44);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x123, 0x11);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x124, 0xF5);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x125, 0x3B);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x128, 0x03);<br>
-&nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x129, 0x56);<br>
+&nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x129, 0x11);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x12A, 0x22);<br>
&nbsp; &nbsp; &nbsp; } else {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _io_iface-&gt;poke8(0x0FA, 0xE0); // Gain=
 Control Mode Select<br>
<br>
<br>
Cheers,<br>
Julian<br>
<br>
On 3/24/21 9:59 AM, Maria Mu=C3=B1oz wrote:<br>
&gt; Hi Julian,<br>
&gt; <br>
&gt; I have the chance to test the AGC with a B210 and perform the same grap=
h <br>
&gt; as you send me but I am unable to see what you saw so I think I'm <br>
&gt; missing something.<br>
&gt; I also have UHD 4.0 and GNURadio 3.8 (installed by source).<br>
&gt; <br>
&gt; The steps I take are these:<br>
&gt; <br>
&gt;&nbsp; &nbsp;* First, I change the ad9361_device.cpp that is in uhd repo=
sitory in<br>
&gt;&nbsp; &nbsp; &nbsp;//uhd/host/lib/usrp/common/ad9361_driver/ad9361_devi=
ce.cpp,<br>
&gt;&nbsp; &nbsp; &nbsp;registers 0x101, 0x120, 0x129, 0x123 and 0x12A./<br>=

&gt;&nbsp; &nbsp;* Then, I do "make" and "make install" to compile the chang=
es in<br>
&gt;&nbsp; &nbsp; &nbsp;build-host folder.<br>
&gt;&nbsp; &nbsp;* After&nbsp;that, I generate the python script for the GRC=
 flow graph and<br>
&gt;&nbsp; &nbsp; &nbsp;move the "set_agc" command after the "set_rate" one.=
<br>
&gt;&nbsp; &nbsp;* Finally, I run the python.<br>
&gt; <br>
&gt; I can't see my waveform between the values I set. Is there something <b=
r>
&gt; wrong with those steps? Did you do anything else?<br>
&gt; <br>
&gt; King&nbsp;Regards,<br>
&gt; <br>
&gt; Maria<br>
&gt; <br>
&gt; /<br>
&gt; /<br>
&gt; <br>
&gt; El mar, 23 mar 2021 a las 9:23, Maria Mu=C3=B1oz (&lt;<a href=3D"mailto=
:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamu=
ki92@gmail.com</a>&gt;&gt;) escribi=C3=B3:<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;Hi Julian,<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;Thanks for the checking!<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;I have also checked my graph and samp_rate is settin=
g first, so I'll<br>
&gt;&nbsp; &nbsp; &nbsp;try to test it with a sine waveform as you suggested=
 and see if that<br>
&gt;&nbsp; &nbsp; &nbsp;works. If not, maybe is an RFNoC/gr-ettus problem. I=
'll put an issue<br>
&gt;&nbsp; &nbsp; &nbsp;in the gr-ettus repository in that case.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;Thanks again for your help.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;Kind Regards,<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;Maria.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp;El mar, 23 mar 2021 a las 0:36, Julian Arnold<br>
&gt;&nbsp; &nbsp; &nbsp;(&lt;<a href=3D"mailto:julian@elitecoding.org" targe=
t=3D"_blank">julian@elitecoding.org</a> &lt;mailto:<a href=3D"mailto:julian@=
elitecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;) escri=
bi=C3=B3:<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Maria,<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I couldn't resist trying this myself, a=
s your modifications seemed<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;reasonable.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;So I did set up a simple test with a b=
210 connected to my siggen<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;feeding<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;it with a tone of varying power at 2.4=
102GHz.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;For the default UHD AGC settings I cou=
ld confirm that the signal<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;was<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;kept between -10 dBFS and -12 dBFS (20=
 * log10(|x|) over a<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pretty wide<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;input power range.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;This was using GR 3.8 and UHD 4.0.<br>=

&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;However, I had to modify the generate f=
low-graph slightly, as<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;the AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;was enables before the sample-rate was=
 set (maybe double check<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;that, too).<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Afterwards, I used your settings (I di=
d change reg 0x129 to 0x11<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(1dB<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+-), though).<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Also those settings worked as expected=
 and the signal was nicely<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;kept<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;between -2 dBFS and -4 dBFS.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Attached is a picture of the flow-grap=
h I used for testing.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Maybe you<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;could also start by testing with a sin=
e wave to verifying that your<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;values get applied properly.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Cheers,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Julian<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;On 3/22/21 6:21 PM, Maria Mu=C3=B1oz w=
rote:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Hi Julian,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Sure.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; I am receiving a QPSK through th=
e radio and plotting&nbsp;it in a<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;QT graph<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; (see grc.png)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; If I have AGC disable, I get wha=
t is shown in<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"test_without_agc.png",<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; then if I enable it, I see what i=
s on "test_with_agc.png" where<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; "Quadrature" is always center mo=
re or less in 0.25 which<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;might fit with<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; the values given by default (inn=
er high threshold =3D -12dBFS,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;inner low<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; threshold =3D -10 dBFS).<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; If I change the ad9361_device.cp=
p (attached) from line 1085,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;by changing<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; registers 0x101, 0x120 and 0x129=
 with values 0x02, 0x04 and 0x16<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; respectively to move between -2d=
bFS and -4 dBFS,&nbsp; I see the same<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; waveform that I have in "test_wi=
th_agc.png" (I expect it to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;be around 0.7)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Kind regards,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Maria<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; El lun, 22 mar 2021 a las 17:45,=
 Julian Arnold<br>
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
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;would you min=
d sharing your patch? Otherwise, it=E2=80=99s hard<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;to tell what<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;exactly is go=
ing on.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;Cheers,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp;Julian<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;Am 22.03.=
2021 um 16:24 schrieb Maria Mu=C3=B1oz<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;<a href=3D"mailto:mamuki92@gmail.c=
om" target=3D"_blank">mamuki92@gmail.com</a> &lt;mailto:<a href=3D"mailto:ma=
muki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;&lt;mailt=
o:<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com=
</a> &lt;mailto:<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamu=
ki92@gmail.com</a>&gt;&gt;&gt;:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;=EF=BB=BF=
<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;Hi Julian=
,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;I re-open=
 this topic to ask a question about the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;configuration of<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;the ad936=
1 registers in GNUradio/RFNoC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;As I unde=
rstand, when AGC is enabled&nbsp;in slow mode, there<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;are 4<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;configura=
ble thresholds (inner low, inner high,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;outer&nbsp;low, and<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;outer&nbs=
p;high) and also 4 configurable steps to reach the zone<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;between&n=
bsp;the inner thresholds.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;I have fo=
und the configuration of these registers<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;in&nbsp;/=
uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;and&nbsp;=
changed their values there. Then, I have recompiled<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;uhd (make<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;&amp; mak=
e install) but, when I re-run my graph I see no<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;change in my<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;waveform (=
it seem to stay in the same limits as the default<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;configura=
tion).<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;Am I miss=
ing&nbsp;any&nbsp;other&nbsp;step that I have to done&nbsp;to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;configure these<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;parameter=
s?<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;Kind Rega=
rds,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;Maria<br>=

&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;El vie, 1=
2 mar 2021 a las 10:04, Maria Mu=C3=B1oz<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(&lt;<a href=3D"mailto:mamuki92@gmail.=
com" target=3D"_blank">mamuki92@gmail.com</a> &lt;mailto:<a href=3D"mailto:m=
amuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp;&lt;mailt=
o:<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com=
</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:mamuki92@=
gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt;&gt;&gt;) escribi=C3=B3=
:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;Ok Julian, I will check the tree node and try to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;modify the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;properties. Thanks again for the help!<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;Kind Regards,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;Maria<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;El jue, 11 mar 2021 a las 18:26, Julian Arnold<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;(&lt;<a href=3D"mailto:julian@elitecoding.org" target=3D"_blank">julian=
@elitecoding.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt; &lt;mailto:<=
a href=3D"mailto:julian@elitecoding.org" target=3D"_blank">julian@elitecodin=
g.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;&gt;)<br>=

&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;escribi=C3=B3:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;Maria,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/self.ettus_rfnoc_rx_radio_0.set_rx_ag=
c(False, 0)/<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&gt; but I have received the following errorThat's<br=
>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;why I<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;gave the reference ([1]) showing the correct<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;syntax ;)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;Anyways, glad it worked out for you!<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;You might consider filing a bug issue against<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gr-ettus on<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;github.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&gt; By the way, I have read that there are<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;several modes<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;for AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&gt; (fast,slow,hybrid..) I was wondering which<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;type is<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;implemented by<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&gt; default and if it is possible to change AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mode in the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;flowgraph.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;Those modes were mainly dictated by the AD9361.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Default<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;should be<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;"slow". The "hybrid" mode is not implemented as<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;far as I know.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;Which mode you want ("slow" / "fast") depends on the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;signal you want to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;receive. For burst-mode digital signals you<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;might want to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;switch to the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;"fast" mode.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;However, I think this is only possible by<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;directly writing<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;to the corresponding property-tree node. Again,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I'm not<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;sure about<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;UHD-4.0/gr-ettus though.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;Cheers,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;Julian<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wrote:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; Hi Julian,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; I have initially changed the python generated<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for my<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;flowgraph with this<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; line:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/<b=
r>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; but I have received the following error:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; T/raceback (most recent call last):<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; File "constellation_soft_decoder.py", l=
ine<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;301, in<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;module&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; main()<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; File "constellation_soft_decoder.py", l=
ine<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;277, in main<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; tb =3D top_block_cls()<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; File "constellation_soft_decoder.py", l=
ine<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;166, in<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;__init__<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;self.ettus_rfnoc_rx_radio_0.set_rx_agc=
(True, 0)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; AttributeError: 'rfnoc_rx_radio_sptr' object<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;has no<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;attribute 'set_rx_agc'/<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; But rfnoc_radio_impl.cc defines it:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; /void rfnoc_rx_radio_impl::set_agc(const bool<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;enable,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;const size_t chan)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; {<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; return d_radio_ref-&gt;set_rx_ag=
c(enable, chan);<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; }/<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; Searching the rfnoc_rx_radio_sptr with grep<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;takes me to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;"swig" files. I<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; have looked at ettus_swig.py and seen that the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;command<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;name is set_agc<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; instead of set_rx_agc:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; /def set_agc(self, enable: "bool const", chan:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"size_t<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;const") -&gt; "void":<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; r"""<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; set_agc(rfnoc_rx_r=
adio self, bool<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;const enable,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;size_t const chan)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Enable/disable the=
 AGC for this RX<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;radio (if<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;available)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; """<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;_ettus_swig.rfnoc_rx_radio_set_agc(sel=
f,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;enable, chan)/<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; /<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; /<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; Changing this in the flowgraph.py seems to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;work!! Thanks<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;for the help on<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; this! I put this information here just in case<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;someone<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;is stuck in the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; same point.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; By the way, I have read that there are several<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;modes for<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; (fast,slow,hybrid..) I was wondering which type is<b=
r>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;implemented by<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; default and if it is possible to change AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mode in the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;flowgraph.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; Kind Regards,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; Maria<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; El mi=C3=A9, 10 mar 2021 a las 12:03, Maria Mu=C3=B1=
oz<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;(&lt;<a href=3D"mailto:mamuki92@gmail.com" target=3D"_bla=
nk">mamuki92@gmail.com</a> &lt;mailto:<a href=3D"mailto:mamuki92@gmail.com" t=
arget=3D"_blank">mamuki92@gmail.com</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:mamuki92@=
gmail.com" target=3D"_blank">mamuki92@gmail.com</a> &lt;mailto:<a href=3D"ma=
ilto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt;&gt;<br=
>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt; &lt;mailto:<a href=3D"mailto:mamuki92@gmail.com" tar=
get=3D"_blank">mamuki92@gmail.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:mamuki92@=
gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:mamuki92@gmail.com" target=3D=
"_blank">mamuki92@gmail.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:mamuki92@=
gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt;&gt;&gt;&gt;) escribi=
=C3=B3:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;Hi Jules,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;Thank you, I will try it and&nbsp=
;let you know<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;as soon as<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;possible.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;By the way, I have checked the py=
thon<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;generated&nbsp;using the UHD USRP<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;SOURCE block (instead of the RFNo=
C radio<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;block) with<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;AGC active and<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;it generates the set of AGC fine.=
 So, as<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;you said,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;it is fixed in<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;gr-uhd but it might still be a bu=
g in<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gr-ettus.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;Thanks again for the help!<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;Kind Regards,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;Maria<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;El mi=C3=A9, 10 mar 2021 a las 11=
:25, Julian Arnold<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp;(&lt;<a href=3D"mailto:julian@eli=
tecoding.org" target=3D"_blank">julian@elitecoding.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@elitecoding.org" targ=
et=3D"_blank">julian@elitecoding.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@elitecoding.org" targ=
et=3D"_blank">julian@elitecoding.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@elitecoding.org" targ=
et=3D"_blank">julian@elitecoding.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;&gt;&gt;)=
 escribi=C3=B3:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Maria,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt; So, if I u=
nderstand correctly, I<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;have to put<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;there also<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;something like<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"self.ettus_rfnoc_rx_radio_0.se=
t_rx_agc(enable,0)" isn't it?<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exactly! Take a loo=
k at [1] for the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;correct syntax.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[1]<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=3D"https://github.com/EttusRes=
earch/gr-ettus/blob/1038c4ce5135a2803b53554fc4971fe3de747d9a/include/ettus/r=
fnoc_rx_radio.h#L97" rel=3D"noreferrer" target=3D"_blank">https://github.com=
/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc4971fe3de747d9a/includ=
e/ettus/rfnoc_rx_radio.h#L97</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Let me know if that=
 worked out for you.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Cheers,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Julian<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;On 3/10/21 9:59 AM,=
 Maria Mu=C3=B1oz wrote:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Hi Julian,<br=
>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Thanks for th=
e quick answer.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; I think you m=
ight be right about<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;the possible<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;bug turning on<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;the AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; from GRC. I h=
ave checked the flow graph<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;generated and there's no<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; set_rx_agc en=
able option (I checked<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;the c++<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;definition block<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;where this<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; option did ap=
pear but I hadn't look<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;at the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;python generated).<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; The lines rel=
ated to the radio in my<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;flowgraph are these:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; /self.ettus_r=
fnoc_rx_radio_0 =3D<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;ettus.rfnoc_rx_radio(<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; self.rfnoc_graph,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; uhd.device_addr(''),<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -1,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -1)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;self.ettus_rfnoc_rx_radio_0.set=
_bandwidth(samp_rate, 0)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)/<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; So, if I unde=
rstand correctly, I<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;have to put<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;there also<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;something like<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"self.ettus_rfnoc_rx_radio_0.se=
t_rx_agc(enable,0)" isn't it?<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Kind Regards,=
<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; Maria<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; El mi=C3=A9, 1=
0 mar 2021 a las 9:16,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Julian Arnold<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(&lt;<a href=3D"mai=
lto:julian@elitecoding.org" target=3D"_blank">julian@elitecoding.org</a><br>=

&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@elitecoding.org" targ=
et=3D"_blank">julian@elitecoding.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@elitecoding.org" targ=
et=3D"_blank">julian@elitecoding.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@elitecoding.org" targ=
et=3D"_blank">julian@elitecoding.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &lt;mailto:<a=
 href=3D"mailto:julian@elitecoding.org" target=3D"_blank">julian@elitecoding=
.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@elitecoding.org" targ=
et=3D"_blank">julian@elitecoding.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D=
"mailto:julian@elitecoding.org" target=3D"_blank">julian@elitecoding.org</a>=
<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@elitecoding.org" targ=
et=3D"_blank">julian@elitecoding.org</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:julian@el=
itecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;&gt;&gt;&=
gt;) escribi=C3=B3:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;Maria,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;I might not be the right person<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;to answer<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;this, as my<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;experience with<br>=

&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;UHD 4.0 is relatively limited<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;at the moment.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;However, I cant tell you that<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;the AGC on<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;B2x0 devices is<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;controlled via<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;software (using set_rx_agc()).<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;There is<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;no need to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;directly modify the=
<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;state of any pins of the FPGA.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;I vaguely remember that there<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;was a bug<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;in an earlier<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;version of gr-uhd<b=
r>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;(somewhere in 3.7) that made it<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;difficult<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;to turn on the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;AGC using GRC.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;That particular one is fixed in<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gr-uhd.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;Not sure about<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gr-ettus, though.<b=
r>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;Maybe try using set_rx_agc()<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;manually in<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;you flow-graph<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(*.py) and see<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;if that helps.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;Cheers,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;Julian<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;On 3/9/21 5:11 PM, Maria Mu=C3=B1oz via<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;USRP-users wrote:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; Hi all,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; I was wondering if it is<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;possible to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;enable AGC from<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;the RFNoC radio<br>=

&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; block in GNURadio. I use UHD 4.0<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;version and GNURadio<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.8 with<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;gr-ettus.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; I see that the RFNoC Rx<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;radio block has an<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;enable/disable/defa=
ult<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; option in the GNURadio block<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;which I<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;assume calls the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;UHD function<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; "set_rx_agc"<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;(<a href=3D"https://files=
.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abdab1f6c3775a9071b15=
c9805f866486" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/m=
anual/classuhd_1_1usrp_1_1multi__usrp.html#abdab1f6c3775a9071b15c9805f866486=
</a>)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; I have also checked on the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;FPGA side<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;that there is a<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pin from<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;FPGA to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; AD9361 called&nbsp;XCVR_ENA_AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;which is<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;set always to 1 on<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;the top<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;level of<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; the FPGA image (see attached<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;"e320.v", line 872).<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;This pin,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; according to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=3D"https://www.analog.com/medi=
a/en/technical-documentation/data-sheets/AD9361.pdf" rel=3D"noreferrer" targ=
et=3D"_blank">https://www.analog.com/media/en/technical-documentation/data-s=
heets/AD9361.pdf</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; is the "Manual Control Input for<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;Automatic Gain<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Control (AGC)".<br>=

&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; Must be this pin set to 0 to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;have AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;working?<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; If&nbsp;not, how can I&nbsp;get AGC<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;working?<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;I've made some tests<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; enabling/disabling this<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;option but I<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;do not see any<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;changes<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp;between the<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; waveforms received.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; Any help would be appreciated.<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; Kind Regards,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; Maria<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;_______________________________________________<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; USRP-users mailing list<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-user=
s@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" t=
arget=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-user=
s@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;&gt;<=
br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D=
"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus=
.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-user=
s@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" t=
arget=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-user=
s@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;&gt;&=
gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D=
"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus=
.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-user=
s@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" t=
arget=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-user=
s@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;&gt;<=
br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D=
"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus=
.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-user=
s@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" t=
arget=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:USRP-user=
s@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;&gt;&=
gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=3D"http://lists.ettus.com/mail=
man/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank=
">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>=

&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &gt;&gt;<br>
&gt; <br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-593EB1C8-75C2-488A-97FA-F61FC4394CF7--

--===============1658680630360549321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1658680630360549321==--
