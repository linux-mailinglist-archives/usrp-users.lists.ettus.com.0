Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADFB25216F
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 22:00:50 +0200 (CEST)
Received: from [::1] (port=40894 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAf7g-0001pP-Q1; Tue, 25 Aug 2020 16:00:48 -0400
Received: from sonic308-2.consmr.mail.bf2.yahoo.com ([74.6.130.41]:33349)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jayl0583@yahoo.com>) id 1kAf7c-0001i9-ON
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 16:00:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1598385603; bh=qWVAQ/jiEJg3s6HfhSxQ+gwq1MqSC1gOHpImMjE5d5k=;
 h=Date:From:To:Subject:References:From:Subject;
 b=Z4ArFK27EjcCzH4j0mdy/Ri+0jbtMBtxOn+5RJmuJKPnHbjsj6/G2FcCge908VG8b+/uD0O/Uhl1NLqe4rAV94ZFwnUurn6vKuFJYE+keUfZprzBC3QAauadOMte0kpv8BSEJ1YqcwmC58ds+dYH8gbKT+tgS8q9IU/T9EVbCUl/E+Z/pmb/GS65W26Yx5gxvZEL7UNRZnXOBGsBqZI7uFJuV/gyjvCu2C5PjsEH6gXqng0PHntBTg2HgVP1KqNvojKVt3mLYpkM0Gmc3NqCqi8QHRuwYjH8kLofsuvMvmmESdhElUFjw4OJty07t2eXOcsg9PiTYGZF0PGeYZWd+A==
X-YMail-OSG: gIgcWuwVM1lOQdI3aGEzGrooW_uaqf9LdR6wDE1aUtohCyWC2A1KLCINYu37MLt
 xgxr0DuTQFC55xpXltbYIhWZYsd9hajsvfxDJGeA20wLfqoy0IRZvAqH_4Ofx7yQgUugL7464_to
 IR_ixwTU9Lqu1oHYyCdMA2.gsp4qpljMPsqIqvHwW.BzGI5O74qrKE711MxdHnZrlo8WlXqL2cYO
 nAza3c9_Bu5SC5H27JtxfZrDY148_5D7_Wc6hS5JvmgM8lJe5rAm4qukLwPmgr.DkWtfxtE2CqLA
 0Qz9LbcMaHpmTOp9ulNTUqRjOSbZIk5CwqYEhO.xiB5Rl3L525SYXdTfBdstKhxwLEvrSf34DKJa
 jroKorCqw89O8lQ_5hWDPTjtlHRPhAnBt4niS5byCcWHGdgnGw7x5r1Cvx_lDVvbZAlU7cYyQ6VT
 f5OqOutOXjxpJ3noy8uIffkaMIMzDrSnTR7KFaHcN2JnLrg67J.wMdn2qtmNi1v0q8kum4Gf_LTW
 kihjlibTplKTQbVLsLOxwbcY8wZucfN4nn.7aFHAVEnfBflffCX25av35IXM87B2tkKnU7Cr6Cez
 i5X8CGMBzyMO2REh3J0Vz6.FeEWP0qSy7BaBJfPsNM8V3sFFobUrU.NuEh8L7rFLWjGgYsG6H6mg
 70P3GigBG3x1i9NsGXio63WidQK228tvy4S5GHe__8I0xykB7wDZ1R4CAd0IVReCTk1j1m5EwXWI
 i4GP5AiCqk1fC_LU723Yw68yCGRsKz3_Urx7PWyod5_g3vKV0iD5UcSp9wysje.xmDdjoFd9jsGQ
 cXzu.aYJn5sWaddkTtD6cAmry_vkVGaH8kK1WnvncEZo78qTq5z6_4k.Z.muPiRjSLW73PREIw4O
 1b7SurCppl7a3EJeuhZUBoh2yuVBjTO.SO3eCYSlP1az.m6iV8iS26rIemfhhzeriz8iUZikteVt
 ai0GWceikknYwSP7BE0RIxEER9lqpl5Ae0VDo6yGl5kgJN20OoJlMq2ojOuPeJQAAxMzF.1vdd4R
 UIvMZjDqG1lghVkfWol75B2RIpqLBMxGtWMNRunY1u.LRhZY74FHwjKoy6JnM5ZsW7JUNA_eZwhq
 F6kD8OfSLzBsiRuGChIdBJ_5VftvRVQ_J9BEXgVCg4Zoo_58Gax0NwSP2KudKWc1r.mb93qm8ilM
 gPpLOs_BHY2emDU3AlivQ63NBKgLG9J_mHGdEJbTeG.BC50Ng6I1bAzXoja7Z7dHLBIWPIPPa5Pe
 WZoL7lqzTda7w48p_gfLsDuAIWwUurdR6qHiv0INj2gOI.Fd2isunZMNubgw.CIqqyir8D.UCdbl
 lUdADQ1k45CfUR6GswRk84XJ68i68RF1JoX29eti8XfEkdKArRw.1fAuzSablzp5H1ssIW_EE..X
 R7f6fY30qv.8iJEASOwuO.4vjJGhMEqZgehLBsv318a3rGX65hLmRDyURqgLOnYDLO_ggdJHmnCF
 s3X7_
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.bf2.yahoo.com with HTTP; Tue, 25 Aug 2020 20:00:03 +0000
Date: Tue, 25 Aug 2020 20:00:00 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1068579459.5506610.1598385600265@mail.yahoo.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
 boundary="----=_Part_5506609_2057431402.1598385600264"
