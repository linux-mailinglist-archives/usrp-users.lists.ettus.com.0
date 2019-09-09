Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D34AE18A
	for <lists+usrp-users@lfdr.de>; Tue, 10 Sep 2019 01:42:38 +0200 (CEST)
Received: from [::1] (port=36902 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i7TIq-00070B-UJ; Mon, 09 Sep 2019 19:42:36 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:42598)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1i7TIn-0006tt-LO
 for usrp-users@lists.ettus.com; Mon, 09 Sep 2019 19:42:33 -0400
Received: by mail-io1-f43.google.com with SMTP id n197so33189812iod.9
 for <usrp-users@lists.ettus.com>; Mon, 09 Sep 2019 16:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hU9sCrQwD+9AF7DioJNhW1+97sDuoqGpIwpQBus97wo=;
 b=PnutMtI1c1wPDGrjaCMujz4pP5PBAqawRTp/3MNGEDpCNWHdcMfnt+UDENqqi72q5R
 nkqXuYg5fZb1ZpglxXua4UplXyUk0T+uIKWS6wRp3+1i90yokUPyq/pJOnJnZkVeLyi5
 hEmKN91tlmxG6qCqq7qQnOd+3m4YTHFAynvAa/gKXTYr11J9J8nxCcyFiOiMKjq+ioWe
 V5bsTaycBjKQF3bFUD4HLpIPa7cVuf5JxV5JIOQ3vm3QFMBOgfGoWH5M0WgfYFha+H+/
 XazsElERCDwcDcMlxFNpDODmK8tQcQryXcty2+HRPOcgwkQYFOHDJtGHRroBbajuMEvq
 382Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hU9sCrQwD+9AF7DioJNhW1+97sDuoqGpIwpQBus97wo=;
 b=PGrkoCEL8Tog2W9LhQBNIl0sacrxdyQRyBv76NIP5U1hiDwlZx3jVUcmAE1EmZCN7i
 rJIJsCOmnugJygVt8LrmwxRZiFjZfqszzyCuMyak+lv/zbnIL0dY/ig5rs3Xyc+qGTtl
 s2VnIRKHWkMLdHOFeAAQc29b0fAoFHDDqk7jRvooSq0LEiaKPzJqaHwJ88YPCHmSQBGw
 L20qFVJFPpV6bCBrwO+q3Kba2DXjLh+2ESx6mVP2tb/+WtusJ3pSDCCWti1c/drPPrC/
 4Ry/JdF9HSEVnxW2rGaGKUqv2ge+AlOU+Ki4dh89OJAAIgNwr9Q6vKqmvTtkeXDN3DdY
 VLfg==
X-Gm-Message-State: APjAAAUeZOEjrY9iOfhI+F8+wBZ99JvZ4zmrpM6mjoxGkpD3nHJ1YdwN
 YNVAxh1wbwTZ8D3RHvkH/oXeeHI77BxINlWXtM0=
X-Google-Smtp-Source: APXvYqwyrHccqZuV0VYqxB6ZY+Y2RUrBL5Nu9Plt8axZ5vHcRlbAtfX5/GCcTZwkJf2iT7vL7fq73Rbl+uNcL/e++uQ=
X-Received: by 2002:a02:7702:: with SMTP id g2mr8250145jac.92.1568072512516;
 Mon, 09 Sep 2019 16:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel.ref@sbcglobal.net>
 <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel@sbcglobal.net>
 <CA+JMMq_PWfCwHKYbuVNUBSkLStLJsHr2TuV7aEEatFO1Mp3mPQ@mail.gmail.com>
 <347790affd1a2263fd09fe55a2205714c1457481.camel@sbcglobal.net>
In-Reply-To: <347790affd1a2263fd09fe55a2205714c1457481.camel@sbcglobal.net>
Date: Mon, 9 Sep 2019 16:41:44 -0700
Message-ID: <CA+JMMq-o+uZzt3qgCPm+e2vjy6tZPADU_GHV0sPkRWsA7hKggQ@mail.gmail.com>
To: "d.des" <d.des@sbcglobal.net>
Content-Type: multipart/mixed; boundary="0000000000001775050592275596"
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: etus list <usrp-users@lists.ettus.com>
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

--0000000000001775050592275596
Content-Type: multipart/alternative; boundary="0000000000001775010592275594"

--0000000000001775010592275594
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I've used it, no custom block controller required. Attached are XML
and GRC descriptors.

On Sat, Sep 7, 2019 at 11:22 AM d.des <d.des@sbcglobal.net> wrote:

