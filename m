Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB746256332
	for <lists+usrp-users@lfdr.de>; Sat, 29 Aug 2020 00:41:05 +0200 (CEST)
Received: from [::1] (port=48368 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBn3K-0002u9-SI; Fri, 28 Aug 2020 18:40:58 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:43505)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kBn3G-0002po-R4
 for usrp-users@lists.ettus.com; Fri, 28 Aug 2020 18:40:54 -0400
Received: by mail-qk1-f178.google.com with SMTP id o64so1074861qkb.10
 for <usrp-users@lists.ettus.com>; Fri, 28 Aug 2020 15:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=OMs5VzGFE706rMu0BY7koJ4u7UQqX2XncAluWEOvpgw=;
 b=BfJ9RHW+C9s4d5uUfdT4iZ7FaHApvRBlBxWUprNs4QwngTZS9WjMakuR3fQQWPCWwa
 WcKzSMSqWwP1VG6fIQpVuBO4SMW6lwFYiiIq3byXvrAVUzp8VS1hFXYU8hHgxsj0HROg
 I6D3Z3PHm1JrkohAD5FoJcCW0DhHD5RYb5rRHFIoP/gP+pUIOCx53mDxu5ib0svOHixi
 lIKCJh/4pXWAkreVZLncWvUVurRRJQDtSowIEWZEBFwS0y2z1KXIfkaN6DpfBhv5s7gk
 0yaR42Hdeo5hpVpLBm5LOW21xipXZ3O+s/vCUCYagxRdzJlqmkmopUWsSWw30l0Hf/2n
 BBQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=OMs5VzGFE706rMu0BY7koJ4u7UQqX2XncAluWEOvpgw=;
 b=QGBzLpf3uZezBfClOmreOHgUqk8xSWyPIecpC8XNQGsArRUI2wjZIt9RYwie9y04Ck
 WruAyg2HSYh/7NFMkpGfVdtcmgneiPCsNrlDJhtbakMOgmNOMYjK5w0kFpV5UKL41agx
 1NOlL5sjbAdiem8RONUAbDLQqYkbCB8xWbmzzk2d53CWt08XwQcczGfz+NDW78ChkmjD
 igKibTbCzNc0R1dv1/kA0Naaupyf6rVBGMvhMMd7iCCQK6wEvsOHqeukNmVIJ7XPfOf8
 SIwfK6c8IEOLy73C7UuaC3EFIPetWEGmFi3gjo4MHmvnxgm3xMP8MYJkKAkVK7Q965XM
 PrJA==
X-Gm-Message-State: AOAM531x3HhTM7wXeuAM/DEiaZ/F+6NcOQ9gl6F+FX3cy8gBCgPIzKuy
 pDZYQyBJ0759PndqFDi3tMQ=
X-Google-Smtp-Source: ABdhPJwx1zbi9MN+d61K/ECIjeovOJTZzB/a+mIJtCgivp00Rjovuq4ZgsHmOSxdAloljYQ7iBWpNg==
X-Received: by 2002:a37:a187:: with SMTP id k129mr1295500qke.147.1598654414176; 
 Fri, 28 Aug 2020 15:40:14 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.gmail.com with ESMTPSA id c24sm458078qkk.89.2020.08.28.15.40.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Aug 2020 15:40:13 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Fri, 28 Aug 2020 18:40:13 -0400
Message-Id: <B8A418E5-6996-47DD-80BA-031FB9FDD06D@gmail.com>
References: <25056125.66690.1598651548674@mail.yahoo.com>
Cc: Usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <25056125.66690.1598651548674@mail.yahoo.com>
To: Jay Labhart <jayl0583@yahoo.com>
X-Mailer: iPhone Mail (17G80)
Subject: Re: [USRP-users] B210 RX 2 channels
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============3831258581380864608=="
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


--===============3831258581380864608==
Content-Type: multipart/alternative; boundary=Apple-Mail-615B0DCF-18EC-4036-9C56-EC5E8E1F9238
Content-Transfer-Encoding: 7bit