References: <1068579459.5506610.1598385600265.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16455 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:79.0) Gecko/20100101 Firefox/79.0
Subject: [USRP-users] B210 RX 2 channels
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jay Labhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jay Labhart <jayl0583@yahoo.com>
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

------=_Part_5506609_2057431402.1598385600264
Content-Type: multipart/alternative; 
	boundary="----=_Part_5506608_1101195106.1598385600115"

------=_Part_5506608_1101195106.1598385600115
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
I have started to work with the B210 on a project.=C2=A0 My interest is to =
collect samples from the 2 RX of the B210 looking at a frequency of channel=
 1 of 2.4GHz (2412).=C2=A0 My goal is to use a grc to workout the algorithm=
 then move to c++.=C2=A0 I am having some challenges that I would like to a=
sk the group for help.
I used a .grc to collect samples and review the algorithm.=C2=A0 The graph =
is attached. At this point I am just collecting data. I use a series of var=
iables to create 2 data files.

I moved to c++ and modified a sample to collect the same dataset.
I am using the python file gr_plot_iq.py to review the signals.=C2=A0 When =
I review the grc graph the signals appear as I would think.=C2=A0 The c++ t=
he signals are scattered way apart and A&B are consistent.
Any thoughts would be greatful.

Test:=C2=A0=C2=A0=C2=A0 2.4 GHz router chirping every 100 ms
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 local area with no wireless exce=
pt router=C2=A0=C2=A0=C2=A0 uhd=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A02412000000=C2=A0 channel 1=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rate - 20 MSPS (only get 15)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 looking at 2 RX channels at same=
 freq

hardware & os
Intel=C2=AE Core=E2=84=A2 i5-6400 CPU @ 2.70GHz =C3=97 4=20
12GB RAM
Ubuntu 18.04.5 LTS
attached is the probe from the uhd
The challenge is that I am seeing different results from the grc and the c+=
+ file.=C2=A0 On the grc graph I collect a variety of samples from the rout=
er.=C2=A0 On the c++ file there only seems to be 1-2 samples.=C2=A0 I would=
 expect to see a similar set of samples.



c++ code excerpt
=C2=A0=C2=A0=C2=A0 // detect which channels to use
=C2=A0=C2=A0=C2=A0 std::vector<std::string> channel_strings;
=C2=A0=C2=A0=C2=A0 std::vector<size_t> channel_nums;
=C2=A0=C2=A0=C2=A0 boost::split(channel_strings, channel_list, boost::is_an=
y_of("\"',"));
=C2=A0=C2=A0=C2=A0 for (size_t ch =3D 0; ch < channel_strings.size(); ch++)=
 {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 size_t chan =3D std::stoi(channe=
l_strings[ch]);
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (chan >=3D usrp->get_rx_num_c=
hannels()) {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 throw st=
d::runtime_error("Invalid channel(s) specified.");
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 channel_=
nums.push_back(std::stoi(channel_strings[ch]));
=C2=A0=C2=A0=C2=A0 }

=C2=A0=C2=A0=C2=A0 // create a receive streamer
=C2=A0=C2=A0=C2=A0 // linearly map channels (index0 =3D channel0, index1 =
=3D channel1, ...)
=C2=A0=C2=A0=C2=A0 uhd::stream_args_t stream_args("fc32"); // complex float=
s
=C2=A0=C2=A0=C2=A0 stream_args.channels=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D channel_nums;
=C2=A0=C2=A0=C2=A0 uhd::rx_streamer::sptr rx_stream =3D usrp->get_rx_stream=
(stream_args);

=C2=A0=C2=A0 =C2=A0=C2=A0 if (total_num_samps =3D=3D 0){
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 std::signal(SIGINT, &sig_int_handler);
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 std::cout << "Press Ctrl + C to stop stream=
ing..." << std::endl;
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }

=C2=A0=C2=A0=C2=A0 // setup streaming
=C2=A0=C2=A0=C2=A0 std::cout << std::endl;
=C2=A0=C2=A0=C2=A0 std::cout << boost::format("Begin streaming %u samples, =
%f seconds in the future...")
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 % total_num_samps % seconds_i=
n_future
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 << std::endl;
=C2=A0=C2=A0=C2=A0 uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_M=
ODE_NUM_SAMPS_AND_DONE);
=C2=A0=C2=A0=C2=A0 stream_cmd.num_samps=C2=A0 =3D total_num_samps;
=C2=A0=C2=A0=C2=A0 stream_cmd.stream_now =3D false;
=C2=A0=C2=A0=C2=A0 stream_cmd.time_spec=C2=A0 =3D uhd::time_spec_t(seconds_=
in_future);
=C2=A0=C2=A0=C2=A0 rx_stream->issue_stream_cmd(stream_cmd); // tells all ch=
annels to stream

=C2=A0=C2=A0=C2=A0 // meta-data will be filled in by recv()
=C2=A0=C2=A0=C2=A0 uhd::rx_metadata_t md;

=C2=A0=C2=A0=C2=A0 // allocate buffers to receive with samples (one buffer =
per channel)
=C2=A0=C2=A0=C2=A0 const size_t samps_per_buff =3D rx_stream->get_max_num_s=
amps();
=C2=A0=C2=A0=C2=A0 std::vector<std::vector<std::complex<float>>> buffs(
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp->get_rx_num_channels(), std=
::vector<std::complex<float>>(samps_per_buff));

