Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 884067DE85
	for <lists+usrp-users@lfdr.de>; Thu,  1 Aug 2019 17:13:00 +0200 (CEST)
Received: from [::1] (port=37722 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htClG-000857-LE; Thu, 01 Aug 2019 11:12:58 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:45837)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1htClD-0007q9-L6
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 11:12:55 -0400
Received: by mail-qt1-f169.google.com with SMTP id x22so65641030qtp.12
 for <usrp-users@lists.ettus.com>; Thu, 01 Aug 2019 08:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=2Njlx8GrLCthd7YmziwmEsWNUcJCnwmWRd5iOfWn8qI=;
 b=U7oA7d55v2CybruyykOqfe8UG8QiYajTzfbo2GfpN+VnCxhIkMBGPJvACL3yA+r0YZ
 47lt6X9l6tko2tk7+2LPMRpaUw1cLPzdTh5E5AXeyjexw7qzuSiVdIIvGtGeSAi4y5HV
 pBLF/qqtFLE6ba28WlwZo+wwtWYvKJSbz6asrACEcdCmMjFjwbA/GMtuqdyZnFFFul+Q
 TZymVs9ENJZXW/zWgpRNAMaxQYQb6QDYyKg8Q+PFT7EfpFvxfWZeG7bAEyBHyVhGP+ON
 4nSfCnG62ZjsbX9gaqp6rsOWn2J4YM+gC2K/1q2tCaXwkjnTkM9rBtLtiHI67A8Tlh89
 8D1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=2Njlx8GrLCthd7YmziwmEsWNUcJCnwmWRd5iOfWn8qI=;
 b=Y5uNUxydsdrpQbfpRtVoUXdhRlW4lhm5WajkuU2+MElsYGozrSNfbtkppmMfbGc2MZ
 jobaosEnaNoEImsSZ2vepIdxOIMH4w+6vbOihPqfwAIkONGp4USkKpSUH529gb7YBi82
 XJdztQSXUgFhbOk+Y2mPPw6eJuc7IyeySH+riV9aOxSI2Y1kIjEcVU+9PJgG6kcade4B
 eLND+JxHjYYe0S0SSWSBlLbVeOxflFhErvrI28rG8pImWvK+0aTrohe6bIOhmJrA21Fi
 TVewt97MhOQpPsVtMyZ0vcFak3Gu+Ad4OMT3//7+DW7J27IHVG+g71nAehsa/jgNgfb5
 KIRQ==
X-Gm-Message-State: APjAAAUDmI7qY2A5gq+rkR8CaEVHpLTzGT/X6I+mGyUwsIAXC2w/ysAQ
 vyQM5WH6iQ7hCsnBCZkSUs6lkL+x
X-Google-Smtp-Source: APXvYqwMQAb1ryAdO9Xsl+qlptraz7qeRg99AF7pV96ox0vSTC3vZnntxevJXMguw2PNWw+72XKGxw==
X-Received: by 2002:a05:6214:130d:: with SMTP id
 a13mr76239557qvv.113.1564672334841; 
 Thu, 01 Aug 2019 08:12:14 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.gmail.com with ESMTPSA id f26sm39518337qtf.44.2019.08.01.08.12.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 08:12:14 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <4b8b3148-ef5f-6296-dab6-4651e65723ca@itsystems.it>
Date: Thu, 1 Aug 2019 11:12:13 -0400
Message-Id: <ACD6110B-2AE9-45F0-B103-3A31A076C7C9@gmail.com>
References: <4b8b3148-ef5f-6296-dab6-4651e65723ca@itsystems.it>
To: Paolo Palana <p.palana@itsystems.it>
Subject: Re: [USRP-users] N310 Streaming 4 channels using both SFP issue
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============0778790127811090138=="
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


--===============0778790127811090138==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-3E1D1695-E908-42D0-B52E-514127D0BF10
Content-Transfer-Encoding: 7bit


--Apple-Mail-3E1D1695-E908-42D0-B52E-514127D0BF10
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Could you share the device arguments you used?


Sent from my iPhone

> On Aug 1, 2019, at 6:28 AM, Paolo Palana via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> Good morning to all the mailing list users.
>=20
> It is about a couple of months that I'm fighting with my N310 for differen=
t reasons.
>=20
> Now I want to report a couple  of strange behaviors I'm observing with thi=
s device. Of course their can be my faults... I hope some one in the communi=
ty can make light.
>=20
> I try be as clear as possible.
>=20
> My goal: Streaming the 4 RX channels over the two SFP+. Let me say I want A=
:0 and A:1 on sfp0, while B:0 and B:1 on sfp1.
>=20
> Premise: * I'm using 10G link with fibers. I'm sure the network adapter an=
d fibers work well because they are the same I used with my X310 (and it wor=
ks).
>=20
>                * I'm using N310 in legacy compat mode
>=20
>                * The software I use is the same I used for my X310 and it w=
orks (at least with X310 of course!)
>=20
>                * MTU is to 9000 on both the host and N310
>=20
>                * I'm using UHD 3.14.0
>=20
> Strange behavior 1: when I start my acquisition program I can see (using t=
cpdump on the host side) small packets (16 or 24 bytes in size, I think they=
 are some kind of commands) flowing through, let just say sfp0 iface. If I r=