--Apple-Mail-615B0DCF-18EC-4036-9C56-EC5E8E1F9238
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I would suggest starting with the rx_multi_samples example that comes with U=
HD.=20

Putting something together with GnuRadio and GRC would also be straightforwa=
rd.=20

Sent from my iPhone

> On Aug 28, 2020, at 5:52 PM, Jay Labhart <jayl0583@yahoo.com> wrote:
>=20
> =EF=BB=BF
> Marcus,
>=20
> Thanks for the reply.  I took several measurements from 2-20 msps and the g=
raphic was a remnant from that.
>=20
> Do you have any experience working with 2 RX channels?
>=20
> I can collect data but it seems there maybe some configuration parameters I=
 either missed or set incorrectly?
>=20
> I wondered if you might be willing to help me to get this b210 configured p=
roperly.
>=20
> Thanks
> Jay
>=20
> On Tuesday, August 25, 2020, 3:56:22 PM CDT, Marcus D. Leech via USRP-user=
s <usrp-users@lists.ettus.com> wrote:
>=20
>=20
> On 08/25/2020 04:00 PM, Jay Labhart via USRP-users wrote:
>> Hello,
>>=20
>> I have started to work with the B210 on a project.  My interest is to col=
lect samples from the 2 RX of the B210 looking at a frequency of channel 1 o=
f 2.4GHz (2412).  My goal is to use a grc to workout the algorithm then move=
 to c++.  I am having some challenges that I would like to ask the group for=
 help.