=C2=A0=C2=A0=C2=A0 // create a vector of pointers to point to each of the c=
hannel buffers
=C2=A0=C2=A0=C2=A0 std::vector<std::complex<float>*> buff_ptrs;
=C2=A0=C2=A0=C2=A0 for (size_t i =3D 0; i < buffs.size(); i++)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 buff_ptrs.push_back(&buffs[i].fr=
ont());

=C2=A0=C2=A0=C2=A0 // the first call to recv() will block this many seconds=
 before receiving
=C2=A0=C2=A0=C2=A0 double timeout =3D seconds_in_future + 0.1; // timeout (=
delay before receive + padding)

=C2=A0=C2=A0=C2=A0 size_t num_acc_samps =3D 0; // number of accumulated sam=
ples
=C2=A0=C2=A0 =C2=A0std::ofstream outfile1, outfile2;
=C2=A0=C2=A0 =C2=A0outfile1.open(file1.c_str(), std::ofstream::binary);
=C2=A0=C2=A0 =C2=A0outfile2.open(file2.c_str(), std::ofstream::binary);
=C2=A0=C2=A0 =C2=A0
=C2=A0=C2=A0=C2=A0 while (not stop_signal_called) {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // receive a single packet
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 size_t num_rx_samps =3D rx_strea=
m->recv(buff_ptrs, samps_per_buff, md, timeout);

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // use a small timeout for subse=
quent packets
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 timeout =3D 0.1;

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // handle the error code
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (md.error_code =3D=3D uhd::rx=
_metadata_t::ERROR_CODE_TIMEOUT)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (md.error_code !=3D uhd::rx_m=
etadata_t::ERROR_CODE_NONE) {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 //throw =
std::runtime_error(str(boost::format("Receiver error %s") % md.strerror()))=
;
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0std::cout << md.st=
rerror() << std::endl;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (verbose)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 std::cou=
t << boost::format(
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 "Received packet: %u samples, %u full secs, %f frac secs=
")
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 % num_rx_samps % md.time_spec.get_full_secs()
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 % md.time_spec.get_frac_secs()
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 << std::endl;

=C2=A0=C2=A0 =C2=A0=C2=A0 if (outfile1.is_open())
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 outfile1.write((const char*)(&buffs[0].fron=
t()),
=C2=A0=C2=A0 =C2=A0=C2=A0 num_rx_samps*sizeof(std::complex<float>));
=C2=A0=C2=A0 =C2=A0=C2=A0 if (outfile2.is_open())
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 outfile2.write((const char*)(&buffs[1].fron=
t()),
=C2=A0=C2=A0 =C2=A0=C2=A0 num_rx_samps*sizeof(std::complex<float>));

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 num_acc_samps +=3D num_rx_samps;
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0// check if continuous or number of s=
amples
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0if (total_num_samps !=3D 0) {
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0if (num_acc_samps =
>=3D total_num_samps)
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0stop_signal_called =3D true;
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0}
=C2=A0=C2=A0=C2=A0 }

output from run with uhd
Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.14.1.HEAD-0-=
g0347a6d8
[INFO] [B200] Detected Device: B210
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...=20
[INFO] [B200] Register loopback test passed
[INFO] [B200] Performing register loopback test...=20
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...=20
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
=C2=A0 Device: B-Series Device
=C2=A0 Mboard 0: B210
=C2=A0 RX Channel: 0
=C2=A0=C2=A0=C2=A0 RX DSP: 0
=C2=A0=C2=A0=C2=A0 RX Dboard: A
=C2=A0=C2=A0=C2=A0 RX Subdev: FE-RX2
=C2=A0 RX Channel: 1
=C2=A0=C2=A0=C2=A0 RX DSP: 1
=C2=A0=C2=A0=C2=A0 RX Dboard: A
=C2=A0=C2=A0=C2=A0 RX Subdev: FE-RX1
=C2=A0 TX Channel: 0
=C2=A0=C2=A0=C2=A0 TX DSP: 0
=C2=A0=C2=A0=C2=A0 TX Dboard: A
=C2=A0=C2=A0=C2=A0 TX Subdev: FE-TX2
=C2=A0 TX Channel: 1
=C2=A0=C2=A0=C2=A0 TX DSP: 1
=C2=A0=C2=A0=C2=A0 TX Dboard: A
=C2=A0=C2=A0=C2=A0 TX Subdev: FE-TX1

Using Antenna 0: RX2
Using Antenna 1: RX2
Actual RX Freq: 2412.000000 MHz...
Actual RX Freq: 2411.999998 MHz...

RX Gain Range 0: (0, 76, 1)
...
Setting RX Gain: 64.000000 dB...
Actual RX Gain: 64.000000 dB...

Setting RX Bandwidth: 15.000000 MHz...
Actual RX Bandwidth: 15.000000 MHz...

Setting RX Rate: 15.000000 Msps...
[INFO] [B200] Asking for clock rate 60.000000 MHz...=20
[INFO] [B200] Actually got clock rate 60.000000 MHz.
Actual RX Rate: 15.000000 Msps...

Setting device timestamp to 0...

Begin streaming 10000 samples, 10.000000 seconds in the future...
Received packet: 2040 samples, 10 full secs, 0.000003 frac secs
Received packet: 2040 samples, 10 full secs, 0.000139 frac secs
Received packet: 2040 samples, 10 full secs, 0.000275 frac secs
Received packet: 2040 samples, 10 full secs, 0.000411 frac secs
Received packet: 1840 samples, 10 full secs, 0.000547 frac secs

Done!




------=_Part_5506608_1101195106.1598385600115
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false">Hello,</div><div dir=3D"ltr" data-setdir=3D"=
false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I have started to w=
ork with the B210 on a project.&nbsp; My interest is to collect samples fro=
m the 2 RX of the B210 looking at a frequency of channel 1 of 2.4GHz (<span=
>2412).&nbsp; My goal is to use a grc to workout the algorithm then move to=
 c++.&nbsp; I am having some challenges that I would like to ask the group =
for help.</span></div><div dir=3D"ltr" data-setdir=3D"false"><span><br></sp=
an></div><div dir=3D"ltr" data-setdir=3D"false">I used a .grc to collect sa=
mples and review the algorithm.&nbsp; The graph is attached. At this point =
I am just collecting data. I use a series of variables to create 2 data fil=
es.<br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"l=
tr" data-setdir=3D"false">I moved to c++ and modified a sample to collect t=
he same dataset.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div=
 dir=3D"ltr" data-setdir=3D"false">I am using the python file gr_plot_iq.py=
 to review the signals.&nbsp; When I review the grc graph the signals appea=
r as I would think.&nbsp; The c++ the signals are scattered way apart and A=
&amp;B are consistent.</div><div dir=3D"ltr" data-setdir=3D"false"><br></di=
v><div dir=3D"ltr" data-setdir=3D"false">Any thoughts would be greatful.<br=
></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" da=
ta-setdir=3D"false">Test:</div><div dir=3D"ltr" data-setdir=3D"false"><div>=
<div dir=3D"ltr" data-setdir=3D"false">&nbsp;&nbsp;&nbsp; 2.4 GHz router ch=
irping every 100 ms<br></div></div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; local area with no wireless except router</div></div><div dir=3D"lt=
r" data-setdir=3D"false">&nbsp;&nbsp;&nbsp; <span>uhd <br></span></div><div=
 dir=3D"ltr" data-setdir=3D"false"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;2412000000</span>&nbsp; channel 1</div><div dir=3D"ltr" data-=
setdir=3D"false">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rate - 20 MSPS =
(only get 15)<br></div><div dir=3D"ltr" data-setdir=3D"false">&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; looking at 2 RX channels at same freq<br></di=
v><div><br></div><div dir=3D"ltr" data-setdir=3D"false"><div>hardware &amp;=
 os<br>Intel=C2=AE Core=E2=84=A2 i5-6400 CPU @ 2.70GHz =C3=97 4 <br>12GB RA=
M<br><div>Ubuntu 18.04.5 LTS</div><div><br></div><div dir=3D"ltr" data-setd=
ir=3D"false">attached is the probe from the uhd</div><div dir=3D"ltr" data-=
setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">The chall=
enge is that I am seeing different results from the grc and the c++ file.&n=
bsp; On the grc graph I collect a variety of samples from the router.&nbsp;=
 On the c++ file there only seems to be 1-2 samples.&nbsp; I would expect t=
o see a similar set of samples.</div><div dir=3D"ltr" data-setdir=3D"false"=
><br></div><div dir=3D"ltr" data-setdir=3D"false"><img title=3D"Inline imag=
e" alt=3D"Inline image" src=3D"cid:b89b4bc5-4986-c099-0e86-5f22b13ff6aa@yah=
oo.com" class=3D"yahoo-inline-image" style=3D"max-width: 628px; width: 100%=
;" draggable=3D"false" data-id=3D"<b89b4bc5-4986-c099-0e86-5f22b13ff6aa@yah=
oo.com>"><br><br></div><div><br></div><div dir=3D"ltr" data-setdir=3D"false=
"><b>c++ code excerpt</b></div><div dir=3D"ltr" data-setdir=3D"false"><br><=
/div><div dir=3D"ltr" data-setdir=3D"false"><div>&nbsp;&nbsp;&nbsp; // dete=
ct which channels to use<br>&nbsp;&nbsp;&nbsp; std::vector&lt;std::string&g=
t; channel_strings;<br>&nbsp;&nbsp;&nbsp; std::vector&lt;size_t&gt; channel=
_nums;<br>&nbsp;&nbsp;&nbsp; boost::split(channel_strings, channel_list, bo=
ost::is_any_of("\"',"));<br>&nbsp;&nbsp;&nbsp; for (size_t ch =3D 0; ch &lt=
; channel_strings.size(); ch++) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; size_t chan =3D std::stoi(channel_strings[ch]);<br>&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; if (chan &gt;=3D usrp-&gt;get_rx_num_channels()) {<=
br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; throw=
 std::runtime_error("Invalid channel(s) specified.");<br>&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; } else<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; channel_nums.push_back(std::stoi(channel_strings=
[ch]));<br>&nbsp;&nbsp;&nbsp; }<br><br>&nbsp;&nbsp;&nbsp; // create a recei=
ve streamer<br>&nbsp;&nbsp;&nbsp; // linearly map channels (index0 =3D chan=
nel0, index1 =3D channel1, ...)<br>&nbsp;&nbsp;&nbsp; uhd::stream_args_t st=
ream_args("fc32"); // complex floats<br>&nbsp;&nbsp;&nbsp; stream_args.chan=
nels&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; =3D channel_nums;<br>&nbsp;&nbsp;&nbsp; uhd::rx_streamer::sptr rx_stream =
=3D usrp-&gt;get_rx_stream(stream_args);<br><br>&nbsp;&nbsp; &nbsp;&nbsp; i=
f (total_num_samps =3D=3D 0){<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; std::signa=
l(SIGINT, &amp;sig_int_handler);<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; std::co=
ut &lt;&lt; "Press Ctrl + C to stop streaming..." &lt;&lt; std::endl;<br>&n=
bsp;&nbsp; &nbsp;&nbsp;&nbsp; }<br><br>&nbsp;&nbsp;&nbsp; // setup streamin=
g<br>&nbsp;&nbsp;&nbsp; std::cout &lt;&lt; std::endl;<br>&nbsp;&nbsp;&nbsp;=
 std::cout &lt;&lt; boost::format("Begin streaming %u samples, %f seconds i=
n the future...")<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; % total_=
num_samps % seconds_in_future<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;&lt; std::endl;<br>&nbsp;&nbsp;&nb=
sp; uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_A=
ND_DONE);<br>&nbsp;&nbsp;&nbsp; stream_cmd.num_samps&nbsp; =3D total_num_sa=
mps;<br>&nbsp;&nbsp;&nbsp; stream_cmd.stream_now =3D false;<br>&nbsp;&nbsp;=
&nbsp; stream_cmd.time_spec&nbsp; =3D uhd::time_spec_t(seconds_in_future);<=
br>&nbsp;&nbsp;&nbsp; rx_stream-&gt;issue_stream_cmd(stream_cmd); // tells =
all channels to stream<br><br>&nbsp;&nbsp;&nbsp; // meta-data will be fille=
d in by recv()<br>&nbsp;&nbsp;&nbsp; uhd::rx_metadata_t md;<br><br>&nbsp;&n=
bsp;&nbsp; // allocate buffers to receive with samples (one buffer per chan=
nel)<br>&nbsp;&nbsp;&nbsp; const size_t samps_per_buff =3D rx_stream-&gt;ge=
t_max_num_samps();<br>&nbsp;&nbsp;&nbsp; std::vector&lt;std::vector&lt;std:=
:complex&lt;float&gt;&gt;&gt; buffs(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; usrp-&gt;get_rx_num_channels(), std::vector&lt;std::complex&lt;floa=
t&gt;&gt;(samps_per_buff));<br><br>&nbsp;&nbsp;&nbsp; // create a vector of=
 pointers to point to each of the channel buffers<br>&nbsp;&nbsp;&nbsp; std=
