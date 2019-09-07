Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28814AC8C2
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 20:23:18 +0200 (CEST)
Received: from [::1] (port=57668 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6fMh-0001aU-Px; Sat, 07 Sep 2019 14:23:15 -0400
Received: from sonic309-19.consmr.mail.bf2.yahoo.com ([74.6.129.193]:41711)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1i6fMe-0001WQ-2x
 for usrp-users@lists.ettus.com; Sat, 07 Sep 2019 14:23:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1567880551; bh=09iZjSVh++wHZpepsUh8515a1Z6gIGDMa0AQHzg/bPs=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From:Subject;
 b=mz1Qmx2QQDVUXX4KKlM6OVgAD2r1iqv50Ws5brF24Z/p/DwZxMs5MRxGdNscdwdjf5uefPopdLUhAFqrfTPerc+nvAXpAS+LAGXehfvfomanhsW8HBJ3YJVGr7iTzJ2hLAG2TUReCsbIaMZ5gjLaKkuTga9vk1/6dR2PtazBcD0bXgipuGgS+N9NKawjOAgUbBhH3etbR7QZjYQpp37iGT5u/pczXUfRkl4rX9+tFwFHurUtEYcG9rUEvTFM+kHAhy9jshioXHqwKB7Um6an7XZhnCe6PUCyiCYUzoBmwfR6AmdOY1OhmCg/ZFCN+MDk7b5FEOrF8TGddz4TssBOJQ==
X-YMail-OSG: 9he__oIVM1lcAfmEw4GB_t1pN_8.hgCzArr9mZnSo9udtRvE7zsl3RVUxqZIdJd
 PBeMVJQcxE2uyA4id7e_xJnSaOkhLUa4irdsUwxkIayuLlubrcOmtmGBVV1vyoWZ_QjrEaUrG4kd
 WOgXdywB3U3ttE.kwyrz5kVgRqp7fL.SaVg06hB7UfT_pVcB6JG8uGlA92YkJI7ps0VmrBx3aSC6
 qhgOb5nwf7i_ukS_STY.tsiYn_HVN9yGZ93tlKyOaSKe2RpJ3So0Nj5DlBL0_7tJECVykoTTj9cD
 .fl1aVsxzBXv9EVouO31flRuD8Ls1lFuJy1.rx3VWVPuZvBtDodjVltY9geV.zJDxHo9BEVzYouL
 WnoUCDguwahdUqd6Ws0oZ9fP8StOBes9IRxlCAZIvNK7BKwqfuha.RDaemnFspvMGcvK7TTUDn.V
 NgQJP7NggI7A3_85brIfzYmuSHaU5JpP55I_s4.kV8ByX34Hq9TYGLDESTfOGmG6ma9mM.v19hS7
 WAM6U7jKyFmWjd2RAQ9EQZt6VDocoTVjkQZlbgV35sIbaE8J52VVv7.b1KIrQVzEGM5A0aEhxBU1
 PckYmPDPdOkoqrd2pt5pKn_muFg9X74CSkSejYdN3qFpz1RlYMo.EHvu90WD5Xv2Ciz3GUfHVAs_
 nd4j.6lkf8Jloz9yMNSAKsp3QuPc.9oleDBeFT_XDMeSK215i6WC.Up0lmHfRxwxX_S5NpcCC5cj
 ZTt1mihQFmguy9oDXLRlbKv7bzUDjXBSX6G336bKwxHyDtzMl4MjpaNzyuP4HOgT0vvDzIfT2g.o
 KutPJENhoWgMXh9AaaOVe5780NJccSCCKxamWX4eSziWY7VQGCmwEO_UyxGWBZL5Zode.RrVHUlw
 OeZLtbjfJ9QySF8ciFPOOWw1fiz9yPTTZm1qTY5uNJSm1odWzRPC8.E33m_LG.P.kI_gY82K0Ko5
 EJnvlAZHACEPf.PyQl2o2LSOyVLmDPG4a326C2.4Y1qtXpPZ5O1yw0M1zTmo6OFLdC0A7lRuOpjY
 uxC5eLw.L7_jumIRzjJ.Z59BPs11u.UzPldxTJrrlzLsuOFdOy64lzfOhr0QoQuSIdlrDo_chw5C
 4V90KpTGZtqxFLFCqamRr9_TachBGqRXoWu6n2zQhzPs6Gid3hXI3Uq2IObc2thEuaXd7oLRu_R2
 q6l9FtG7318I6mdU4hT_yur9BQrKg1qdUh2bm3BvYtcbRVmptnVF.bPjqzwxjBqwKH0vuMoGPHfy
 bQ7rqIWDPQp29o0VZb0GVUajLnWaawU36OjxHzHzLmZwIbA7aBgbQRsCoqvsiXIKXdPJbRrmoHtj
 6XUHNYw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.bf2.yahoo.com with HTTP; Sat, 7 Sep 2019 18:22:31 +0000
Received: by smtp431.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID cfd7b2a2a6af586f20d502f6edba3b6a; 
 Sat, 07 Sep 2019 18:22:26 +0000 (UTC)
Message-ID: <347790affd1a2263fd09fe55a2205714c1457481.camel@sbcglobal.net>
To: Nick Foster <bistromath@gmail.com>
Date: Sat, 07 Sep 2019 13:22:25 -0500
In-Reply-To: <CA+JMMq_PWfCwHKYbuVNUBSkLStLJsHr2TuV7aEEatFO1Mp3mPQ@mail.gmail.com>
References: <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel.ref@sbcglobal.net>
 <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel@sbcglobal.net>
 <CA+JMMq_PWfCwHKYbuVNUBSkLStLJsHr2TuV7aEEatFO1Mp3mPQ@mail.gmail.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Addsub HLS Block Error
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
Cc: etus list <usrp-users@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

I wonder if you have successfully used this block with grc or if you
were just using it with uhd. When I try to use the 2-input, 1-output
block in grc I get: "RuntimeError: Invalid stream args." this looks
like same issue as 
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-August/057702.html
and the solution at that time seemed to be to keep the second port so
as not to confuse the streamer.

In case I'm doing something dumb in the xml, here are the files I
created for uhd and grc:

<?xml version="1.0"?>
<!--Default XML file-->
<nocblock>
  <name>addonly</name>
  <blockname>addonly</blockname>
  <ids>
    <id revision="0">0000000041253002</id>
  </ids>
  <ports>
    <sink>
      <name>in0</name>
    </sink>
    <sink>
      <name>in1</name>
    </sink>
    <source>
      <name>out</name>
    </source>
  </ports>
</nocblock>



<?xml version="1.0"?>
<block>
  <name>RFNoC: addonly</name>
  <key>dave_addonly</key>
  <import>import ettus</import>
  <make>ettus.rfnoc_generic(
    self.device3,
    uhd.stream_args( \# TX Stream Args
        cpu_format="$type", \# TODO: This must be made an option
        otw_format="sc16",
        channels=(0,1),
        args="align=1",
    ),
    uhd.stream_args( \# RX Stream Args
        cpu_format="$type",
        otw_format="sc16",
        channels=(0,1),
        args="align=1",
    ),
    "addonly", $block_index, $device_index,
)</make>

  <param>
    <name>Host Data Type</name>
    <key>type</key>
    <type>enum</type>
    <option>
      <name>Complex float32</name>
      <key>fc32</key>
      <opt>type:fc32</opt>
    </option>
    <option>
      <name>Complex int16</name>
      <key>sc16</key>
      <opt>type:sc16</opt>
    </option>
  </param>

  <param>
    <name>dcovariance Select</name>
    <key>block_index</key>
    <value>-1</value>
    <type>int</type>
    <hide>#if int($block_index()) &lt; 0 then 'part' else
'none'#</hide>
    <tab>RFNoC Config</tab>
  </param>
  <param>
    <name>Device Select</name>
    <key>device_index</key>
    <value>-1</value>
    <type>int</type>
    <hide>#if int($device_index()) &lt; 0 then 'part' else
'none'#</hide>
    <tab>RFNoC Config</tab>
  </param>

  <param>
    <name>FPGA Module Name</name>
    <key>fpga_module_name</key>
    <value>noc_block_dcovariance</value>
    <type>string</type>
    <hide>all</hide>
    <tab>RFNoC Config</tab>
  </param>

  <sink>
    <name>in</name>
    <type>$type.type</type>
    <domain>rfnoc</domain>
    <nports>2</nports>
  </sink>

  <source>
    <name>out</name>
    <type>$type.type</type>
    <domain>rfnoc</domain>
  </source>
</block>


The messages just before the error are:
[DEBUG] [DEVICE3] Port 0x20: Found NoC-Block with ID 0000000041253002.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addonly.xml for NOC
ID 0x41253002
[DEBUG] [E300] [E300] Setting up dest map for host ep 35 to be stream 3

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addonly.xml for NOC
ID 0x41253002
[WARNING] [RFNOC] Can't find a block controller for key addonly, using
default block controller!
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'Block' and block
name 'addonly'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addonly.xml for NOC
ID 0x41253002
[INFO] [0/dcorrelate_0] Initializing block control (NOC ID:
0x0000000041253002)
[DEBUG] [0/dcorrelate_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/addonly_0] Adding port definition at
xbar/dcorrelate_0/ports/in/0: type = '' pkt_size = '0' vlen = '0'
[TRACE] [0/addonly_0] Adding port definition at
xbar/dcorrelate_0/ports/in/1: type = '' pkt_size = '0' vlen = '0'
[TRACE] [0/addonly_0] Adding port definition at
xbar/addonly_0/ports/out/0: type = '' pkt_size = '0' vlen = '0'
[DEBUG] [E300] [E300] Setting up dest map for host ep 36 to be stream 4

:
<other blocks and rate setting...>
:
[DEBUG] [E300] Actually got clock rate 10 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

Traceback (most recent call last):
  File "./dave_addonly_usrp.py", line 169, in <module>
    main()
  File "./dave_addonly_usrp.py", line 158, in main
    tb = top_block_cls()
  File "./dave_addonly_usrp.py", line 94, in __init__
    "addonly", -1, -1,
  File "/home/root/localinstall/usr/lib/python2.7/site-
packages/ettus/ettus_swig.py", line 3270, in make
    return _ettus_swig.rfnoc_generic_make(*args, **kwargs)
RuntimeError: Invalid stream args.

It never gets to the part where it attempts to connect ports together. 


The line in the Python launcher that generates the error is:

        self.dave_addonly_0 = ettus.rfnoc_generic(
            self.device3,
            uhd.stream_args( # TX Stream Args
                cpu_format="fc32", # TODO: This must be made an option
                otw_format="sc16",
                channels=(0,1),
                args="align=1",
            ),
            uhd.stream_args( # RX Stream Args
                cpu_format="fc32",
                otw_format="sc16",
                channels=(0,1),
                args="align=1",
            ),
            "addonly", -1, -1,
        )


Maybe a custom block controller would help? Or maybe if it works in UHD
but not Gnuradio I could push the same data over TCP and still use the
nice Gnuradio plotting on the host side? 


On Fri, 2019-09-06 at 15:26 -0700, Nick Foster wrote:
> Here's a modified add-only block. You'll have to make a matching .xml
> descriptor and GRC block (if you're using gr-ettus).
> 
> Probably it would be a super useful thing to have an add/sub block,
> instead of an addsub block. A register-controlled mux to select which
> operation you want. I'll think about adding that to the Theseus Cores
> project.
> 
> Nick
> 
> On Fri, Sep 6, 2019 at 3:18 PM d.des via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> > Nick-
> > Could you share the tricks to remove one of the output ports? I
> > don't
> > I'm having similar issues with my modified addsub block and don't
> > have
> > enough room on the e310 fpga for extra fifos. It's not obvious from
> > the
> > noc_block_addsub code, the use of splitstream and dummy variables
> > is
> > very confusing.
> > 
> > Tnx,
> > Dave (and I'm sure many others, based on threads I've seen in
> > searches)
> > 
> > ________________________________
> > From: Nick Foster <bistromath at gmail.com>
> > Sent: Tuesday, September 3, 2019 11:45:46 PM
> > To: Quadri,Adnan <adnan.quadri at louisville.edu>
> > Cc: usrp-users at lists.ettus.com <usrp-users at lists.ettus.com>
> > Subject: Re: [USRP-users] Addsub HLS Block Error
> > 
> > That shouldn't be. Even if you connect both outputs to the host?
> > 
> > I admit I got fed up with it in my own application (don't want both
> > streams going into the host) and just modified the addsub block to
> > be
> > an add-only block.
> > 
> > On Tue, Sep 3, 2019 at 8:43 PM Quadri,Adnan <adnan.quadri at
> > louisville.edu<mailto:adnan.quadri at louisville.edu>> wrote:
> > I tried connecting one Signal Source block to both the inputs of
> > addsub
> > block. It still throws the same error.
> > 
> > Adnan
> > ________________________________
> > From: Nick Foster <bistromath at gmail.com<mailto:bistromath at
> > gmail.com>>
> > Sent: Tuesday, September 3, 2019 11:40:05 PM
> > To: Quadri,Adnan <adnan.quadri at
> > louisville.edu<mailto:adnan.quadri at
> > louisville.edu>>
> > Cc: usrp-users at lists.ettus.com<mailto:usrp-users at
> > lists.ettus.com>
> > <usrp-users at lists.ettus.com<mailto:usrp-users at
> > lists.ettus.com>>
> > Subject: Re: [USRP-users] Addsub HLS Block Error
> > 
> > Oh, I see. You have separate sources connected to the same addsub
> > block. It's telling you that you need to use timed stream commands
> > to
> > start the stream, or else you will see undefined behavior.
> > Personally I
> > think that error should be demoted to a warning -- anyone from
> > Ettus
> > want to chime in?
> > 
> > On Tue, Sep 3, 2019 at 3:53 PM Quadri,Adnan <adnan.quadri at
> > louisville.edu<mailto:adnan.quadri at louisville.edu>> wrote:
> > Hello,
> > 
> > Thank you for your prompt response. I have connected both the
> > addsub
> > output to two QT Gui Sink but I still get the same error. I have
> > the
> > Copy block in the middle as well.
> > 
> > I am attaching a screenshot of my flowgraph. I tried with different
> > USRP sources/Signal Sources as well. But it is the same error.
> > 
> > Thanks,
> > Adnan
> > 
> > ________________________________
> > From: Nick Foster <bistromath at gmail.com<mailto:bistromath at
> > gmail.com>>
> > Sent: Tuesday, September 3, 2019 3:57 PM
> > To: Quadri,Adnan <adnan.quadri at
> > louisville.edu<mailto:adnan.quadri at
> > louisville.edu>>
> > Cc: usrp-users at lists.ettus.com<mailto:usrp-users at
> > lists.ettus.com>
> > <usrp-users at lists.ettus.com<mailto:usrp-users at
> > lists.ettus.com>>
> > Subject: Re: [USRP-users] Addsub HLS Block Error
> > 
> > I ran into this the other day and it's independent of the HLS
> > component
> > of the addsub block (since the interface is identical). You need to
> > connect both outputs of the addsub block to something, even a null
> > sink. I'm pretty sure this wasn't the intended behavior and also
> > pretty
> > sure that it wasn't like this last time I checked (which was more
> > than
> > a year ago), so maybe it should be filed as a bug.
> > 
> > Nick
> > 
> > On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users <usrp-
> > users
> > at lists.ettus.com<mailto:usrp-users at lists.ettus.com>> wrote:
> > Hello,
> > 
> > We are trying to run the RFNoC addsub HLS block.
> > 
> > I was able to build the FPGA Image and made sure in the noc_block
> > verilog code to point to the HLS implementation for addsub block on
> > RFNoC as opposed to the verilog/VHDL implementation.
> > 
> > But when we run the example Flowgraph with two signal source as
> > input
> > to the two inputs for addsub block on GRC, we get the following
> > error -
> > 
> > ERROR:
> > thread[thread-per-block[4]: <block uhd_rfnoc_AddSub (1)>]:
> > RuntimeError: Invalid recv stream command - stream now on multiple
> > channels in a single streamer will fail to time align.
> > 
> > Does this have anything to do with the C++ code for HLS
> > implementation
> > or is it a problem at UHD level?
> > 
> > Thanks,
> > Adnan
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users at lists.ettus.com<mailto:USRP-users at lists.ettus.com>
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.ettus.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=DwMFaQ&c=OAG1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&r=JoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U&m=XH0fqWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4&s=_hsJH03rqnDSUZXWGyx31-8I7HJLsU5_S5hs-j5_WRw&e=>
> > -------------- next part --------------
> > An HTML attachment was scrubbed...
> > URL: <
> > http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190904/3138375d/attachment.html
> > >
> > 
> > 
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