>>=20
>> I used a .grc to collect samples and review the algorithm.  The graph is a=
ttached. At this point I am just collecting data. I use a series of variable=
s to create 2 data files.
>>=20
>> I moved to c++ and modified a sample to collect the same dataset.
>>=20
>> I am using the python file gr_plot_iq.py to review the signals.  When I r=
eview the grc graph the signals appear as I would think.  The c++ the signal=
s are scattered way apart and A&B are consistent.
>>=20
>> Any thoughts would be greatful.
>>=20
>> Test:
>>     2.4 GHz router chirping every 100 ms
>>         local area with no wireless except router
>>     uhd=20
>>         2412000000  channel 1
>>         rate - 20 MSPS (only get 15)
>>         looking at 2 RX channels at same freq
>>=20
>> hardware & os
>> Intel=C2=AE Core=E2=84=A2 i5-6400 CPU @ 2.70GHz =C3=97 4=20
>> 12GB RAM
>> Ubuntu 18.04.5 LTS
>>=20
>> attached is the probe from the uhd
>>=20
>> The challenge is that I am seeing different results from the grc and the c=
++ file.  On the grc graph I collect a variety of samples from the router.  O=
n the c++ file there only seems to be 1-2 samples.  I would expect to see a s=
imilar set of samples.
>>=20
>>=20
>>=20
>>=20
>> c++ code excerpt
>>=20
>>     // detect which channels to use
>>     std::vector<std::string> channel_strings;
>>     std::vector<size_t> channel_nums;
>>     boost::split(channel_strings, channel_list, boost::is_any_of("\"',"))=
;
>>     for (size_t ch =3D 0; ch < channel_strings.size(); ch++) {
>>         size_t chan =3D std::stoi(channel_strings[ch]);
>>         if (chan >=3D usrp->get_rx_num_channels()) {
>>             throw std::runtime_error("Invalid channel(s) specified.");
>>         } else
>>             channel_nums.push_back(std::stoi(channel_strings[ch]));
>>     }
>>=20
>>     // create a receive streamer
>>     // linearly map channels (index0 =3D channel0, index1 =3D channel1, .=
..)
>>     uhd::stream_args_t stream_args("fc32"); // complex floats
>>     stream_args.channels             =3D channel_nums;
>>     uhd::rx_streamer::sptr rx_stream =3D usrp->get_rx_stream(stream_args)=
;
>>=20
>>       if (total_num_samps =3D=3D 0){
>>        std::signal(SIGINT, &sig_int_handler);
>>        std::cout << "Press Ctrl + C to stop streaming..." << std::endl;
>>        }
>>=20
>>     // setup streaming
>>     std::cout << std::endl;
>>     std::cout << boost::format("Begin streaming %u samples, %f seconds in=
 the future...")
>>                      % total_num_samps % seconds_in_future
>>               << std::endl;
>>     uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS=
_AND_DONE);
>>     stream_cmd.num_samps  =3D total_num_samps;
>>     stream_cmd.stream_now =3D false;
>>     stream_cmd.time_spec  =3D uhd::time_spec_t(seconds_in_future);
>>     rx_stream->issue_stream_cmd(stream_cmd); // tells all channels to str=
eam
>>=20
>>     // meta-data will be filled in by recv()
>>     uhd::rx_metadata_t md;
>>=20
>>     // allocate buffers to receive with samples (one buffer per channel)
>>     const size_t samps_per_buff =3D rx_stream->get_max_num_samps();
>>     std::vector<std::vector<std::complex<float>>> buffs(
>>         usrp->get_rx_num_channels(), std::vector<std::complex<float>>(sam=
ps_per_buff));
>>=20
>>     // create a vector of pointers to point to each of the channel buffer=
s
>>     std::vector<std::complex<float>*> buff_ptrs;
>>     for (size_t i =3D 0; i < buffs.size(); i++)
>>         buff_ptrs.push_back(&buffs[i].front());
>>=20
>>     // the first call to recv() will block this many seconds before recei=
ving
>>     double timeout =3D seconds_in_future + 0.1; // timeout (delay before r=
eceive + padding)
>>=20
>>     size_t num_acc_samps =3D 0; // number of accumulated samples
>>     std::ofstream outfile1, outfile2;
>>     outfile1.open(file1.c_str(), std::ofstream::binary);
>>     outfile2.open(file2.c_str(), std::ofstream::binary);
>>    =20
>>     while (not stop_signal_called) {
>>         // receive a single packet
>>         size_t num_rx_samps =3D rx_stream->recv(buff_ptrs, samps_per_buff=
, md, timeout);
>>=20
>>         // use a small timeout for subsequent packets
>>         timeout =3D 0.1;
>>=20
>>         // handle the error code
>>         if (md.error_code =3D=3D uhd::rx_metadata_t::ERROR_CODE_TIMEOUT)
>>             break;
>>         if (md.error_code !=3D uhd::rx_metadata_t::ERROR_CODE_NONE) {
>>             //throw std::runtime_error(str(boost::format("Receiver error %=
s") % md.strerror()));
>>             std::cout << md.strerror() << std::endl;
>>         }
>>=20
>>         if (verbose)
>>             std::cout << boost::format(
>>                              "Received packet: %u samples, %u full secs, %=
f frac secs")
>>                              % num_rx_samps % md.time_spec.get_full_secs(=
)
>>                              % md.time_spec.get_frac_secs()
>>                       << std::endl;
>>=20
>>       if (outfile1.is_open())
>>        outfile1.write((const char*)(&buffs[0].front()),
>>       num_rx_samps*sizeof(std::complex<float>));
>>       if (outfile2.is_open())
>>        outfile2.write((const char*)(&buffs[1].front()),
>>       num_rx_samps*sizeof(std::complex<float>));
>>=20
>>         num_acc_samps +=3D num_rx_samps;
>>         // check if continuous or number of samples
>>         if (total_num_samps !=3D 0) {
>>             if (num_acc_samps >=3D total_num_samps)
>>                 stop_signal_called =3D true;
>>         }
>>     }
>>=20
>> output from run with uhd
>>=20
>> Creating the usrp device with: ...
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.14.1.HEAD-=
0-g0347a6d8
>> [INFO] [B200] Detected Device: B210
>> [INFO] [B200] Operating over USB 3.
>> [INFO] [B200] Initialize CODEC control...
>> [INFO] [B200] Initialize Radio control...
>> [INFO] [B200] Performing register loopback test...=20
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Performing register loopback test...=20
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>> [INFO] [B200] Asking for clock rate 16.000000 MHz...=20
>> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>> Using Device: Single USRP:
>>   Device: B-Series Device
>>   Mboard 0: B210
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: FE-RX2
>>   RX Channel: 1
>>     RX DSP: 1
>>     RX Dboard: A
>>     RX Subdev: FE-RX1
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: FE-TX2
>>   TX Channel: 1
>>     TX DSP: 1
>>     TX Dboard: A
>>     TX Subdev: FE-TX1
>>=20
>> Using Antenna 0: RX2
>> Using Antenna 1: RX2
>> Actual RX Freq: 2412.000000 MHz...
>> Actual RX Freq: 2411.999998 MHz...
>>=20
>> RX Gain Range 0: (0, 76, 1)
>> ...
>> Setting RX Gain: 64.000000 dB...
>> Actual RX Gain: 64.000000 dB...
>>=20
>> Setting RX Bandwidth: 15.000000 MHz...
>> Actual RX Bandwidth: 15.000000 MHz...
>>=20
>> Setting RX Rate: 15.000000 Msps...
>> [INFO] [B200] Asking for clock rate 60.000000 MHz...=20
>> [INFO] [B200] Actually got clock rate 60.000000 MHz.
>> Actual RX Rate: 15.000000 Msps...
>>=20
>> Setting device timestamp to 0...
>>=20
>> Begin streaming 10000 samples, 10.000000 seconds in the future...
>> Received packet: 2040 samples, 10 full secs, 0.000003 frac secs
>> Received packet: 2040 samples, 10 full secs, 0.000139 frac secs
>> Received packet: 2040 samples, 10 full secs, 0.000275 frac secs
>> Received packet: 2040 samples, 10 full secs, 0.000411 frac secs
>> Received packet: 1840 samples, 10 full secs, 0.000547 frac secs
>>=20
>> Done!
>>=20
>>=20
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> For one, you're using a 2Msps rate in your .grc flow-graph.
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-615B0DCF-18EC-4036-9C56-EC5E8E1F9238
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I would suggest starting with the rx_multi_=
samples example that comes with UHD.&nbsp;<div><br></div><div>Putting someth=
ing together with GnuRadio and GRC would also be straightforward.&nbsp;<br><=
br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquot=
e type=3D"cite">On Aug 28, 2020, at 5:52 PM, Jay Labhart &lt;jayl0583@yahoo.=
com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D=
"ltr">=EF=BB=BF<div class=3D"ydp573fbcc3yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div></div>=

        <div dir=3D"ltr" data-setdir=3D"false">Marcus,</div><div dir=3D"ltr"=
 data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Than=
ks for the reply.&nbsp; I took several measurements from 2-20 msps and the g=
raphic was a remnant from that.</div><div dir=3D"ltr" data-setdir=3D"false">=
<br></div><div dir=3D"ltr" data-setdir=3D"false">Do you have any experience w=
orking with 2 RX channels?</div><div dir=3D"ltr" data-setdir=3D"false"><br><=
/div><div dir=3D"ltr" data-setdir=3D"false">I can collect data but it seems t=
here maybe some configuration parameters I either missed or set incorrectly?=
</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data=
-setdir=3D"false">I wondered if you might be willing to help me to get this b=
210 configured properly.</div><div dir=3D"ltr" data-setdir=3D"false"><br></d=
iv><div dir=3D"ltr" data-setdir=3D"false">Thanks</div><div dir=3D"ltr" data-=
setdir=3D"false">Jay<br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_8874056286" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sa=
ns-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, August 25, 2020, 3:56:22 PM CDT, Marcus D. L=
eech via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv4754703183"><div>
    <div class=3D"yiv4754703183yqt2182903928" id=3D"yiv4754703183yqt26112"><=
div class=3D"yiv4754703183moz-cite-prefix">On 08/25/2020 04:00 PM, Jay Labha=
rt via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      <div class=3D"yiv4754703183yahoo-style-wrap" style=3D"font-family:Helv=
etica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir=3D"ltr">Hello,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I have started to work with
          the B210 on a project.&nbsp; My interest is to collect samples fro=
m
          the 2 RX of the B210 looking at a frequency of channel 1 of
          2.4GHz (<span>2412).&nbsp; My goal is to use a grc to workout the
            algorithm then move to c++.&nbsp; I am having some challenges
            that I would like to ask the group for help.</span></div>
        <div dir=3D"ltr"><span><br clear=3D"none">
          </span></div>
        <div dir=3D"ltr">I used a .grc to collect
          samples and review the algorithm.&nbsp; The graph is attached. At
          this point I am just collecting data. I use a series of
          variables to create 2 data files.<br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I moved to c++ and modified a
          sample to collect the same dataset.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I am using the python file
          gr_plot_iq.py to review the signals.&nbsp; When I review the grc
          graph the signals appear as I would think.&nbsp; The c++ the
          signals are scattered way apart and A&amp;B are consistent.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Any thoughts would be
          greatful.<br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Test:</div>
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr">&nbsp;&nbsp;&nbsp; 2.4 GHz router
              chirping every 100 ms<br clear=3D"none">
            </div>
          </div>
          <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; local area with no=
 wireless except router</div>
        </div>
        <div dir=3D"ltr">&nbsp;&nbsp;&nbsp; <span>uhd <br clear=3D"none">
          </span></div>
        <div dir=3D"ltr"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;2412000000</span>&nbsp;
          channel 1</div>
        <div dir=3D"ltr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rate - 2=
0 MSPS (only
          get 15)<br clear=3D"none">
        </div>
        <div dir=3D"ltr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; looking a=
t 2 RX
          channels at same freq<br clear=3D"none">
        </div>
        <div><br clear=3D"none">
        </div>
        <div dir=3D"ltr">
          <div>hardware &amp; os<br clear=3D"none">
            Intel=C2=AE Core=E2=84=A2 i5-6400 CPU @ 2.70GHz =C3=97 4 <br cle=
ar=3D"none">
            12GB RAM<br clear=3D"none">
            <div>Ubuntu 18.04.5 LTS</div>
            <div><br clear=3D"none">
            </div>
            <div dir=3D"ltr">attached is the probe
              from the uhd</div>
            <div dir=3D"ltr"><br clear=3D"none">
            </div>
            <div dir=3D"ltr">The challenge is that I
              am seeing different results from the grc and the c++
              file.&nbsp; On the grc graph I collect a variety of samples
              from the router.&nbsp; On the c++ file there only seems to be
              1-2 samples.&nbsp; I would expect to see a similar set of
              samples.</div>
            <div dir=3D"ltr"><br clear=3D"none">
            </div>
            <div dir=3D"ltr"><img class=3D"yiv4754703183yahoo-inline-image" t=
itle=3D"Inline image" alt=3D"Inline                 image" src=3D"" style=3D=
"max-width:628px;width:100%;" data-unique-identifier=3D""><br clear=3D"none"=
>
              <br clear=3D"none">
            </div>
            <div><br clear=3D"none">
            </div>
            <div dir=3D"ltr"><b>c++ code excerpt</b></div>
            <div dir=3D"ltr"><br clear=3D"none">
            </div>
            <div dir=3D"ltr">
              <div>&nbsp;&nbsp;&nbsp; // detect which channels to use<br cle=
ar=3D"none">
                &nbsp;&nbsp;&nbsp; std::vector&lt;std::string&gt; channel_st=
rings;<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; std::vector&lt;size_t&gt; channel_nums;<b=
r clear=3D"none">
                &nbsp;&nbsp;&nbsp; boost::split(channel_strings, channel_lis=
t,
                boost::is_any_of("\"',"));<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; for (size_t ch =3D 0; ch &lt; channel_str=
ings.size();
                ch++) {<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t chan =3D s=
td::stoi(channel_strings[ch]);<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (chan &gt;=3D u=
srp-&gt;get_rx_num_channels()) {<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; throw std::runtime_error("Invalid channel(s)
                specified.");<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else<br clear=3D=
"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;
                channel_nums.push_back(std::stoi(channel_strings[ch]));<br c=
lear=3D"none">
                &nbsp;&nbsp;&nbsp; }<br clear=3D"none">
                <br clear=3D"none">
                &nbsp;&nbsp;&nbsp; // create a receive streamer<br clear=3D"=
none">
                &nbsp;&nbsp;&nbsp; // linearly map channels (index0 =3D chan=
nel0, index1
                =3D channel1, ...)<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; uhd::stream_args_t stream_args("fc32"); /=
/ complex
                floats<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; stream_args.channels&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D channel_nums;<br cle=
ar=3D"none">
                &nbsp;&nbsp;&nbsp; uhd::rx_streamer::sptr rx_stream =3D
                usrp-&gt;get_rx_stream(stream_args);<br clear=3D"none">
                <br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp; if (total_num_samps =3D=3D 0){<br c=
lear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; std::signal(SIGINT, &amp;sig=
_int_handler);<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; std::cout &lt;&lt; "Press Ct=
rl + C to stop
                streaming..." &lt;&lt; std::endl;<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; }<br clear=3D"none">
                <br clear=3D"none">
                &nbsp;&nbsp;&nbsp; // setup streaming<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; std::cout &lt;&lt; std::endl;<br clear=3D=
"none">
                &nbsp;&nbsp;&nbsp; std::cout &lt;&lt; boost::format("Begin s=
treaming %u
                samples, %f seconds in the future...")<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; % total_num_sam=
ps %
                seconds_in_future<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; &lt;&lt; std::endl;<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; uhd::stream_cmd_t
                stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE=
);<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; stream_cmd.num_samps&nbsp; =3D total_num_=
samps;<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; stream_cmd.stream_now =3D false;<br clear=
=3D"none">
                &nbsp;&nbsp;&nbsp; stream_cmd.time_spec&nbsp; =3D
                uhd::time_spec_t(seconds_in_future);<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; rx_stream-&gt;issue_stream_cmd(stream_cmd=
); // tells
                all channels to stream<br clear=3D"none">
                <br clear=3D"none">
                &nbsp;&nbsp;&nbsp; // meta-data will be filled in by recv()<=
br clear=3D"none">
                &nbsp;&nbsp;&nbsp; uhd::rx_metadata_t md;<br clear=3D"none">=

                <br clear=3D"none">
                &nbsp;&nbsp;&nbsp; // allocate buffers to receive with sampl=
es (one
                buffer per channel)<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; const size_t samps_per_buff =3D
                rx_stream-&gt;get_max_num_samps();<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;
                std::vector&lt;std::vector&lt;std::complex&lt;float&gt;&gt;&=
gt;
                buffs(<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp-&gt;get_rx_n=
um_channels(),
                std::vector&lt;std::complex&lt;float&gt;&gt;(samps_per_buff)=
);<br clear=3D"none">
                <br clear=3D"none">
                &nbsp;&nbsp;&nbsp; // create a vector of pointers to point t=
o each of
                the channel buffers<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; std::vector&lt;std::complex&lt;float&gt;*=
&gt;
                buff_ptrs;<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; for (size_t i =3D 0; i &lt; buffs.size();=
 i++)<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buff_ptrs.push_ba=
ck(&amp;buffs[i].front());<br clear=3D"none">
                <br clear=3D"none">
                &nbsp;&nbsp;&nbsp; // the first call to recv() will block th=
is many
                seconds before receiving<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; double timeout =3D seconds_in_future + 0.=
1; // timeout
                (delay before receive + padding)<br clear=3D"none">
                <br clear=3D"none">
                &nbsp;&nbsp;&nbsp; size_t num_acc_samps =3D 0; // number of a=
ccumulated
                samples<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;std::ofstream outfile1, outfile2;<br clea=
r=3D"none">
                &nbsp;&nbsp; &nbsp;outfile1.open(file1.c_str(), std::ofstrea=
m::binary);<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;outfile2.open(file2.c_str(), std::ofstrea=
m::binary);<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; while (not stop_signal_called) {<br clear=
=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // receive a sing=
le packet<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t num_rx_sam=
ps =3D
                rx_stream-&gt;recv(buff_ptrs, samps_per_buff, md,
                timeout);<br clear=3D"none">
                <br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // use a small ti=
meout for subsequent packets<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; timeout =3D 0.1;<=
br clear=3D"none">
                <br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // handle the err=
or code<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code=
 =3D=3D
                uhd::rx_metadata_t::ERROR_CODE_TIMEOUT)<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; break;<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code=
 !=3D
                uhd::rx_metadata_t::ERROR_CODE_NONE) {<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; //throw
                std::runtime_error(str(boost::format("Receiver error
                %s") % md.strerror()));<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;std=
::cout &lt;&lt; md.strerror() &lt;&lt;
                std::endl;<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br clear=3D"non=
e">
                <br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (verbose)<br c=
lear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; std::cout &lt;&lt; boost::format(<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "Received packet: %u
                samples, %u full secs, %f frac secs")<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; % num_rx_samps %
                md.time_spec.get_full_secs()<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %
                md.time_spec.get_frac_secs()<br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;&lt; s=
td::endl;<br clear=3D"none">
                <br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp; if (outfile1.is_open())<br clear=3D=
"none">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; outfile1.write((const
                char*)(&amp;buffs[0].front()),<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp; num_rx_samps*sizeof(std::complex&l=
t;float&gt;));<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp; if (outfile2.is_open())<br clear=3D=
"none">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; outfile2.write((const
                char*)(&amp;buffs[1].front()),<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp; num_rx_samps*sizeof(std::complex&l=
t;float&gt;));<br clear=3D"none">
                <br clear=3D"none">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num_acc_samps +=3D=
 num_rx_samps;<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;// check if continuous=
 or number of samples<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;if (total_num_samps !=3D=
 0) {<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;if (=
num_acc_samps &gt;=3D total_num_samps)<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp; &nbsp;stop_signal_called =3D true;<br clear=3D"none">
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}<br clear=3D"none">
                &nbsp;&nbsp;&nbsp; }<br clear=3D"none">
                <br clear=3D"none">
              </div>
              <div dir=3D"ltr"><b>output from run with
                  uhd</b></div>
              <div dir=3D"ltr"><br clear=3D"none">
              </div>
              <div dir=3D"ltr">
                <div>Creating the usrp device with: ...<br clear=3D"none">
                  [INFO] [UHD] linux; GNU C++ version 7.5.0;
                  Boost_106501; UHD_3.14.1.HEAD-0-g0347a6d8<br clear=3D"none=
">
                  [INFO] [B200] Detected Device: B210<br clear=3D"none">
                  [INFO] [B200] Operating over USB 3.<br clear=3D"none">
                  [INFO] [B200] Initialize CODEC control...<br clear=3D"none=
">
                  [INFO] [B200] Initialize Radio control...<br clear=3D"none=
">
                  [INFO] [B200] Performing register loopback test... <br cle=
ar=3D"none">
                  [INFO] [B200] Register loopback test passed<br clear=3D"no=
ne">
                  [INFO] [B200] Performing register loopback test... <br cle=
ar=3D"none">
                  [INFO] [B200] Register loopback test passed<br clear=3D"no=
ne">
                  [INFO] [B200] Setting master clock rate selection to
                  'automatic'.<br clear=3D"none">
                  [INFO] [B200] Asking for clock rate 16.000000 MHz... <br c=
lear=3D"none">
                  [INFO] [B200] Actually got clock rate 16.000000 MHz.<br cl=
ear=3D"none">
                  Using Device: Single USRP:<br clear=3D"none">
                  &nbsp; Device: B-Series Device<br clear=3D"none">
                  &nbsp; Mboard 0: B210<br clear=3D"none">
                  &nbsp; RX Channel: 0<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; RX DSP: 0<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; RX Dboard: A<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; RX Subdev: FE-RX2<br clear=3D"none">
                  &nbsp; RX Channel: 1<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; RX DSP: 1<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; RX Dboard: A<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; RX Subdev: FE-RX1<br clear=3D"none">
                  &nbsp; TX Channel: 0<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; TX DSP: 0<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; TX Dboard: A<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; TX Subdev: FE-TX2<br clear=3D"none">
                  &nbsp; TX Channel: 1<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; TX DSP: 1<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; TX Dboard: A<br clear=3D"none">
                  &nbsp;&nbsp;&nbsp; TX Subdev: FE-TX1<br clear=3D"none">
                  <br clear=3D"none">
                  Using Antenna 0: RX2<br clear=3D"none">
                  Using Antenna 1: RX2<br clear=3D"none">
                  Actual RX Freq: 2412.000000 MHz...<br clear=3D"none">
                  Actual RX Freq: 2411.999998 MHz...<br clear=3D"none">
                  <br clear=3D"none">
                  RX Gain Range 0: (0, 76, 1)<br clear=3D"none">
                  ...<br clear=3D"none">
                  Setting RX Gain: 64.000000 dB...<br clear=3D"none">
                  Actual RX Gain: 64.000000 dB...<br clear=3D"none">
                  <br clear=3D"none">
                  Setting RX Bandwidth: 15.000000 MHz...<br clear=3D"none">
                  Actual RX Bandwidth: 15.000000 MHz...<br clear=3D"none">
                  <br clear=3D"none">
                  Setting RX Rate: 15.000000 Msps...<br clear=3D"none">
                  [INFO] [B200] Asking for clock rate 60.000000 MHz... <br c=
lear=3D"none">
                  [INFO] [B200] Actually got clock rate 60.000000 MHz.<br cl=
ear=3D"none">
                  Actual RX Rate: 15.000000 Msps...<br clear=3D"none">
                  <br clear=3D"none">
                  Setting device timestamp to 0...<br clear=3D"none">
                  <br clear=3D"none">
                  Begin streaming 10000 samples, 10.000000 seconds in
                  the future...<br clear=3D"none">
                  Received packet: 2040 samples, 10 full secs, 0.000003
                  frac secs<br clear=3D"none">
                  Received packet: 2040 samples, 10 full secs, 0.000139
                  frac secs<br clear=3D"none">
                  Received packet: 2040 samples, 10 full secs, 0.000275
                  frac secs<br clear=3D"none">
                  Received packet: 2040 samples, 10 full secs, 0.000411
                  frac secs<br clear=3D"none">
                  Received packet: 1840 samples, 10 full secs, 0.000547
                  frac secs<br clear=3D"none">
                  <br clear=3D"none">
                  Done!<br clear=3D"none">
                  <br clear=3D"none">
                </div>
                <div><br clear=3D"none">
                </div>
              </div>
            </div>
          </div>
          <div><br clear=3D"none">
          </div>
        </div>
      </div>
      <br clear=3D"none">
      <fieldset class=3D"yiv4754703183mimeAttachmentHeader"></fieldset>
      <br clear=3D"none">
      <pre>_______________________________________________
USRP-users mailing list
<a rel=3D"nofollow" shape=3D"rect" class=3D"yiv4754703183moz-txt-link-abbrev=
iated" ymailto=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" href=3D=
"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a rel=3D"nofollow" shape=3D"rect" class=3D"yiv4754703183moz-txt-link-freete=
xt" target=3D"_blank" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com</a>
</pre>
    </blockquote></div>
    For one, you're using a 2Msps rate in your .grc flow-graph.<br clear=3D"=
none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div><div class=3D"yqt2182903928" id=3D"yqt95003">_________________=
______________________________<br clear=3D"none">USRP-users mailing list<br c=
lear=3D"none"><a shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.ettus.com=
" href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><=
br clear=3D"none"><a shape=3D"rect" href=3D"http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none"></div></d=
iv>
            </div>
        </div></div></blockquote></div></body></html>=

--Apple-Mail-615B0DCF-18EC-4036-9C56-EC5E8E1F9238--


--===============3831258581380864608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3831258581380864608==--