::vector&lt;std::complex&lt;float&gt;*&gt; buff_ptrs;<br>&nbsp;&nbsp;&nbsp;=
 for (size_t i =3D 0; i &lt; buffs.size(); i++)<br>&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; buff_ptrs.push_back(&amp;buffs[i].front());<br><br>&nbsp=
;&nbsp;&nbsp; // the first call to recv() will block this many seconds befo=
re receiving<br>&nbsp;&nbsp;&nbsp; double timeout =3D seconds_in_future + 0=
.1; // timeout (delay before receive + padding)<br><br>&nbsp;&nbsp;&nbsp; s=
ize_t num_acc_samps =3D 0; // number of accumulated samples<br>&nbsp;&nbsp;=
 &nbsp;std::ofstream outfile1, outfile2;<br>&nbsp;&nbsp; &nbsp;outfile1.ope=
n(file1.c_str(), std::ofstream::binary);<br>&nbsp;&nbsp; &nbsp;outfile2.ope=
n(file2.c_str(), std::ofstream::binary);<br>&nbsp;&nbsp; &nbsp;<br>&nbsp;&n=
bsp;&nbsp; while (not stop_signal_called) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; // receive a single packet<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; size_t num_rx_samps =3D rx_stream-&gt;recv(buff_ptrs, samps_pe=
r_buff, md, timeout);<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // =
use a small timeout for subsequent packets<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; timeout =3D 0.1;<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; // handle the error code<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; if (md.error_code =3D=3D uhd::rx_metadata_t::ERROR_CODE_TIMEOUT)<br>&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;<br>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code !=3D uhd::rx_meta=
data_t::ERROR_CODE_NONE) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; //throw std::runtime_error(str(boost::format("Receive=
r error %s") % md.strerror()));<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&n=
bsp;&nbsp; &nbsp;std::cout &lt;&lt; md.strerror() &lt;&lt; std::endl;<br>&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; if (verbose)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; std::cout &lt;&lt; boost::format(<br>&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; "Received packet: %u samples, %u full secs, %f frac secs")<br>&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; % num_rx_samps % md.time_spec.get_full_secs()<br>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; % md.time_spec.get_frac_secs()<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; &lt;&lt; std::endl;<br><br>&nbsp;&nbsp; &nbsp;&nbsp; if (o=
utfile1.is_open())<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; outfile1.write((const=
 char*)(&amp;buffs[0].front()),<br>&nbsp;&nbsp; &nbsp;&nbsp; num_rx_samps*s=
izeof(std::complex&lt;float&gt;));<br>&nbsp;&nbsp; &nbsp;&nbsp; if (outfile=
2.is_open())<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; outfile2.write((const char*=
)(&amp;buffs[1].front()),<br>&nbsp;&nbsp; &nbsp;&nbsp; num_rx_samps*sizeof(=
std::complex&lt;float&gt;));<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; num_acc_samps +=3D num_rx_samps;<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nb=
sp;// check if continuous or number of samples<br>&nbsp;&nbsp; &nbsp;&nbsp;=
&nbsp; &nbsp;if (total_num_samps !=3D 0) {<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbs=
p; &nbsp;&nbsp;&nbsp; &nbsp;if (num_acc_samps &gt;=3D total_num_samps)<br>&=
nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;=
stop_signal_called =3D true;<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}<br>=
&nbsp;&nbsp;&nbsp; }<br><br></div><div dir=3D"ltr" data-setdir=3D"false"><b=
>output from run with uhd</b></div><div dir=3D"ltr" data-setdir=3D"false"><=
br></div><div dir=3D"ltr" data-setdir=3D"false"><div>Creating the usrp devi=
ce with: ...<br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UH=
D_3.14.1.HEAD-0-g0347a6d8<br>[INFO] [B200] Detected Device: B210<br>[INFO] =
[B200] Operating over USB 3.<br>[INFO] [B200] Initialize CODEC control...<b=
r>[INFO] [B200] Initialize Radio control...<br>[INFO] [B200] Performing reg=
ister loopback test... <br>[INFO] [B200] Register loopback test passed<br>[=
INFO] [B200] Performing register loopback test... <br>[INFO] [B200] Registe=
r loopback test passed<br>[INFO] [B200] Setting master clock rate selection=
 to 'automatic'.<br>[INFO] [B200] Asking for clock rate 16.000000 MHz... <b=