eboot the N310 and the I start again my program I can see the same kind of p=
ackets flowing through sfp1 (but not through sfp0). If I reboot the N310 aga=
in may be these packets start flowing through sfp0 or sfp1.... it depends!!!=
! Is that the normal behavior of N310?
>=20
>=20
>=20
> Strange behavior 2: in order to start streaming the 4 channels I use this c=
ode:
>=20
>=20
>=20
>     time_spec_t start_sampling =3D mUsrp->get_time_now() + 1.0;
>    =20
>     uhd::stream_args_t str_args("sc16", "sc16");
>     str_args.channels.push_back(mChannels[0]);
>     str_args.channels.push_back(mChannels[2]);
>     mStreamArgs.push_back(str_args);
>     uhd::stream_cmd_t tmp_strcmd(uhd::stream_cmd_t::STREAM_MODE_START_CONT=
INUOUS);
>     tmp_strcmd.num_samps =3D 0;
>     // Timed
>      tmp_strcmd.stream_now =3D false;
>      tmp_strcmd.time_spec =3D start_sampling;
>     uhd::rx_streamer::sptr tmp_rx_stream =3D mUsrp->get_rx_stream(str_args=
);
>     tmp_rx_stream->issue_stream_cmd(tmp_strcmd);
>     mStreamCmds.push_back(tmp_strcmd);
>     mRxStreams.push_back(tmp_rx_stream);
> =20
>     uhd::stream_args_t str_args2("sc16", "sc16");
>     str_args2.channels.push_back(mChannels[1]);
>     str_args2.channels.push_back(mChannels[3]);
>    =20
>=20
>     mStreamArgs.push_back(str_args2);
>     uhd::stream_cmd_t tmp_strcmd2(uhd::stream_cmd_t::STREAM_MODE_START_CON=
TINUOUS);
>     tmp_strcmd2.num_samps =3D 0;
>     // Timed
>      tmp_strcmd2.stream_now =3D false;
>      tmp_strcmd2.time_spec =3D start_sampling;
>     uhd::rx_streamer::sptr tmp_rx_stream2 =3D mUsrp->get_rx_stream(str_arg=
s2);
>     tmp_rx_stream2->issue_stream_cmd(tmp_strcmd2);
>     mStreamCmds.push_back(tmp_strcmd2);
>     mRxStreams.push_back(tmp_rx_stream2);
>=20
>=20
>=20
> It works perfectly with my X310, but with the N310 it starts the streaming=
 of only a couple of channels (A:0 and A:1 to be precise) and on sfp0 or sfp=