> I wonder if you have successfully used this block with grc or if you
> were just using it with uhd. When I try to use the 2-input, 1-output
> block in grc I get: "RuntimeError: Invalid stream args." this looks
> like same issue as
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-August/0=
57702.html
> and the solution at that time seemed to be to keep the second port so
> as not to confuse the streamer.
>
> In case I'm doing something dumb in the xml, here are the files I
> created for uhd and grc:
>
> <?xml version=3D"1.0"?>
> <!--Default XML file-->
> <nocblock>
>   <name>addonly</name>
>   <blockname>addonly</blockname>
>   <ids>
>     <id revision=3D"0">0000000041253002</id>
>   </ids>
>   <ports>
>     <sink>
>       <name>in0</name>
>     </sink>
>     <sink>
>       <name>in1</name>
>     </sink>
>     <source>
>       <name>out</name>
>     </source>
>   </ports>
> </nocblock>
>
>
>
> <?xml version=3D"1.0"?>
> <block>
>   <name>RFNoC: addonly</name>
>   <key>dave_addonly</key>
>   <import>import ettus</import>
>   <make>ettus.rfnoc_generic(
>     self.device3,
>     uhd.stream_args( \# TX Stream Args
>         cpu_format=3D"$type", \# TODO: This must be made an option
>         otw_format=3D"sc16",
>         channels=3D(0,1),
>         args=3D"align=3D1",
>     ),
>     uhd.stream_args( \# RX Stream Args
>         cpu_format=3D"$type",
>         otw_format=3D"sc16",
>         channels=3D(0,1),
>         args=3D"align=3D1",
>     ),
>     "addonly", $block_index, $device_index,
> )</make>
>
>   <param>
>     <name>Host Data Type</name>
>     <key>type</key>
>     <type>enum</type>
>     <option>
>       <name>Complex float32</name>
>       <key>fc32</key>
>       <opt>type:fc32</opt>
>     </option>
>     <option>
>       <name>Complex int16</name>
>       <key>sc16</key>
>       <opt>type:sc16</opt>
>     </option>
>   </param>
>
>   <param>
>     <name>dcovariance Select</name>
>     <key>block_index</key>
>     <value>-1</value>
>     <type>int</type>
>     <hide>#if int($block_index()) &lt; 0 then 'part' else
> 'none'#</hide>
>     <tab>RFNoC Config</tab>
>   </param>
>   <param>
>     <name>Device Select</name>
>     <key>device_index</key>
>     <value>-1</value>
>     <type>int</type>
>     <hide>#if int($device_index()) &lt; 0 then 'part' else
> 'none'#</hide>
>     <tab>RFNoC Config</tab>
>   </param>
>
>   <param>
>     <name>FPGA Module Name</name>
>     <key>fpga_module_name</key>
>     <value>noc_block_dcovariance</value>
>     <type>string</type>
>     <hide>all</hide>
>     <tab>RFNoC Config</tab>
>   </param>
>
>   <sink>
>     <name>in</name>
>     <type>$type.type</type>
>     <domain>rfnoc</domain>
>     <nports>2</nports>
>   </sink>
>
>   <source>
>     <name>out</name>
>     <type>$type.type</type>
>     <domain>rfnoc</domain>
>   </source>
> </block>
>
>
> The messages just before the error are:
> [DEBUG] [DEVICE3] Port 0x20: Found NoC-Block with ID 0000000041253002.
> [DEBUG] [RFNOC] Reading XML file
> /home/root/localinstall/usr/share/uhd/rfnoc/blocks/addonly.xml for NOC
> ID 0x41253002
> [DEBUG] [E300] [E300] Setting up dest map for host ep 35 to be stream 3
>
> [TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
> [DEBUG] [RFNOC] Reading XML file
> /home/root/localinstall/usr/share/uhd/rfnoc/blocks/addonly.xml for NOC
> ID 0x41253002
> [WARNING] [RFNOC] Can't find a block controller for key addonly, using
> default block controller!
> [TRACE] [RFNOC] [RFNoC Factory] Using controller key 'Block' and block
> name 'addonly'
> [DEBUG] [RFNOC] Reading XML file
> /home/root/localinstall/usr/share/uhd/rfnoc/blocks/addonly.xml for NOC
> ID 0x41253002
> [INFO] [0/dcorrelate_0] Initializing block control (NOC ID:
> 0x0000000041253002)
> [DEBUG] [0/dcorrelate_0] Checking compat number for FPGA component
> `noc_shell': Expecting 5.1, actual: 5.1.
> [TRACE] [0/addonly_0] Adding port definition at
> xbar/dcorrelate_0/ports/in/0: type =3D '' pkt_size =3D '0' vlen =3D '0'
> [TRACE] [0/addonly_0] Adding port definition at
> xbar/dcorrelate_0/ports/in/1: type =3D '' pkt_size =3D '0' vlen =3D '0'
> [TRACE] [0/addonly_0] Adding port definition at
> xbar/addonly_0/ports/out/0: type =3D '' pkt_size =3D '0' vlen =3D '0'
> [DEBUG] [E300] [E300] Setting up dest map for host ep 36 to be stream 4
>
> :
> <other blocks and rate setting...>
> :
> [DEBUG] [E300] Actually got clock rate 10 MHz
>
> [DEBUG] [CORES] Performing timer loopback test...
> [DEBUG] [CORES] Timer loopback test passed.
> [TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables()
>
> [TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state()
>
> Traceback (most recent call last):
>   File "./dave_addonly_usrp.py", line 169, in <module>
>     main()
>   File "./dave_addonly_usrp.py", line 158, in main
>     tb =3D top_block_cls()
>   File "./dave_addonly_usrp.py", line 94, in __init__
>     "addonly", -1, -1,
>   File "/home/root/localinstall/usr/lib/python2.7/site-
> packages/ettus/ettus_swig.py", line 3270, in make
>     return _ettus_swig.rfnoc_generic_make(*args, **kwargs)
> RuntimeError: Invalid stream args.
>
> It never gets to the part where it attempts to connect ports together.
>
>
> The line in the Python launcher that generates the error is:
>
>         self.dave_addonly_0 =3D ettus.rfnoc_generic(
>             self.device3,
>             uhd.stream_args( # TX Stream Args
>                 cpu_format=3D"fc32", # TODO: This must be made an option
>                 otw_format=3D"sc16",
>                 channels=3D(0,1),
>                 args=3D"align=3D1",
>             ),
>             uhd.stream_args( # RX Stream Args
>                 cpu_format=3D"fc32",
>                 otw_format=3D"sc16",
>                 channels=3D(0,1),
>                 args=3D"align=3D1",
>             ),
>             "addonly", -1, -1,
>         )
>
>
> Maybe a custom block controller would help? Or maybe if it works in UHD
> but not Gnuradio I could push the same data over TCP and still use the
> nice Gnuradio plotting on the host side?
>
>
> On Fri, 2019-09-06 at 15:26 -0700, Nick Foster wrote:
> > Here's a modified add-only block. You'll have to make a matching .xml
> > descriptor and GRC block (if you're using gr-ettus).
> >
> > Probably it would be a super useful thing to have an add/sub block,
> > instead of an addsub block. A register-controlled mux to select which
> > operation you want. I'll think about adding that to the Theseus Cores
> > project.
> >
> > Nick
> >
> > On Fri, Sep 6, 2019 at 3:18 PM d.des via USRP-users <
> > usrp-users@lists.ettus.com> wrote:
> > > Nick-
> > > Could you share the tricks to remove one of the output ports? I
> > > don't
> > > I'm having similar issues with my modified addsub block and don't
> > > have
> > > enough room on the e310 fpga for extra fifos. It's not obvious from
> > > the
> > > noc_block_addsub code, the use of splitstream and dummy variables
> > > is
> > > very confusing.
> > >
> > > Tnx,
> > > Dave (and I'm sure many others, based on threads I've seen in
> > > searches)
> > >
> > > ________________________________
> > > From: Nick Foster <bistromath at gmail.com>
> > > Sent: Tuesday, September 3, 2019 11:45:46 PM
> > > To: Quadri,Adnan <adnan.quadri at louisville.edu>
> > > Cc: usrp-users at lists.ettus.com <usrp-users at lists.ettus.com>
> > > Subject: Re: [USRP-users] Addsub HLS Block Error
> > >
> > > That shouldn't be. Even if you connect both outputs to the host?
> > >
> > > I admit I got fed up with it in my own application (don't want both
> > > streams going into the host) and just modified the addsub block to
> > > be
> > > an add-only block.
> > >
> > > On Tue, Sep 3, 2019 at 8:43 PM Quadri,Adnan <adnan.quadri at
> > > louisville.edu<mailto:adnan.quadri at louisville.edu>> wrote:
> > > I tried connecting one Signal Source block to both the inputs of
> > > addsub
> > > block. It still throws the same error.
> > >
> > > Adnan
> > > ________________________________
> > > From: Nick Foster <bistromath at gmail.com<mailto:bistromath at
> > > gmail.com>>
> > > Sent: Tuesday, September 3, 2019 11:40:05 PM
> > > To: Quadri,Adnan <adnan.quadri at
> > > louisville.edu<mailto:adnan.quadri at
> > > louisville.edu>>
> > > Cc: usrp-users at lists.ettus.com<mailto:usrp-users at
> > > lists.ettus.com>
> > > <usrp-users at lists.ettus.com<mailto:usrp-users at
> > > lists.ettus.com>>
> > > Subject: Re: [USRP-users] Addsub HLS Block Error
> > >
> > > Oh, I see. You have separate sources connected to the same addsub
> > > block. It's telling you that you need to use timed stream commands
> > > to
> > > start the stream, or else you will see undefined behavior.
> > > Personally I
> > > think that error should be demoted to a warning -- anyone from
> > > Ettus
> > > want to chime in?
> > >
> > > On Tue, Sep 3, 2019 at 3:53 PM Quadri,Adnan <adnan.quadri at
> > > louisville.edu<mailto:adnan.quadri at louisville.edu>> wrote:
> > > Hello,
> > >
> > > Thank you for your prompt response. I have connected both the
> > > addsub
> > > output to two QT Gui Sink but I still get the same error. I have
> > > the
> > > Copy block in the middle as well.
> > >
> > > I am attaching a screenshot of my flowgraph. I tried with different
> > > USRP sources/Signal Sources as well. But it is the same error.
> > >
> > > Thanks,
> > > Adnan
> > >
> > > ________________________________
> > > From: Nick Foster <bistromath at gmail.com<mailto:bistromath at
> > > gmail.com>>
> > > Sent: Tuesday, September 3, 2019 3:57 PM
> > > To: Quadri,Adnan <adnan.quadri at
> > > louisville.edu<mailto:adnan.quadri at
> > > louisville.edu>>
> > > Cc: usrp-users at lists.ettus.com<mailto:usrp-users at
> > > lists.ettus.com>
> > > <usrp-users at lists.ettus.com<mailto:usrp-users at
> > > lists.ettus.com>>
> > > Subject: Re: [USRP-users] Addsub HLS Block Error
> > >
> > > I ran into this the other day and it's independent of the HLS
> > > component
> > > of the addsub block (since the interface is identical). You need to
> > > connect both outputs of the addsub block to something, even a null
> > > sink. I'm pretty sure this wasn't the intended behavior and also
> > > pretty
> > > sure that it wasn't like this last time I checked (which was more
> > > than
> > > a year ago), so maybe it should be filed as a bug.
> > >
> > > Nick
> > >
> > > On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users <usrp-
> > > users
> > > at lists.ettus.com<mailto:usrp-users at lists.ettus.com>> wrote:
> > > Hello,
> > >
> > > We are trying to run the RFNoC addsub HLS block.
> > >
> > > I was able to build the FPGA Image and made sure in the noc_block
> > > verilog code to point to the HLS implementation for addsub block on
> > > RFNoC as opposed to the verilog/VHDL implementation.
> > >
> > > But when we run the example Flowgraph with two signal source as
> > > input
> > > to the two inputs for addsub block on GRC, we get the following
> > > error -
> > >
> > > ERROR:
> > > thread[thread-per-block[4]: <block uhd_rfnoc_AddSub (1)>]:
> > > RuntimeError: Invalid recv stream command - stream now on multiple
> > > channels in a single streamer will fail to time align.
> > >
> > > Does this have anything to do with the C++ code for HLS
> > > implementation
> > > or is it a problem at UHD level?
> > >
> > > Thanks,
> > > Adnan
> > > _______________________________________________
> > > USRP-users mailing list
> > > USRP-users at lists.ettus.com<mailto:USRP-users at lists.ettus.com>
> > > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<
> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mai=
lman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DOAG1LQNACBDguGv=
BeNj18Swhr9TMTjS-x4O_KuapPgY&r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02=
U&m=3DXH0fqWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4&s=3D_hsJH03rqnDSUZXWGyx31=
-8I7HJLsU5_S5hs-j5_WRw&e=3D
> >
> > > -------------- next part --------------
> > > An HTML attachment was scrubbed...
> > > URL: <
> > >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0190904/3138375d/attachment.html
> > > >
> > >
> > >
> > > _______________________________________________
> > > USRP-users mailing list
> > > USRP-users@lists.ettus.com
> > > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--0000000000001775010592275594
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I&#39;ve used it, no custom block controller required=
. Attached are XML and GRC descriptors.<br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 7, 2019 at 11:22 AM =
d.des &lt;<a href=3D"mailto:d.des@sbcglobal.net">d.des@sbcglobal.net</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I wonde=
r if you have successfully used this block with grc or if you<br>
were just using it with uhd. When I try to use the 2-input, 1-output<br>
block in grc I get: &quot;RuntimeError: Invalid stream args.&quot; this loo=
ks<br>
like same issue as <br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018=
-August/057702.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ettu=
s.com/pipermail/usrp-users_lists.ettus.com/2018-August/057702.html</a><br>
and the solution at that time seemed to be to keep the second port so<br>
as not to confuse the streamer.<br>
<br>
In case I&#39;m doing something dumb in the xml, here are the files I<br>
created for uhd and grc:<br>
<br>
&lt;?xml version=3D&quot;1.0&quot;?&gt;<br>
&lt;!--Default XML file--&gt;<br>
&lt;nocblock&gt;<br>
=C2=A0 &lt;name&gt;addonly&lt;/name&gt;<br>
=C2=A0 &lt;blockname&gt;addonly&lt;/blockname&gt;<br>
=C2=A0 &lt;ids&gt;<br>
=C2=A0 =C2=A0 &lt;id revision=3D&quot;0&quot;&gt;0000000041253002&lt;/id&gt=
;<br>
=C2=A0 &lt;/ids&gt;<br>
=C2=A0 &lt;ports&gt;<br>
=C2=A0 =C2=A0 &lt;sink&gt;<br>
=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;in0&lt;/name&gt;<br>
=C2=A0 =C2=A0 &lt;/sink&gt;<br>
=C2=A0 =C2=A0 &lt;sink&gt;<br>
=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;in1&lt;/name&gt;<br>
=C2=A0 =C2=A0 &lt;/sink&gt;<br>
=C2=A0 =C2=A0 &lt;source&gt;<br>
=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;out&lt;/name&gt;<br>
=C2=A0 =C2=A0 &lt;/source&gt;<br>
=C2=A0 &lt;/ports&gt;<br>
&lt;/nocblock&gt;<br>
<br>
<br>
<br>
&lt;?xml version=3D&quot;1.0&quot;?&gt;<br>
&lt;block&gt;<br>
=C2=A0 &lt;name&gt;RFNoC: addonly&lt;/name&gt;<br>
=C2=A0 &lt;key&gt;dave_addonly&lt;/key&gt;<br>
=C2=A0 &lt;import&gt;import ettus&lt;/import&gt;<br>
=C2=A0 &lt;make&gt;ettus.rfnoc_generic(<br>
=C2=A0 =C2=A0 self.device3,<br>
=C2=A0 =C2=A0 uhd.stream_args( \# TX Stream Args<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cpu_format=3D&quot;$type&quot;, \# TODO: This m=
ust be made an option<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 otw_format=3D&quot;sc16&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 channels=3D(0,1),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 args=3D&quot;align=3D1&quot;,<br>
=C2=A0 =C2=A0 ),<br>
=C2=A0 =C2=A0 uhd.stream_args( \# RX Stream Args<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cpu_format=3D&quot;$type&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 otw_format=3D&quot;sc16&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 channels=3D(0,1),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 args=3D&quot;align=3D1&quot;,<br>
=C2=A0 =C2=A0 ),<br>
=C2=A0 =C2=A0 &quot;addonly&quot;, $block_index, $device_index,<br>
)&lt;/make&gt;<br>
<br>
=C2=A0 &lt;param&gt;<br>
=C2=A0 =C2=A0 &lt;name&gt;Host Data Type&lt;/name&gt;<br>
=C2=A0 =C2=A0 &lt;key&gt;type&lt;/key&gt;<br>
=C2=A0 =C2=A0 &lt;type&gt;enum&lt;/type&gt;<br>
=C2=A0 =C2=A0 &lt;option&gt;<br>
=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;Complex float32&lt;/name&gt;<br>
=C2=A0 =C2=A0 =C2=A0 &lt;key&gt;fc32&lt;/key&gt;<br>
=C2=A0 =C2=A0 =C2=A0 &lt;opt&gt;type:fc32&lt;/opt&gt;<br>
=C2=A0 =C2=A0 &lt;/option&gt;<br>
=C2=A0 =C2=A0 &lt;option&gt;<br>
=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;Complex int16&lt;/name&gt;<br>
=C2=A0 =C2=A0 =C2=A0 &lt;key&gt;sc16&lt;/key&gt;<br>
=C2=A0 =C2=A0 =C2=A0 &lt;opt&gt;type:sc16&lt;/opt&gt;<br>
=C2=A0 =C2=A0 &lt;/option&gt;<br>
=C2=A0 &lt;/param&gt;<br>
<br>
=C2=A0 &lt;param&gt;<br>
=C2=A0 =C2=A0 &lt;name&gt;dcovariance Select&lt;/name&gt;<br>
=C2=A0 =C2=A0 &lt;key&gt;block_index&lt;/key&gt;<br>
=C2=A0 =C2=A0 &lt;value&gt;-1&lt;/value&gt;<br>
=C2=A0 =C2=A0 &lt;type&gt;int&lt;/type&gt;<br>
=C2=A0 =C2=A0 &lt;hide&gt;#if int($block_index()) &amp;lt; 0 then &#39;part=
&#39; else<br>
&#39;none&#39;#&lt;/hide&gt;<br>
=C2=A0 =C2=A0 &lt;tab&gt;RFNoC Config&lt;/tab&gt;<br>
=C2=A0 &lt;/param&gt;<br>
=C2=A0 &lt;param&gt;<br>
=C2=A0 =C2=A0 &lt;name&gt;Device Select&lt;/name&gt;<br>
=C2=A0 =C2=A0 &lt;key&gt;device_index&lt;/key&gt;<br>
=C2=A0 =C2=A0 &lt;value&gt;-1&lt;/value&gt;<br>
=C2=A0 =C2=A0 &lt;type&gt;int&lt;/type&gt;<br>
=C2=A0 =C2=A0 &lt;hide&gt;#if int($device_index()) &amp;lt; 0 then &#39;par=
t&#39; else<br>
&#39;none&#39;#&lt;/hide&gt;<br>
=C2=A0 =C2=A0 &lt;tab&gt;RFNoC Config&lt;/tab&gt;<br>
=C2=A0 &lt;/param&gt;<br>
<br>
=C2=A0 &lt;param&gt;<br>
=C2=A0 =C2=A0 &lt;name&gt;FPGA Module Name&lt;/name&gt;<br>
=C2=A0 =C2=A0 &lt;key&gt;fpga_module_name&lt;/key&gt;<br>
=C2=A0 =C2=A0 &lt;value&gt;noc_block_dcovariance&lt;/value&gt;<br>
=C2=A0 =C2=A0 &lt;type&gt;string&lt;/type&gt;<br>
=C2=A0 =C2=A0 &lt;hide&gt;all&lt;/hide&gt;<br>
=C2=A0 =C2=A0 &lt;tab&gt;RFNoC Config&lt;/tab&gt;<br>
=C2=A0 &lt;/param&gt;<br>
<br>
=C2=A0 &lt;sink&gt;<br>
=C2=A0 =C2=A0 &lt;name&gt;in&lt;/name&gt;<br>
=C2=A0 =C2=A0 &lt;type&gt;$type.type&lt;/type&gt;<br>
=C2=A0 =C2=A0 &lt;domain&gt;rfnoc&lt;/domain&gt;<br>
=C2=A0 =C2=A0 &lt;nports&gt;2&lt;/nports&gt;<br>
=C2=A0 &lt;/sink&gt;<br>
<br>
=C2=A0 &lt;source&gt;<br>
=C2=A0 =C2=A0 &lt;name&gt;out&lt;/name&gt;<br>
=C2=A0 =C2=A0 &lt;type&gt;$type.type&lt;/type&gt;<br>
=C2=A0 =C2=A0 &lt;domain&gt;rfnoc&lt;/domain&gt;<br>
=C2=A0 &lt;/source&gt;<br>
&lt;/block&gt;<br>
<br>
<br>
The messages just before the error are:<br>
[DEBUG] [DEVICE3] Port 0x20: Found NoC-Block with ID 0000000041253002.<br>
[DEBUG] [RFNOC] Reading XML file<br>
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addonly.xml for NOC<br>
ID 0x41253002<br>
[DEBUG] [E300] [E300] Setting up dest map for host ep 35 to be stream 3<br>
<br>
[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()<br>
[DEBUG] [RFNOC] Reading XML file<br>
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addonly.xml for NOC<br>
ID 0x41253002<br>
[WARNING] [RFNOC] Can&#39;t find a block controller for key addonly, using<=
br>
default block controller!<br>
[TRACE] [RFNOC] [RFNoC Factory] Using controller key &#39;Block&#39; and bl=
ock<br>
name &#39;addonly&#39;<br>
[DEBUG] [RFNOC] Reading XML file<br>
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addonly.xml for NOC<br>
ID 0x41253002<br>
[INFO] [0/dcorrelate_0] Initializing block control (NOC ID:<br>
0x0000000041253002)<br>
[DEBUG] [0/dcorrelate_0] Checking compat number for FPGA component<br>
`noc_shell&#39;: Expecting 5.1, actual: 5.1.<br>
[TRACE] [0/addonly_0] Adding port definition at<br>
xbar/dcorrelate_0/ports/in/0: type =3D &#39;&#39; pkt_size =3D &#39;0&#39; =
vlen =3D &#39;0&#39;<br>
[TRACE] [0/addonly_0] Adding port definition at<br>
xbar/dcorrelate_0/ports/in/1: type =3D &#39;&#39; pkt_size =3D &#39;0&#39; =
vlen =3D &#39;0&#39;<br>
[TRACE] [0/addonly_0] Adding port definition at<br>
xbar/addonly_0/ports/out/0: type =3D &#39;&#39; pkt_size =3D &#39;0&#39; vl=
en =3D &#39;0&#39;<br>
[DEBUG] [E300] [E300] Setting up dest map for host ep 36 to be stream 4<br>
<br>
:<br>
&lt;other blocks and rate setting...&gt;<br>
:<br>
[DEBUG] [E300] Actually got clock rate 10 MHz<br>
<br>
[DEBUG] [CORES] Performing timer loopback test... <br>
[DEBUG] [CORES] Timer loopback test passed.<br>
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() <br>
<br>
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() <br>
<br>
Traceback (most recent call last):<br>
=C2=A0 File &quot;./dave_addonly_usrp.py&quot;, line 169, in &lt;module&gt;=
<br>
=C2=A0 =C2=A0 main()<br>
=C2=A0 File &quot;./dave_addonly_usrp.py&quot;, line 158, in main<br>
=C2=A0 =C2=A0 tb =3D top_block_cls()<br>
=C2=A0 File &quot;./dave_addonly_usrp.py&quot;, line 94, in __init__<br>
=C2=A0 =C2=A0 &quot;addonly&quot;, -1, -1,<br>
=C2=A0 File &quot;/home/root/localinstall/usr/lib/python2.7/site-<br>
packages/ettus/ettus_swig.py&quot;, line 3270, in make<br>
=C2=A0 =C2=A0 return _ettus_swig.rfnoc_generic_make(*args, **kwargs)<br>
RuntimeError: Invalid stream args.<br>
<br>
It never gets to the part where it attempts to connect ports together. <br>
<br>
<br>
The line in the Python launcher that generates the error is:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.dave_addonly_0 =3D ettus.rfnoc_generic(<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.device3,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.stream_args( # TX Stream Args=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cpu_format=3D&quot;=
fc32&quot;, # TODO: This must be made an option<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 otw_format=3D&quot;=
sc16&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 channels=3D(0,1),<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 args=3D&quot;align=
=3D1&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.stream_args( # RX Stream Args=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cpu_format=3D&quot;=
fc32&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 otw_format=3D&quot;=
sc16&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 channels=3D(0,1),<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 args=3D&quot;align=
=3D1&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;addonly&quot;, -1, -1,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 )<br>
<br>
<br>
Maybe a custom block controller would help? Or maybe if it works in UHD<br>
but not Gnuradio I could push the same data over TCP and still use the<br>
nice Gnuradio plotting on the host side? <br>
<br>
<br>
On Fri, 2019-09-06 at 15:26 -0700, Nick Foster wrote:<br>
&gt; Here&#39;s a modified add-only block. You&#39;ll have to make a matchi=
ng .xml<br>
&gt; descriptor and GRC block (if you&#39;re using gr-ettus).<br>
&gt; <br>
&gt; Probably it would be a super useful thing to have an add/sub block,<br=
>
&gt; instead of an addsub block. A register-controlled mux to select which<=
br>
&gt; operation you want. I&#39;ll think about adding that to the Theseus Co=
res<br>
&gt; project.<br>
&gt; <br>
&gt; Nick<br>
&gt; <br>
&gt; On Fri, Sep 6, 2019 at 3:18 PM d.des via USRP-users &lt;<br>
&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
&gt; &gt; Nick-<br>
&gt; &gt; Could you share the tricks to remove one of the output ports? I<b=
r>
&gt; &gt; don&#39;t<br>
&gt; &gt; I&#39;m having similar issues with my modified addsub block and d=
on&#39;t<br>
&gt; &gt; have<br>
&gt; &gt; enough room on the e310 fpga for extra fifos. It&#39;s not obviou=
s from<br>
&gt; &gt; the<br>
&gt; &gt; noc_block_addsub code, the use of splitstream and dummy variables=
<br>
&gt; &gt; is<br>
&gt; &gt; very confusing.<br>
&gt; &gt; <br>
&gt; &gt; Tnx,<br>
&gt; &gt; Dave (and I&#39;m sure many others, based on threads I&#39;ve see=
n in<br>
&gt; &gt; searches)<br>
&gt; &gt; <br>
&gt; &gt; ________________________________<br>
&gt; &gt; From: Nick Foster &lt;bistromath at <a href=3D"http://gmail.com" =
rel=3D"noreferrer" target=3D"_blank">gmail.com</a>&gt;<br>
&gt; &gt; Sent: Tuesday, September 3, 2019 11:45:46 PM<br>
&gt; &gt; To: Quadri,Adnan &lt;adnan.quadri at <a href=3D"http://louisville=
.edu" rel=3D"noreferrer" target=3D"_blank">louisville.edu</a>&gt;<br>
&gt; &gt; Cc: usrp-users at <a href=3D"http://lists.ettus.com" rel=3D"noref=
errer" target=3D"_blank">lists.ettus.com</a> &lt;usrp-users at <a href=3D"h=
ttp://lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">lists.ettus.com=
</a>&gt;<br>
&gt; &gt; Subject: Re: [USRP-users] Addsub HLS Block Error<br>
&gt; &gt; <br>
&gt; &gt; That shouldn&#39;t be. Even if you connect both outputs to the ho=
st?<br>
&gt; &gt; <br>
&gt; &gt; I admit I got fed up with it in my own application (don&#39;t wan=
t both<br>
&gt; &gt; streams going into the host) and just modified the addsub block t=
o<br>
&gt; &gt; be<br>
&gt; &gt; an add-only block.<br>
&gt; &gt; <br>
&gt; &gt; On Tue, Sep 3, 2019 at 8:43 PM Quadri,Adnan &lt;adnan.quadri at<b=
r>
&gt; &gt; <a href=3D"http://louisville.edu" rel=3D"noreferrer" target=3D"_b=
lank">louisville.edu</a>&lt;mailto:<a href=3D"mailto:adnan.quadri" target=
=3D"_blank">adnan.quadri</a> at <a href=3D"http://louisville.edu" rel=3D"no=
referrer" target=3D"_blank">louisville.edu</a>&gt;&gt; wrote:<br>
&gt; &gt; I tried connecting one Signal Source block to both the inputs of<=
br>
&gt; &gt; addsub<br>
&gt; &gt; block. It still throws the same error.<br>
&gt; &gt; <br>
&gt; &gt; Adnan<br>
&gt; &gt; ________________________________<br>
&gt; &gt; From: Nick Foster &lt;bistromath at <a href=3D"http://gmail.com" =
rel=3D"noreferrer" target=3D"_blank">gmail.com</a>&lt;mailto:<a href=3D"mai=
lto:bistromath" target=3D"_blank">bistromath</a> at<br>
&gt; &gt; <a href=3D"http://gmail.com" rel=3D"noreferrer" target=3D"_blank"=
>gmail.com</a>&gt;&gt;<br>
&gt; &gt; Sent: Tuesday, September 3, 2019 11:40:05 PM<br>
&gt; &gt; To: Quadri,Adnan &lt;adnan.quadri at<br>
&gt; &gt; <a href=3D"http://louisville.edu" rel=3D"noreferrer" target=3D"_b=
lank">louisville.edu</a>&lt;mailto:<a href=3D"mailto:adnan.quadri" target=
=3D"_blank">adnan.quadri</a> at<br>
&gt; &gt; <a href=3D"http://louisville.edu" rel=3D"noreferrer" target=3D"_b=
lank">louisville.edu</a>&gt;&gt;<br>
&gt; &gt; Cc: usrp-users at <a href=3D"http://lists.ettus.com" rel=3D"noref=
errer" target=3D"_blank">lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:us=
rp-users" target=3D"_blank">usrp-users</a> at<br>
&gt; &gt; <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" target=3D"_=
blank">lists.ettus.com</a>&gt;<br>
&gt; &gt; &lt;usrp-users at <a href=3D"http://lists.ettus.com" rel=3D"noref=
errer" target=3D"_blank">lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:us=
rp-users" target=3D"_blank">usrp-users</a> at<br>
&gt; &gt; <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" target=3D"_=
blank">lists.ettus.com</a>&gt;&gt;<br>
&gt; &gt; Subject: Re: [USRP-users] Addsub HLS Block Error<br>
&gt; &gt; <br>
&gt; &gt; Oh, I see. You have separate sources connected to the same addsub=
<br>
&gt; &gt; block. It&#39;s telling you that you need to use timed stream com=
mands<br>
&gt; &gt; to<br>
&gt; &gt; start the stream, or else you will see undefined behavior.<br>
&gt; &gt; Personally I<br>
&gt; &gt; think that error should be demoted to a warning -- anyone from<br=
>
&gt; &gt; Ettus<br>
&gt; &gt; want to chime in?<br>
&gt; &gt; <br>
&gt; &gt; On Tue, Sep 3, 2019 at 3:53 PM Quadri,Adnan &lt;adnan.quadri at<b=
r>
&gt; &gt; <a href=3D"http://louisville.edu" rel=3D"noreferrer" target=3D"_b=
lank">louisville.edu</a>&lt;mailto:<a href=3D"mailto:adnan.quadri" target=
=3D"_blank">adnan.quadri</a> at <a href=3D"http://louisville.edu" rel=3D"no=
referrer" target=3D"_blank">louisville.edu</a>&gt;&gt; wrote:<br>
&gt; &gt; Hello,<br>
&gt; &gt; <br>
&gt; &gt; Thank you for your prompt response. I have connected both the<br>
&gt; &gt; addsub<br>
&gt; &gt; output to two QT Gui Sink but I still get the same error. I have<=
br>
&gt; &gt; the<br>
&gt; &gt; Copy block in the middle as well.<br>
&gt; &gt; <br>
&gt; &gt; I am attaching a screenshot of my flowgraph. I tried with differe=
nt<br>
&gt; &gt; USRP sources/Signal Sources as well. But it is the same error.<br=
>
&gt; &gt; <br>
&gt; &gt; Thanks,<br>
&gt; &gt; Adnan<br>
&gt; &gt; <br>
&gt; &gt; ________________________________<br>
&gt; &gt; From: Nick Foster &lt;bistromath at <a href=3D"http://gmail.com" =
rel=3D"noreferrer" target=3D"_blank">gmail.com</a>&lt;mailto:<a href=3D"mai=
lto:bistromath" target=3D"_blank">bistromath</a> at<br>
&gt; &gt; <a href=3D"http://gmail.com" rel=3D"noreferrer" target=3D"_blank"=
>gmail.com</a>&gt;&gt;<br>
&gt; &gt; Sent: Tuesday, September 3, 2019 3:57 PM<br>
&gt; &gt; To: Quadri,Adnan &lt;adnan.quadri at<br>
&gt; &gt; <a href=3D"http://louisville.edu" rel=3D"noreferrer" target=3D"_b=
lank">louisville.edu</a>&lt;mailto:<a href=3D"mailto:adnan.quadri" target=
=3D"_blank">adnan.quadri</a> at<br>
&gt; &gt; <a href=3D"http://louisville.edu" rel=3D"noreferrer" target=3D"_b=
lank">louisville.edu</a>&gt;&gt;<br>
&gt; &gt; Cc: usrp-users at <a href=3D"http://lists.ettus.com" rel=3D"noref=
errer" target=3D"_blank">lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:us=
rp-users" target=3D"_blank">usrp-users</a> at<br>
&gt; &gt; <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" target=3D"_=
blank">lists.ettus.com</a>&gt;<br>
&gt; &gt; &lt;usrp-users at <a href=3D"http://lists.ettus.com" rel=3D"noref=
errer" target=3D"_blank">lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:us=
rp-users" target=3D"_blank">usrp-users</a> at<br>
&gt; &gt; <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" target=3D"_=
blank">lists.ettus.com</a>&gt;&gt;<br>
&gt; &gt; Subject: Re: [USRP-users] Addsub HLS Block Error<br>
&gt; &gt; <br>
&gt; &gt; I ran into this the other day and it&#39;s independent of the HLS=
<br>
&gt; &gt; component<br>
&gt; &gt; of the addsub block (since the interface is identical). You need =
to<br>
&gt; &gt; connect both outputs of the addsub block to something, even a nul=
l<br>
&gt; &gt; sink. I&#39;m pretty sure this wasn&#39;t the intended behavior a=
nd also<br>
&gt; &gt; pretty<br>
&gt; &gt; sure that it wasn&#39;t like this last time I checked (which was =
more<br>
&gt; &gt; than<br>
&gt; &gt; a year ago), so maybe it should be filed as a bug.<br>
&gt; &gt; <br>
&gt; &gt; Nick<br>
&gt; &gt; <br>
&gt; &gt; On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users &lt;us=
rp-<br>
&gt; &gt; users<br>
&gt; &gt; at <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" target=
=3D"_blank">lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:usrp-users" tar=
get=3D"_blank">usrp-users</a> at <a href=3D"http://lists.ettus.com" rel=3D"=
noreferrer" target=3D"_blank">lists.ettus.com</a>&gt;&gt; wrote:<br>
&gt; &gt; Hello,<br>
&gt; &gt; <br>
&gt; &gt; We are trying to run the RFNoC addsub HLS block.<br>
&gt; &gt; <br>
&gt; &gt; I was able to build the FPGA Image and made sure in the noc_block=
<br>
&gt; &gt; verilog code to point to the HLS implementation for addsub block =
on<br>
&gt; &gt; RFNoC as opposed to the verilog/VHDL implementation.<br>
&gt; &gt; <br>
&gt; &gt; But when we run the example Flowgraph with two signal source as<b=
r>
&gt; &gt; input<br>
&gt; &gt; to the two inputs for addsub block on GRC, we get the following<b=
r>
&gt; &gt; error -<br>
&gt; &gt; <br>
&gt; &gt; ERROR:<br>
&gt; &gt; thread[thread-per-block[4]: &lt;block uhd_rfnoc_AddSub (1)&gt;]:<=
br>
&gt; &gt; RuntimeError: Invalid recv stream command - stream now on multipl=
e<br>
&gt; &gt; channels in a single streamer will fail to time align.<br>
&gt; &gt; <br>
&gt; &gt; Does this have anything to do with the C++ code for HLS<br>
&gt; &gt; implementation<br>
&gt; &gt; or is it a problem at UHD level?<br>
&gt; &gt; <br>
&gt; &gt; Thanks,<br>
&gt; &gt; Adnan<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; USRP-users mailing list<br>
&gt; &gt; USRP-users at <a href=3D"http://lists.ettus.com" rel=3D"noreferre=
r" target=3D"_blank">lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:USRP-u=
sers" target=3D"_blank">USRP-users</a> at <a href=3D"http://lists.ettus.com=
" rel=3D"noreferrer" target=3D"_blank">lists.ettus.com</a>&gt;<br>
&gt; &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a>&lt;<a href=3D"https://urldef=
ense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listinfo_us=
rp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=3DOAG1LQNACBDguGvBeNj18Sw=
hr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U&am=
p;m=3DXH0fqWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4&amp;s=3D_hsJH03rqnDSUZXWG=
yx31-8I7HJLsU5_S5hs-j5_WRw&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">h=
ttps://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailma=
n_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=3DOAG1LQNACB=
DguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJ=
LBypH6x02U&amp;m=3DXH0fqWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4&amp;s=3D_hsJ=
H03rqnDSUZXWGyx31-8I7HJLsU5_S5hs-j5_WRw&amp;e=3D</a>&gt;<br>
&gt; &gt; -------------- next part --------------<br>
&gt; &gt; An HTML attachment was scrubbed...<br>
&gt; &gt; URL: &lt;<br>
&gt; &gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettu=
s.com/attachments/20190904/3138375d/attachment.html" rel=3D"noreferrer" tar=
get=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/=
attachments/20190904/3138375d/attachment.html</a><br>
&gt; &gt; &gt;<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; USRP-users mailing list<br>
&gt; &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
&gt; &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div>

--0000000000001775010592275594--
--0000000000001775050592275596
Content-Type: text/xml; charset="US-ASCII"; name="adder.xml"
Content-Disposition: attachment; filename="adder.xml"
Content-Transfer-Encoding: base64
Content-ID: <f_k0d1vkdb0>
X-Attachment-Id: f_k0d1vkdb0

PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxibG9jaz4KICA8bmFtZT5SRk5vQzogQWRkZXI8L25hbWU+
CiAgPGtleT5za2lwcHlfc3RyZWFtZXJfYWRkZXI8L2tleT4KICA8aW1wb3J0PmltcG9ydCBldHR1
czwvaW1wb3J0PgogIDxtYWtlPmV0dHVzLnJmbm9jX2dlbmVyaWMoCiAgICBzZWxmLmRldmljZTMs
CiAgICB1aGQuc3RyZWFtX2FyZ3MoIFwjIFRYIFN0cmVhbSBBcmdzCiAgICAgICAgY3B1X2Zvcm1h
dD0iZmMzMiIsCiAgICAgICAgb3R3X2Zvcm1hdD0ic2MxNiIsCiAgICAgICAgYXJncz0iIiwKICAg
ICksCiAgICB1aGQuc3RyZWFtX2FyZ3MoIFwjIFJYIFN0cmVhbSBBcmdzCiAgICAgICAgY3B1X2Zv
cm1hdD0iZmMzMiIsCiAgICAgICAgb3R3X2Zvcm1hdD0ic2MxNiIsCiAgICAgICAgYXJncz0iYWxp
Z249MSIsCiAgICApLAogICAgIkFkZCIsICRibG9ja19pbmRleCwgJGRldmljZV9pbmRleCwKKTwv
bWFrZT4KCiAgPHBhcmFtPgogICAgPG5hbWU+QWRkIFNlbGVjdDwvbmFtZT4KICAgIDxrZXk+Ymxv
Y2tfaW5kZXg8L2tleT4KICAgIDx2YWx1ZT4tMTwvdmFsdWU+CiAgICA8dHlwZT5pbnQ8L3R5cGU+
CiAgICA8aGlkZT4jaWYgaW50KCRibG9ja19pbmRleCgpKSAmbHQ7IDAgdGhlbiAncGFydCcgZWxz
ZSAnbm9uZScjPC9oaWRlPgogICAgPHRhYj5SRk5vQyBDb25maWc8L3RhYj4KICA8L3BhcmFtPgog
IDxwYXJhbT4KICAgIDxuYW1lPkRldmljZSBTZWxlY3Q8L25hbWU+CiAgICA8a2V5PmRldmljZV9p
bmRleDwva2V5PgogICAgPHZhbHVlPi0xPC92YWx1ZT4KICAgIDx0eXBlPmludDwvdHlwZT4KICAg
IDxoaWRlPiNpZiBpbnQoJGRldmljZV9pbmRleCgpKSAmbHQ7IDAgdGhlbiAncGFydCcgZWxzZSAn
bm9uZScjPC9oaWRlPgogICAgPHRhYj5SRk5vQyBDb25maWc8L3RhYj4KICA8L3BhcmFtPgoKICA8
cGFyYW0+CiAgICA8bmFtZT5GUEdBIE1vZHVsZSBOYW1lPC9uYW1lPgogICAgPGtleT5mcGdhX21v
ZHVsZV9uYW1lPC9rZXk+CiAgICA8dmFsdWU+bm9jX2Jsb2NrX2FkZDwvdmFsdWU+CiAgICA8dHlw
ZT5zdHJpbmc8L3R5cGU+CiAgICA8aGlkZT5hbGw8L2hpZGU+CiAgICA8dGFiPlJGTm9DIENvbmZp
ZzwvdGFiPgogIDwvcGFyYW0+CgogIDxzaW5rPgogICAgPG5hbWU+aW48L25hbWU+CiAgICA8dHlw
ZT5jb21wbGV4PC90eXBlPgogICAgPGRvbWFpbj5yZm5vYzwvZG9tYWluPgogICAgPG5wb3J0cz4y
PC9ucG9ydHM+CiAgPC9zaW5rPgoKICA8c291cmNlPgogICAgPG5hbWU+c3VtPC9uYW1lPgogICAg
PHR5cGU+Y29tcGxleDwvdHlwZT4KICAgIDxkb21haW4+cmZub2M8L2RvbWFpbj4KICA8L3NvdXJj
ZT4KPC9ibG9jaz4K
--0000000000001775050592275596
Content-Type: text/xml; charset="US-ASCII"; name="add.xml"
Content-Disposition: attachment; filename="add.xml"
Content-Transfer-Encoding: base64
Content-ID: <f_k0d1vqf11>
X-Attachment-Id: f_k0d1vqf11

PCEtLVRoaXMgZGVmaW5lcyBvbmUgTm9DLUJsb2NrLi0tPgo8bm9jYmxvY2s+CiAgPCEtLVRoZSBB
ZGRlciAmIFN1YnRyYWN0b3IgdGFrZXMgaW5wdXRzIGZyb20gQmxvY2sgUG9ydHMgMCAmIDEgYW5k
LS0+CiAgPCEtLW91dHB1dHMgdGhlIGFkZGl0aW9uIC8gc3VidHJhY3Rpb24gb2YgdGhlIHZhbHVl
cyBvbiBCbG9jayBQb3J0cyAwICYgMS4tLT4KICA8IS0tLSBCbG9jayBQb3J0IDAgKyBCbG9jayBQ
b3J0IDEgPT4gQmxvY2sgUG9ydCAwLS0+CiAgPCEtLS0gQmxvY2sgUG9ydCAwIC0gQmxvY2sgUG9y
dCAxID0+IEJsb2NrIFBvcnQgMS0tPgogIDxuYW1lPkFkZGVyPC9uYW1lPgogIDxibG9ja25hbWU+
QWRkPC9ibG9ja25hbWU+CiAgPGlkcz4KICAgIDxpZCByZXZpc2lvbj0iMCI+QUREMTwvaWQ+CiAg
PC9pZHM+CiAgPCEtLU9yZGVyIG1hdHRlcnMuIFRoZSBmaXJzdCBsaXN0ZWQgcG9ydCBpcyBwb3J0
IDAsIGV0Yy4tLT4KICA8cG9ydHM+CiAgICA8c2luaz4KICAgICAgPG5hbWU+aW4wPC9uYW1lPgog
ICAgICA8dHlwZT5zYzE2PC90eXBlPgogICAgICA8cG9ydD4wPC9wb3J0PgogICAgPC9zaW5rPgog
ICAgPHNpbms+CiAgICAgIDxuYW1lPmluMTwvbmFtZT4KICAgICAgPHR5cGU+c2MxNjwvdHlwZT4K
ICAgICAgPHBvcnQ+MTwvcG9ydD4KICAgIDwvc2luaz4KICAgIDxzb3VyY2U+CiAgICAgIDxuYW1l
PnN1bTwvbmFtZT4KICAgICAgPHR5cGU+c2MxNjwvdHlwZT4KICAgIDwvc291cmNlPgogIDwvcG9y
dHM+CiAgPCEtLTxjb21wb25lbnRzPi0tPgogICAgPCEtLTxjb21wb25lbnQ+LS0+CiAgICAgIDwh
LS08a2V5IHJldmlzaW9uPSIxIj5ub2NzaGVsbDwva2V5Pi0tPgogICAgPCEtLTwvY29tcG9uZW50
Pi0tPgogICAgPCEtLTxjb21wb25lbnQgc3JiYXNlPSIwIj4tLT4KICAgICAgPCEtLVs+V2lsbCBs
b29rIGZvciBhIGNvbXBvbmVudCB3aXRoIHRoaXMga2V5OjxdLS0+CiAgICAgIDwhLS08a2V5IHJl
dmlzaW9uPSIxIj5jb21wb25lbnRuYW1lPC9rZXk+LS0+CiAgICA8IS0tPC9jb21wb25lbnQ+LS0+
CiAgPCEtLTwvY29tcG9uZW50cz4tLT4KICA8IS0tPGNvbm5lY3Rpb24+LS0+CiAgICA8IS0tPHNv
dXJjZSBwb3J0PSIwIj5ub2NzaGVsbDwvc291cmNlPi0tPgogICAgPCEtLTxzaW5rIHBvcnQ9IjAi
PmNvbXBvbmVudG5hbWU8L3Npbms+LS0+CiAgPCEtLTwvY29ubmVjdGlvbj4tLT4KICA8IS0tPGNv
bm5lY3Rpb24+LS0+CiAgICA8IS0tPHNvdXJjZSBwb3J0PSIwIj5jb21wb25lbnRuYW1lPC9zb3Vy
Y2U+LS0+CiAgICA8IS0tPHNpbmsgcG9ydD0iMCI+bm9jc2hlbGw8L3Npbms+LS0+CiAgPCEtLTwv
Y29ubmVjdGlvbj4tLT4KPC9ub2NibG9jaz4K
--0000000000001775050592275596
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--0000000000001775050592275596--