r>[INFO] [B200] Actually got clock rate 16.000000 MHz.<br>Using Device: Sin=
gle USRP:<br>&nbsp; Device: B-Series Device<br>&nbsp; Mboard 0: B210<br>&nb=
sp; RX Channel: 0<br>&nbsp;&nbsp;&nbsp; RX DSP: 0<br>&nbsp;&nbsp;&nbsp; RX =
Dboard: A<br>&nbsp;&nbsp;&nbsp; RX Subdev: FE-RX2<br>&nbsp; RX Channel: 1<b=
r>&nbsp;&nbsp;&nbsp; RX DSP: 1<br>&nbsp;&nbsp;&nbsp; RX Dboard: A<br>&nbsp;=
&nbsp;&nbsp; RX Subdev: FE-RX1<br>&nbsp; TX Channel: 0<br>&nbsp;&nbsp;&nbsp=
; TX DSP: 0<br>&nbsp;&nbsp;&nbsp; TX Dboard: A<br>&nbsp;&nbsp;&nbsp; TX Sub=
dev: FE-TX2<br>&nbsp; TX Channel: 1<br>&nbsp;&nbsp;&nbsp; TX DSP: 1<br>&nbs=
p;&nbsp;&nbsp; TX Dboard: A<br>&nbsp;&nbsp;&nbsp; TX Subdev: FE-TX1<br><br>=
Using Antenna 0: RX2<br>Using Antenna 1: RX2<br>Actual RX Freq: 2412.000000=
 MHz...<br>Actual RX Freq: 2411.999998 MHz...<br><br>RX Gain Range 0: (0, 7=
6, 1)<br>...<br>Setting RX Gain: 64.000000 dB...<br>Actual RX Gain: 64.0000=
00 dB...<br><br>Setting RX Bandwidth: 15.000000 MHz...<br>Actual RX Bandwid=
th: 15.000000 MHz...<br><br>Setting RX Rate: 15.000000 Msps...<br>[INFO] [B=
200] Asking for clock rate 60.000000 MHz... <br>[INFO] [B200] Actually got =
clock rate 60.000000 MHz.<br>Actual RX Rate: 15.000000 Msps...<br><br>Setti=
ng device timestamp to 0...<br><br>Begin streaming 10000 samples, 10.000000=
 seconds in the future...<br>Received packet: 2040 samples, 10 full secs, 0=