1... it depends!!
>=20
> Of course I miss something (or at least I hope so!). I checked and double c=
hecked examples coming from libuhd repository but there is nothing specific a=
bout the N310.
>=20
> Any help is appreciated. Thank you in advance.
>=20
> Of course if more details are necessary, please let me know.
>=20
> Have a good day
>=20
> Paolo
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-3E1D1695-E908-42D0-B52E-514127D0BF10
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head><meta http-equiv="content-type" content="text/html; charset=utf-8"></head><body dir="auto"><br>Could you share the device arguments you used?<div><br></div><div><br><div id="AppleMailSignature" dir="ltr">Sent from my iPhone</div><div dir="ltr"><br>On Aug 1, 2019, at 6:28 AM, Paolo Palana via USRP-users &lt;<a href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></div><blockquote type="cite"><div dir="ltr">
  

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  
  
    <p>Good morning to all the mailing list users.</p>
    <p>It is about a couple of months that I'm <span class="tlid-translation translation" lang="en"><span title="" class="">fighting with my N310 for different reasons.</span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class="">Now I want to report a couple&nbsp; of strange </span></span><span class="tlid-translation translation" lang="en"><span title="" class="">behaviors I'm observing with this device. Of course
          their can be my faults... I hope some one in the community can
          make light.</span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class="">I try be as clear as possible.<br>
        </span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class="">My goal: Streaming the 4 RX channels over
          the two SFP+. Let me say I want A:0 and A:1 on sfp0, while B</span></span><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class="">:0 and B:1 on sfp1.</span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class="">Premise: * I'm using 10G link with fibers.
          I'm sure the network adapter and fibers work well because they
          are the same I used with my X310 (and it works).</span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class="">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; * I'm using N310 in legacy
          compat mode</span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class="">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * The software I use is the
          same I used for my X310 and it works (at least with X310 of
          course!)</span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class="">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * MTU is to 9000 on both the
          host and N310</span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class="">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; * I'm using UHD 3.14.0<br>
        </span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class="">Strange </span></span><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class="">behavior 1: when I start my </span></span></span></span><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation
                translation" lang="en"><span title="" class="">acquisition</span></span>
              program I can see (using tcpdump on the host side) small
              packets (16 or 24 bytes in size, I think they are some
              kind of commands) flowing through, let just say sfp0
              iface. If I reboot the N310 and the I start again my
              program I can see the same kind of packets flowing through
              sfp1 (but not through sfp0). If I reboot the N310 again
              may be these packets start flowing through sfp0 or
              sfp1.... it depends!!!! Is that the normal behavior of
              N310?<br>
            </span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class=""><br>
            </span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class="">Strange behavior 2: in
              order to start streaming the 4 channels I use this code:</span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class=""><br>
            </span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class="">&nbsp;&nbsp;&nbsp;<font size="-1">
                time_spec_t start_sampling = mUsrp-&gt;get_time_now() +
                1.0;<br>
                &nbsp;&nbsp;&nbsp; <br>
                &nbsp;&nbsp;&nbsp; uhd::stream_args_t str_args("sc16", "sc16");<br>
                &nbsp;&nbsp;&nbsp; str_args.channels.push_back(mChannels[0]);<br>
                &nbsp;&nbsp;&nbsp; str_args.channels.push_back(mChannels[2]);<br>
                &nbsp;&nbsp;&nbsp; mStreamArgs.push_back(str_args);<br>
                &nbsp;&nbsp;&nbsp; uhd::stream_cmd_t
                tmp_strcmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);<br>
                &nbsp;&nbsp;&nbsp; tmp_strcmd.num_samps = 0;<br>
                &nbsp;&nbsp;&nbsp; // Timed<br>
                &nbsp;&nbsp;&nbsp;&nbsp; tmp_strcmd.stream_now = false;<br>
                &nbsp;&nbsp;&nbsp;&nbsp; tmp_strcmd.time_spec = start_sampling;<br>
                &nbsp;&nbsp;&nbsp; uhd::rx_streamer::sptr tmp_rx_stream =
                mUsrp-&gt;get_rx_stream(str_args);<br>
                &nbsp;&nbsp;&nbsp; tmp_rx_stream-&gt;issue_stream_cmd(tmp_strcmd);<br>
                &nbsp;&nbsp;&nbsp; mStreamCmds.push_back(tmp_strcmd);<br>
                &nbsp;&nbsp;&nbsp; mRxStreams.push_back(tmp_rx_stream);<br>
                &nbsp;<br>
                &nbsp;&nbsp;&nbsp; uhd::stream_args_t str_args2("sc16", "sc16");<br>
                &nbsp;&nbsp;&nbsp; str_args2.channels.push_back(mChannels[1]);<br>
                &nbsp;&nbsp;&nbsp; str_args2.channels.push_back(mChannels[3]);<br>
                &nbsp;&nbsp;&nbsp; <br>
                <br>
                &nbsp;&nbsp;&nbsp; mStreamArgs.push_back(str_args2);<br>
                &nbsp;&nbsp;&nbsp; uhd::stream_cmd_t
                tmp_strcmd2(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);<br>
                &nbsp;&nbsp;&nbsp; tmp_strcmd2.num_samps = 0;<br>
                &nbsp;&nbsp;&nbsp; // Timed<br>
                &nbsp;&nbsp;&nbsp;&nbsp; tmp_strcmd2.stream_now = false;<br>
                &nbsp;&nbsp;&nbsp;&nbsp; tmp_strcmd2.time_spec = start_sampling;<br>
                &nbsp;&nbsp;&nbsp; uhd::rx_streamer::sptr tmp_rx_stream2 =
                mUsrp-&gt;get_rx_stream(str_args2);<br>
                &nbsp;&nbsp;&nbsp; tmp_rx_stream2-&gt;issue_stream_cmd(tmp_strcmd2);<br>
                &nbsp;&nbsp;&nbsp; mStreamCmds.push_back(tmp_strcmd2);<br>
                &nbsp;&nbsp;&nbsp; mRxStreams.push_back(tmp_rx_stream2);</font></span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class=""><font size="-1"><br>
              </font></span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class="">It works perfectly with my
              X310, but with the N310 it starts the streaming of only a
              couple of channels (A:0 and A:1 to be precise) and on sfp0
              or sfp1... it depends!!<br>
            </span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class="">Of course I miss something
              (or at least I hope so!). I checked and double checked
              examples coming from libuhd repository but there is
              nothing specific about the N310.<br>
            </span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class="">Any help is appreciated.
              Thank you in advance.</span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class="">Of course if more details
              are necessary, please let me know.<br>
            </span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class="">Have a good day</span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class="">Paolo<br>
            </span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class=""><br>
            </span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class=""><br>
            </span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class=""><br>
            </span></span></span></span></p>
    <p><span class="tlid-translation translation" lang="en"><span title="" class=""><br>
        </span></span></p>
    <p><br>
      <span class="tlid-translation translation" lang="en"><span title="" class=""></span></span><span class="tlid-translation
        translation" lang="en"><span title="" class=""><span class="tlid-translation translation" lang="en"><span title="" class=""></span></span></span></span></p>
  

</div></blockquote><blockquote type="cite"><div dir="ltr"><span>_______________________________________________</span><br><span>USRP-users mailing list</span><br><span><a href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a></span><br><span><a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></div></body></html>
--Apple-Mail-3E1D1695-E908-42D0-B52E-514127D0BF10--


--===============0778790127811090138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0778790127811090138==--