.000003 frac secs<br>Received packet: 2040 samples, 10 full secs, 0.000139 =
frac secs<br>Received packet: 2040 samples, 10 full secs, 0.000275 frac sec=
s<br>Received packet: 2040 samples, 10 full secs, 0.000411 frac secs<br>Rec=
eived packet: 1840 samples, 10 full secs, 0.000547 frac secs<br><br>Done!<b=
r><br></div><div><br></div></div></div></div><div><br></div></div></div></b=
ody></html>
------=_Part_5506608_1101195106.1598385600115--

------=_Part_5506609_2057431402.1598385600264
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="probe output"
Content-ID: <9c316038-042a-0dcf-a824-8e127888fb3b@yahoo.com>

amF5QG52bWU6fiQgdWhkX3VzcnBfcHJvYmUKW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZl
cnNpb24gNy41LjA7IEJvb3N0XzEwNjUwMTsgVUhEXzMuMTQuMS5IRUFELTAtZzAzNDdhNmQ4CltJ
TkZPXSBbQjIwMF0gTG9hZGluZyBmaXJtd2FyZSBpbWFnZTogL3Vzci9sb2NhbC9zaGFyZS91aGQv
aW1hZ2VzL3VzcnBfYjIwMF9mdy5oZXguLi4KW0lORk9dIFtCMjAwXSBEZXRlY3RlZCBEZXZpY2U6
IEIyMTAKW0lORk9dIFtCMjAwXSBMb2FkaW5nIEZQR0EgaW1hZ2U6IC91c3IvbG9jYWwvc2hhcmUv
dWhkL2ltYWdlcy91c3JwX2IyMTBfZnBnYS5iaW4uLi4KW0lORk9dIFtCMjAwXSBPcGVyYXRpbmcg
b3ZlciBVU0IgMy4KW0lORk9dIFtCMjAwXSBEZXRlY3RpbmcgaW50ZXJuYWwgR1BTRE8uLi4uIApb
SU5GT10gW0dQU10gTm8gR1BTRE8gZm91bmQKW0lORk9dIFtCMjAwXSBJbml0aWFsaXplIENPREVD
IGNvbnRyb2wuLi4KW0lORk9dIFtCMjAwXSBJbml0aWFsaXplIFJhZGlvIGNvbnRyb2wuLi4KW0lO
Rk9dIFtCMjAwXSBQZXJmb3JtaW5nIHJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QuLi4gCltJTkZPXSBb
QjIwMF0gUmVnaXN0ZXIgbG9vcGJhY2sgdGVzdCBwYXNzZWQKW0lORk9dIFtCMjAwXSBQZXJmb3Jt
aW5nIHJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QuLi4gCltJTkZPXSBbQjIwMF0gUmVnaXN0ZXIgbG9v
cGJhY2sgdGVzdCBwYXNzZWQKW0lORk9dIFtCMjAwXSBTZXR0aW5nIG1hc3RlciBjbG9jayByYXRl
IHNlbGVjdGlvbiB0byAnYXV0b21hdGljJy4KW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2Nr
IHJhdGUgMTYuMDAwMDAwIE1Iei4uLiAKW0lORk9dIFtCMjAwXSBBY3R1YWxseSBnb3QgY2xvY2sg
cmF0ZSAxNi4wMDAwMDAgTUh6LgogIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCiAvCnwgICAgICAgRGV2aWNlOiBCLVNlcmllcyBEZXZpY2UKfCAg
ICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
fCAgICAvCnwgICB8ICAgICAgIE1ib2FyZDogQjIxMAp8ICAgfCAgIHNlcmlhbDogMzFDOTI5Qwp8
ICAgfCAgIG5hbWU6IE15QjIxMAp8ICAgfCAgIHByb2R1Y3Q6IDIKfCAgIHwgICByZXZpc2lvbjog
NAp8ICAgfCAgIEZXIFZlcnNpb246IDguMAp8ICAgfCAgIEZQR0EgVmVyc2lvbjogMTYuMAp8ICAg
fCAgIAp8ICAgfCAgIFRpbWUgc291cmNlczogIG5vbmUsIGludGVybmFsLCBleHRlcm5hbCwgZ3Bz
ZG8KfCAgIHwgICBDbG9jayBzb3VyY2VzOiBpbnRlcm5hbCwgZXh0ZXJuYWwsIGdwc2RvCnwgICB8
ICAgU2Vuc29yczogcmVmX2xvY2tlZAp8ICAgfCAgICAgX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KfCAgIHwgICAgLwp8ICAgfCAgIHwgICAgICAg
UlggRFNQOiAwCnwgICB8ICAgfCAgIAp8ICAgfCAgIHwgICBGcmVxIHJhbmdlOiAtOC4wMDAgdG8g
OC4wMDAgTUh6CnwgICB8ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwp8ICAgfCAgICAvCnwgICB8ICAgfCAgICAgICBSWCBEU1A6IDEKfCAg
IHwgICB8ICAgCnwgICB8ICAgfCAgIEZyZXEgcmFuZ2U6IC04LjAwMCB0byA4LjAwMCBNSHoKfCAg
IHwgICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCnwgICB8ICAgIC8KfCAgIHwgICB8ICAgICAgIFJYIERib2FyZDogQQp8ICAgfCAgIHwgICAg
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnwg
ICB8ICAgfCAgICAvCnwgICB8ICAgfCAgIHwgICAgICAgUlggRnJvbnRlbmQ6IEEKfCAgIHwgICB8
ICAgfCAgIE5hbWU6IEZFLVJYMgp8ICAgfCAgIHwgICB8ICAgQW50ZW5uYXM6IFRYL1JYLCBSWDIK
fCAgIHwgICB8ICAgfCAgIFNlbnNvcnM6IHRlbXAsIHJzc2ksIGxvX2xvY2tlZAp8ICAgfCAgIHwg
ICB8ICAgRnJlcSByYW5nZTogNTAuMDAwIHRvIDYwMDAuMDAwIE1Iegp8ICAgfCAgIHwgICB8ICAg
R2FpbiByYW5nZSBQR0E6IDAuMCB0byA3Ni4wIHN0ZXAgMS4wIGRCCnwgICB8ICAgfCAgIHwgICBC
YW5kd2lkdGggcmFuZ2U6IDIwMDAwMC4wIHRvIDU2MDAwMDAwLjAgc3RlcCAwLjAgSHoKfCAgIHwg
ICB8ICAgfCAgIENvbm5lY3Rpb24gVHlwZTogSVEKfCAgIHwgICB8ICAgfCAgIFVzZXMgTE8gb2Zm
c2V0OiBObwp8ICAgfCAgIHwgICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCnwgICB8ICAgfCAgICAvCnwgICB8ICAgfCAgIHwgICAgICAgUlgg
RnJvbnRlbmQ6IEIKfCAgIHwgICB8ICAgfCAgIE5hbWU6IEZFLVJYMQp8ICAgfCAgIHwgICB8ICAg
QW50ZW5uYXM6IFRYL1JYLCBSWDIKfCAgIHwgICB8ICAgfCAgIFNlbnNvcnM6IHRlbXAsIHJzc2ks
IGxvX2xvY2tlZAp8ICAgfCAgIHwgICB8ICAgRnJlcSByYW5nZTogNTAuMDAwIHRvIDYwMDAuMDAw
IE1Iegp8ICAgfCAgIHwgICB8ICAgR2FpbiByYW5nZSBQR0E6IDAuMCB0byA3Ni4wIHN0ZXAgMS4w
IGRCCnwgICB8ICAgfCAgIHwgICBCYW5kd2lkdGggcmFuZ2U6IDIwMDAwMC4wIHRvIDU2MDAwMDAw
LjAgc3RlcCAwLjAgSHoKfCAgIHwgICB8ICAgfCAgIENvbm5lY3Rpb24gVHlwZTogSVEKfCAgIHwg
ICB8ICAgfCAgIFVzZXMgTE8gb2Zmc2V0OiBObwp8ICAgfCAgIHwgICAgIF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnwgICB8ICAgfCAgICAvCnwg
ICB8ICAgfCAgIHwgICAgICAgUlggQ29kZWM6IEEKfCAgIHwgICB8ICAgfCAgIE5hbWU6IEIyMTAg
UlggZHVhbCBBREMKfCAgIHwgICB8ICAgfCAgIEdhaW4gRWxlbWVudHM6IE5vbmUKfCAgIHwgICAg
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnwg
ICB8ICAgIC8KfCAgIHwgICB8ICAgICAgIFRYIERTUDogMAp8ICAgfCAgIHwgICAKfCAgIHwgICB8
ICAgRnJlcSByYW5nZTogLTguMDAwIHRvIDguMDAwIE1Iegp8ICAgfCAgICAgX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KfCAgIHwgICAgLwp8ICAg
fCAgIHwgICAgICAgVFggRFNQOiAxCnwgICB8ICAgfCAgIAp8ICAgfCAgIHwgICBGcmVxIHJhbmdl
OiAtOC4wMDAgdG8gOC4wMDAgTUh6CnwgICB8ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwp8ICAgfCAgICAvCnwgICB8ICAgfCAgICAgICBU
WCBEYm9hcmQ6IEEKfCAgIHwgICB8ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwp8ICAgfCAgIHwgICAgLwp8ICAgfCAgIHwgICB8ICAgICAg
IFRYIEZyb250ZW5kOiBBCnwgICB8ICAgfCAgIHwgICBOYW1lOiBGRS1UWDIKfCAgIHwgICB8ICAg
fCAgIEFudGVubmFzOiBUWC9SWAp8ICAgfCAgIHwgICB8ICAgU2Vuc29yczogdGVtcCwgbG9fbG9j
a2VkCnwgICB8ICAgfCAgIHwgICBGcmVxIHJhbmdlOiA1MC4wMDAgdG8gNjAwMC4wMDAgTUh6Cnwg
ICB8ICAgfCAgIHwgICBHYWluIHJhbmdlIFBHQTogMC4wIHRvIDg5Ljggc3RlcCAwLjIgZEIKfCAg
IHwgICB8ICAgfCAgIEJhbmR3aWR0aCByYW5nZTogMjAwMDAwLjAgdG8gNTYwMDAwMDAuMCBzdGVw
IDAuMCBIegp8ICAgfCAgIHwgICB8ICAgQ29ubmVjdGlvbiBUeXBlOiBJUQp8ICAgfCAgIHwgICB8
ICAgVXNlcyBMTyBvZmZzZXQ6IE5vCnwgICB8ICAgfCAgICAgX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KfCAgIHwgICB8ICAgIC8KfCAgIHwgICB8
ICAgfCAgICAgICBUWCBGcm9udGVuZDogQgp8ICAgfCAgIHwgICB8ICAgTmFtZTogRkUtVFgxCnwg
ICB8ICAgfCAgIHwgICBBbnRlbm5hczogVFgvUlgKfCAgIHwgICB8ICAgfCAgIFNlbnNvcnM6IHRl
bXAsIGxvX2xvY2tlZAp8ICAgfCAgIHwgICB8ICAgRnJlcSByYW5nZTogNTAuMDAwIHRvIDYwMDAu
MDAwIE1Iegp8ICAgfCAgIHwgICB8ICAgR2FpbiByYW5nZSBQR0E6IDAuMCB0byA4OS44IHN0ZXAg
MC4yIGRCCnwgICB8ICAgfCAgIHwgICBCYW5kd2lkdGggcmFuZ2U6IDIwMDAwMC4wIHRvIDU2MDAw
MDAwLjAgc3RlcCAwLjAgSHoKfCAgIHwgICB8ICAgfCAgIENvbm5lY3Rpb24gVHlwZTogSVEKfCAg
IHwgICB8ICAgfCAgIFVzZXMgTE8gb2Zmc2V0OiBObwp8ICAgfCAgIHwgICAgIF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnwgICB8ICAgfCAgICAv
CnwgICB8ICAgfCAgIHwgICAgICAgVFggQ29kZWM6IEEKfCAgIHwgICB8ICAgfCAgIE5hbWU6IEIy
MTAgVFggZHVhbCBEQUMKfCAgIHwgICB8ICAgfCAgIEdhaW4gRWxlbWVudHM6IE5vbmUKCg==

------=_Part_5506609_2057431402.1598385600264
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="grc-File.png"
Content-ID: <b89b4bc5-4986-c099-0e86-5f22b13ff6aa@yahoo.com>

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

------=_Part_5506609_2057431402.1598385600264
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

------=_Part_5506609_2057431402.1598385600264--

