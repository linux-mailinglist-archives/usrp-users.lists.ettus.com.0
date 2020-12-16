Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9796F2DC8FF
	for <lists+usrp-users@lfdr.de>; Wed, 16 Dec 2020 23:34:13 +0100 (CET)
Received: from [::1] (port=54166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kpfN3-00013x-84; Wed, 16 Dec 2020 17:34:09 -0500
Received: from mail-oi1-f182.google.com ([209.85.167.182]:46214)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kpfMy-0000uJ-OP
 for usrp-users@lists.ettus.com; Wed, 16 Dec 2020 17:34:04 -0500
Received: by mail-oi1-f182.google.com with SMTP id q205so16947377oig.13
 for <usrp-users@lists.ettus.com>; Wed, 16 Dec 2020 14:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GyufWtxO6Z+Fecap8SsGE6osQAIwArbnyQJYfEtLkKk=;
 b=UkzUTSPJa502dwXghEmp/LKa7XEaSOLNHt444a0df63ybKtYOxaY7slWu09K6/POjn
 7EaIYVhbOPAMsaxqE/6MaiM4Fs5pJiv/Pc2dUYlm+9yFfrEBbzMGKfQ5bnU7wGF1aCzX
 J315tK8f/ac05OsMnM8NQXnSwb9mnjcj9xrTs75bOgyQceyQJAjPcniFEW4KtIphN7l5
 aL1tj1d4qVO3zZH6A3YQN7TzIPqHnSZtyxW5aAz0Uwm8UTNJjQZNKuEK9XzAu4GELbyk
 u82Bj947/GK41CCUeWWJBYXtNBXi0Xj9irmwMtCeUlTmbhrp+RNwdkRAOOzm77BL0M7e
 /IGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GyufWtxO6Z+Fecap8SsGE6osQAIwArbnyQJYfEtLkKk=;
 b=nYo7ZzZnn0+nFNb/l4qjEf6twglCeMxdSyGXh6xrDSesmwPwuNntFBKMJz7g8ECDHW
 ED/sj19Am34PeZEUpiui4VwanZMKrsh8/8DmP7NHK/RKFnUl0CMFAsDvrBmxuQO7w7rU
 xAl8ly5xOVAYWUkdyfSKx9H7Vr4ZlYLc8AcEmE6PHPNMSucP/nzhcEmNnMh+2or7Ri1M
 brFvazr7Te+62A214Rg8oiV041NGWDdtvzrLtGnVw2kE25xKwzEpfFptZhkzpw7iCubH
 KWWCl1K+BI0DJ3RkM+BbPXXOyxQnoz7GHoseCq0+1UfHk7dpNGJPUDk2x2R6a+4tGObd
 eUyg==
X-Gm-Message-State: AOAM530k00G5SCYjffVoWjmIl/hGiE+RipTpqqCNJBDK4SdUXUgf7fSw
 mCpX0lG2LqkxCZkYRFwVsM/qlguYBfHebiGL2TEZvuJY
X-Google-Smtp-Source: ABdhPJzBGT7C2HjhrqeHsLI8VaMdUYgBR1g8xn2gRwi9yASdqI2JotSzUL/cp98Xf6L0StUJueJnxh1TLhk9WnwWfjk=
X-Received: by 2002:aca:2418:: with SMTP id n24mr3059769oic.62.1608158003931; 
 Wed, 16 Dec 2020 14:33:23 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQa8v40-nQGCQMcK36317oWxue448NrMoMYvbf3oacmug@mail.gmail.com>
 <CAFche=htoRKHMituvggWa15UwoiVkdR6n=3EXYK6d5TR696SiQ@mail.gmail.com>
 <CAB__hTTd6++q8K6xOtHhpJv905CW1wp4E5YpUR0mM5yULUf44Q@mail.gmail.com>
 <CAB__hTRBNRoGu+yYjGMawb1ongZ5u0G4HyafJUOuCA5637ysgA@mail.gmail.com>
 <CAB__hTQX+URNC-_qno0jStxo0qm8YtUWas0MffMebtd6TzfTNQ@mail.gmail.com>
 <CAB__hTSpKwx7JSoWCExtqThW+qGSi919KTTm1TNWN6KU4HkQig@mail.gmail.com>
 <CAFche=iE+RoE6Wi7vWHB73z48HF36SBeK0mqQQDeC=ujhX4d=w@mail.gmail.com>
 <CAB__hTTRaGEnBDHrj3eJ3sHEqPPSbJ0G1aL7xQF2HLUS+z8Mvg@mail.gmail.com>
 <CAFche=hOXCneyetJHN6kBqJ9C44g3UWiKeqeCeW1wez2214NsQ@mail.gmail.com>
In-Reply-To: <CAFche=hOXCneyetJHN6kBqJ9C44g3UWiKeqeCeW1wez2214NsQ@mail.gmail.com>
Date: Wed, 16 Dec 2020 16:33:13 -0600
Message-ID: <CAFche=jfksHjme=MEtTou4cNWOzToudHqZH1TSWOr1xCWTfV3w@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC 4.0 data swapping?
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============5016847642337648746=="
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

--===============5016847642337648746==
Content-Type: multipart/alternative; boundary="00000000000091471b05b69c7661"

--00000000000091471b05b69c7661
Content-Type: text/plain; charset="UTF-8"

Rob,

I think I found the source of the IQ swap issue you observed. This fixes it
for me:

diff --git a/host/lib/rfnoc/mgmt_portal.cpp b/host/lib/rfnoc/mgmt_portal.cpp
index a54efaaf7..7b09c540b 100644
--- a/host/lib/rfnoc/mgmt_portal.cpp
+++ b/host/lib/rfnoc/mgmt_portal.cpp
@@ -617,6 +617,24 @@ public:
             _send_recv_mgmt_transaction(xport, cfg_xact);
         }

+        // Build a management transaction to configure the destination node
+        {
+            mgmt_payload cfg_xact;
+            cfg_xact.set_header(my_epid, _protover, _chdr_w);
+            _traverse_to_node(cfg_xact, dst_node_addr);
+            mgmt_hop_t cfg_hop;
+            // Configure buffer types
+            cfg_hop.add_op(mgmt_op_t(mgmt_op_t::MGMT_OP_CFG_WR_REQ,
+                mgmt_op_t::cfg_payload(REG_ISTRM_CTRL_STATUS,
+                    BUILD_CTRL_STATUS_WORD(false, false, BUFF_U64,
BUFF_U64, false))));
+            // Return the packet back to us
+            cfg_hop.add_op(mgmt_op_t(mgmt_op_t::MGMT_OP_RETURN));
+            // Send the transaction and receive a response.
+            // We don't care about the contents of the response.
+            cfg_xact.add_hop(cfg_hop);
+            _send_recv_mgmt_transaction(xport, cfg_xact);
+        }
+
         // Wait for stream configuration to finish on the HW side
         _validate_stream_setup(xport, src_node_addr, timeout);

Thanks,

Wade

On Mon, Dec 14, 2020 at 8:32 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Rob,
>
> I was able to reproduce the issue, so I'll see if I can get to the bottom
> of it. I'm glad you're able to work around it for now. Thanks for letting
> us know about it!
>
> Wade
>
> On Mon, Dec 14, 2020 at 8:59 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Wade,
>> I tried the command to re-load the FPGA, but I couldn't communicate with
>> UHD nicely until I also added the command "systemctl restart ursp-uhd".  I
>> am now able to reset the N310 to proper behavior when it gets in this state.
>>
>> Regarding this issue of real/imag swapping, do you want me to create a
>> support request through support@ettus.com?  Also, do you need me to
>> provide any more info or an example program / FPGA image?  Note that now
>> that I know how to duplicate the issue, I believe I also know how to avoid
>> it. So, it is probably not a critical issue for me presently.
>>
>> Rob
>>
>> On Sat, Dec 12, 2020 at 9:47 AM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> Thanks for the updates. If you just want to reload the FPGA, try running
>>> "overlay rm n310 && overlay add n310" on the N310. This should simply
>>> reload the FPGA using the bistream already in the flash.
>>>
>>> Wade
>>>
>>> On Fri, Dec 11, 2020 at 6:45 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Wade,
>>>> The following also fails using just 2 blocks and 2 attempts:
>>>>   host_tx => Switchboard#0 => Switchboard#1 => host_rx  // SUCCESS
>>>>   host_tx => Switchboard#1 => Switchboard#0 => host_rx  // FAILURE (RX
>>>> samples equal swapped I/Q of TX samples)
>>>>
>>>> In addition to wanting to get this issue fixed, I also have a question
>>>> about the best way to "reboot" the N310 which is what I need to do to fix
>>>> the issue after it occurs.  One way is to give the "reboot now" linux
>>>> command.  But, this takes a long time.  Another way is to reprogram the
>>>> FPGA image via uhd_image_loader. This is appreciably faster, but I'm
>>>> thinking that this is not a great idea if the flash memory has a limited
>>>> number of write cycles before failure.  Is there another way to achieve a
>>>> reboot other than these two?
>>>> Rob
>>>>
>>>> On Fri, Dec 11, 2020 at 7:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> AHA!  I duplicated the issue with the Switchboard image.  The way to
>>>>> duplicate the issue is the run the following series of graphs:
>>>>>   host_tx => Switchboard#0 => Switchboard#1 => host_rx  // SUCCESS
>>>>>   host_tx => Switchboard#2 => Switchboard#3 => host_rx  // SUCCESS
>>>>>   host_tx => Switchboard#0 => Switchboard#2 => host_rx  // FAILURE (RX
>>>>> samples equal swapped I/Q of TX samples)
>>>>> Each of these 3 runs consists of running my application (similar to
>>>>> one of the examples such as rfnoc_rx_to_file) such that the UHD object is
>>>>> re-created each time.  My guess is that you could use gnuradio to do it
>>>>> instead.
>>>>>
>>>>> My working theory is that the problem is caused by the fact that the
>>>>> Switchboard#2 input port was changed from being connected to the host in
>>>>> test case 2 to then be connected to another RFNoC block in test case 3.
>>>>> Or, I suppose it could be the output port on this block (same logic).
>>>>>
>>>>> If you want me to send you my FPGA image with the 4 Switchboard
>>>>> blocks, let me know.
>>>>> Rob
>>>>>
>>>>>
>>>>>
>>>>> On Fri, Dec 11, 2020 at 7:09 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>
>>>>>> Hi Wade,
>>>>>> After thinking about it a bit, I would ignore the "negation" issue
>>>>>> for now. This may be a byproduct of I/Q swapping related to my custom block.
>>>>>> Rob
>>>>>>
>>>>>> On Fri, Dec 11, 2020 at 6:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>>
>>>>>>> Hi Wade,
>>>>>>> Thanks for the info.  I still do not know what's going on, but here
>>>>>>> are a few updates:
>>>>>>>
>>>>>>>    - I built a new N310 image with 4 switchboards (1x1) and 1
>>>>>>>    splitstream (1x2) blocks in addition to the default blocks.  All of the
>>>>>>>    additional blocks are connected to SEPs for dynamic linking.  I tried my
>>>>>>>    best to get bad behavior using a chain of 1 to 4 switchboards, but I could
>>>>>>>    not duplicate any I/Q swapping or negation issues.
>>>>>>>    - I went back to my custom image (that I described below) and
>>>>>>>    found different behavior today (sometimes things worked OK).  So, this got
>>>>>>>    me to thinking that I am somehow getting the FPGA in a bad state such that
>>>>>>>    a reboot (or FPGA re-flashing) fixes things.  I have had some success with
>>>>>>>    re-booting and things working properly.  But, I still do not have a true
>>>>>>>    handle on things and cannot adequately predict when things are going to
>>>>>>>    succeed or fail.
>>>>>>>    - One thing that has been constant is that I have never seen bad
>>>>>>>    behavior when I only have 1 block in my graph (no matter which block I
>>>>>>>    choose).  Note that for all of my tests, the graph looks like this: host_tx
>>>>>>>    => block_chain => host_rx, where block_chain is a sequential chain of 1 or
>>>>>>>    more rfnoc blocks.
>>>>>>>
>>>>>>> I will send a follow up once I figure things out.
>>>>>>> Rob
>>>>>>>
>>>>>>>
>>>>>>> On Fri, Dec 11, 2020 at 6:22 PM Wade Fife <wade.fife@ettus.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi Rob,
>>>>>>>>
>>>>>>>> The SEPs do have the ability to swap I and Q. This is because on
>>>>>>>> the host computer, I is usually in the lower bits and Q is in the upper
>>>>>>>> bits of each 32-bit word, but in RFNoC, for historical reasons, I goes in
>>>>>>>> the upper bits and Q in the lower bits. The software programs the IQ
>>>>>>>> swapping when it sets up the graph.
>>>>>>>>
>>>>>>>> I assume you're using dynamic connections (through the crossbar) to
>>>>>>>> control the number of FFTs the data is passed through, and not static
>>>>>>>> connections? If that's the case then I wonder if software configures IQ
>>>>>>>> swapping incorrectly in some configurations. I'll see if I can do some
>>>>>>>> testing next week to confirm if it's working correctly.
>>>>>>>>
>>>>>>>> As for negation, I'm not aware of anywhere we do that off the top
>>>>>>>> of my head. Is that behavior block dependent? I'll see if I can find
>>>>>>>> anywhere this happens.
>>>>>>>>
>>>>>>>> Thanks,
>>>>>>>>
>>>>>>>> Wade
>>>>>>>>
>>>>>>>> On Thu, Dec 10, 2020 at 3:54 PM Rob Kossler via USRP-users <
>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>
>>>>>>>>> Hi,
>>>>>>>>> I am encountering very strange behavior with a custom FPGA image
>>>>>>>>> (N310). It appears that data streaming through SEPs can get swapped (I/Q)
>>>>>>>>> and/or negated.  Is anyone at Ettus aware of anything that could cause
>>>>>>>>> this?  Of course, the issue might be on my end, but I can't think of what
>>>>>>>>> it might be given that all of my custom blocks work as expected in
>>>>>>>>> isolation (if the block is the only block in graph).
>>>>>>>>>
>>>>>>>>> My custom image is the following:
>>>>>>>>>
>>>>>>>>>    - default blocks of Radios, DDCs, DUCs (each 2x2 and
>>>>>>>>>    statically connected as in default image)
>>>>>>>>>    - custom blocks of two 1x1 windowed-fft blocks, two 1x1
>>>>>>>>>    vector-avg blocks, and one 2x2 custom block. Note: each of these blocks is
>>>>>>>>>    connected to its own SEP, so I can connect dynamically in any fashion.
>>>>>>>>>
>>>>>>>>> My test case is transmitting 8192 random samples from host to FFT
>>>>>>>>> block and then optionally through a 2nd FFT block before back to host.  In
>>>>>>>>> the test case, the radios/DDCs/DUCs are not used.
>>>>>>>>>
>>>>>>>>> Here is what I observed:
>>>>>>>>>
>>>>>>>>>    - If I only include 1 FFT block in my RFNoC graph, I get the
>>>>>>>>>    expected results (the output from the FPGA matches what I calculate in
>>>>>>>>>    Matlab for the FFT).  This is true for either of the two FFT blocks.
>>>>>>>>>    - If I include both FFT blocks in series, I can only match the
>>>>>>>>>    FPGA output if I swap the I/Q values in between my Matlab FFTs.
>>>>>>>>>    - Note: that this issue is not FFT-related as I can also
>>>>>>>>>    duplicate this issue with the other blocks.
>>>>>>>>>    - If I use 3 blocks in series (each through SEP), I need to
>>>>>>>>>    negate certain data in order to get it to match the FPGA output
>>>>>>>>>
>>>>>>>>> My next step is likely to build a new image with Ettus-developed
>>>>>>>>> FIFOs to prove that the data is getting swapped/negated when 2 or more are
>>>>>>>>> used in series through SEPs.
>>>>>>>>>
>>>>>>>>> Let me know if you have any suggestions for other things to try.
>>>>>>>>>
>>>>>>>>> Rob
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list
>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>>
>>>>>>>>

--00000000000091471b05b69c7661
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Rob,</div><div><br></div><div>I think I found the sou=
rce of the IQ swap issue you observed. This fixes it for me:<br></div><div>=
<br></div><div>diff --git a/host/lib/rfnoc/mgmt_portal.cpp b/host/lib/rfnoc=
/mgmt_portal.cpp<br>index a54efaaf7..7b09c540b 100644<br>--- a/host/lib/rfn=
oc/mgmt_portal.cpp<br>+++ b/host/lib/rfnoc/mgmt_portal.cpp<br>@@ -617,6 +61=
7,24 @@ public:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_send_re=
cv_mgmt_transaction(xport, cfg_xact);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
}<br><br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0// Build a management transaction to =
configure the destination node<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mgmt_payload cfg_xact;<br>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cfg_xact.set_header(my_epid, _protover, _=
chdr_w);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_traverse_to_node(cf=
g_xact, dst_node_addr);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mgmt_=
hop_t cfg_hop;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0// Configure b=
uffer types<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cfg_hop.add_op(mg=
mt_op_t(mgmt_op_t::MGMT_OP_CFG_WR_REQ,<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0mgmt_op_t::cfg_payload(REG_ISTRM_CTRL_STATUS,<br>+ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BUILD_=
CTRL_STATUS_WORD(false, false, BUFF_U64, BUFF_U64, false))));<br>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0// Return the packet back to us<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cfg_hop.add_op(mgmt_op_t(mgmt_op_t::M=
GMT_OP_RETURN));<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0// Send the =
transaction and receive a response.<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0// We don&#39;t care about the contents of the response.<br>+ =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cfg_xact.add_hop(cfg_hop);<br>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_send_recv_mgmt_transaction(xport, cfg_xa=
ct);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>+<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0// Wait for stream configuration to finish on the HW side<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0_validate_stream_setup(xport, src_node_addr, tim=
eout);</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Dec 14, 2020 at 8:32 PM Wade Fife &lt;<a href=3D"mailto:wade.fi=
fe@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><b=
r></div><div>I was able to reproduce the issue, so I&#39;ll see if I can ge=
t to the bottom of it. I&#39;m glad you&#39;re able to work around it for n=
ow. Thanks for letting us know about it!</div><div><br></div><div>Wade<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Dec 14, 2020 at 8:59 AM Rob Kossler &lt;<a href=3D"mailto:rkos=
sler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Wade,<div=
>I tried the command=C2=A0to re-load the FPGA,=C2=A0but I couldn&#39;t comm=
unicate with UHD nicely until I also added the command &quot;systemctl rest=
art ursp-uhd&quot;.=C2=A0 I am now able to reset the N310 to proper behavio=
r when it gets in this state.<div><br></div><div>Regarding this issue of re=
al/imag swapping, do you want me to create a support request through <a hre=
f=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a>?=C2=
=A0 Also, do you need me to provide any more info or an example program / F=
PGA image?=C2=A0

Note that now that I know how to duplicate the issue, I believe I also know=
 how to avoid it. So, it is probably not a critical=C2=A0issue for me prese=
ntly.

</div></div><div><br></div><div>Rob</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Dec 12, 2020 at 9:47 AM Wa=
de Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.f=
ife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>Thanks for the updates. If you just want=
 to reload the FPGA, try running &quot;overlay rm n310 &amp;&amp; overlay a=
dd n310&quot; on the N310. This should simply reload the FPGA using the bis=
tream already in the flash. <br></div><div><br></div><div>Wade<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Fri, Dec 11, 2020 at 6:45 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.=
edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Wade,</div><div=
>The following also fails using just 2 blocks and 2 attempts:</div><div><di=
v>=C2=A0 host_tx =3D&gt; Switchboard#0 =3D&gt; Switchboard#1 =3D&gt; host_r=
x=C2=A0 // SUCCESS</div><div></div></div><div><div>=C2=A0 host_tx =3D&gt; S=
witchboard#1 =3D&gt; Switchboard#0 =3D&gt; host_rx=C2=A0 // FAILURE (RX sam=
ples equal swapped I/Q of TX samples)</div><div><br></div><div>In addition =
to wanting to get this issue fixed, I also have a question about the best w=
ay to &quot;reboot&quot; the N310 which is what I need to do to fix the iss=
ue after it occurs.=C2=A0 One way is to give the &quot;reboot now&quot; lin=
ux command.=C2=A0 But, this takes a long time.=C2=A0 Another way is to repr=
ogram the FPGA image via uhd_image_loader. This is appreciably faster, but =
I&#39;m thinking that this is not a great idea if the flash memory has a li=
mited number of write cycles before failure.=C2=A0 Is there another way to =
achieve a reboot other than these two?</div><div>Rob</div><div><br></div><d=
iv></div></div><div></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Dec 11, 2020 at 7:34 PM Rob Kossler &lt;<a href=3D"=
mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">A=
HA!=C2=A0 I duplicated the issue with the Switchboard image.=C2=A0 The way =
to duplicate the issue is the run the following series of graphs:<div>=C2=
=A0 host_tx =3D&gt; Switchboard#0 =3D&gt; Switchboard#1 =3D&gt; host_rx=C2=
=A0 // SUCCESS</div><div>=C2=A0 host_tx =3D&gt; Switchboard#2 =3D&gt; Switc=
hboard#3 =3D&gt; host_rx=C2=A0 // SUCCESS</div><div></div><div>=C2=A0 host_=
tx =3D&gt; Switchboard#0 =3D&gt; Switchboard#2 =3D&gt; host_rx=C2=A0 // FAI=
LURE (RX samples equal swapped I/Q of TX samples)</div><div>Each of these 3=
 runs consists of running my application (similar to one of the examples su=
ch as rfnoc_rx_to_file) such that the UHD object is re-created each time.=
=C2=A0 My guess is that you could use gnuradio to do it instead.</div><div>=
<br></div><div>My working theory is that the problem is caused by the fact =
that the Switchboard#2 input port was changed from being connected to the h=
ost in test case 2 to then be connected to another RFNoC block in test case=
 3.=C2=A0 Or, I suppose it could be the output port on this block (same log=
ic).</div><div><br></div><div>If you want me to send you my FPGA image with=
 the 4 Switchboard blocks, let me know.</div><div>Rob</div><div><br></div><=
div></div><div>=C2=A0=C2=A0</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 11, 2020 at 7:09 PM Rob Kossle=
r &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Hi Wade,<div>After thinking about it a bit, I would ignore =
the &quot;negation&quot; issue for now. This may be a byproduct of I/Q swap=
ping related to my custom block.</div><div>Rob</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 11, 2020 at=
 6:34 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blan=
k">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr">Hi Wade,<div>Thanks for the info.=C2=A0 =
I still do not know what&#39;s going on, but here are a few updates:</div><=
div><ul><li>I built a new N310 image with 4 switchboards (1x1) and 1 splits=
tream=C2=A0(1x2) blocks in addition to the default blocks.=C2=A0 All of the=
 additional blocks are connected to SEPs for dynamic linking.=C2=A0 I tried=
 my best to get bad behavior using a chain of 1 to 4 switchboards, but I co=
uld not duplicate any I/Q swapping or negation issues.=C2=A0</li><li>I went=
 back to my custom image (that I described below) and found different behav=
ior today (sometimes things worked OK).=C2=A0 So, this got me to thinking t=
hat I am somehow getting the FPGA in a bad state such that a reboot (or FPG=
A re-flashing) fixes things.=C2=A0 I have had some success with re-booting =
and things working properly.=C2=A0 But, I still do not have a true handle o=
n things and cannot adequately predict when things are going to succeed or =
fail.</li><li>One thing that has been constant is that I have never seen ba=
d behavior when I only have 1 block in my graph (no matter which block I ch=
oose).=C2=A0 Note that for all of my tests, the graph looks like this: host=
_tx =3D&gt; block_chain =3D&gt; host_rx, where block_chain is a sequential =
chain of 1 or more rfnoc blocks.</li></ul><div>I will send a follow up once=
 I figure things out.</div><div>Rob</div></div><div><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 1=
1, 2020 at 6:22 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" tar=
get=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><=
br></div><div>The SEPs do have the ability to swap I and Q. This is because=
 on the host computer, I is usually in the lower bits and Q is in the upper=
 bits of each 32-bit word, but in RFNoC, for historical reasons, I goes in =
the upper bits and Q in the lower bits. The software programs the IQ swappi=
ng when it sets up the graph. </div><div><br></div><div>I assume you&#39;re=
 using dynamic connections (through the crossbar) to control the number of =
FFTs the data is passed through, and not static connections? If that&#39;s =
the case then=20
I wonder if software configures IQ swapping incorrectly in some configurati=
ons.

I&#39;ll see if I can do some testing next week to confirm if it&#39;s work=
ing correctly.</div><div><br></div><div>As for negation, I&#39;m not aware =
of anywhere we do that off the top of my head. Is that behavior block depen=
dent? I&#39;ll see if I can find anywhere this happens.</div><div><br></div=
><div>Thanks,</div><div><br></div><div>Wade=C2=A0 <br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 10,=
 2020 at 3:54 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Hi,<br><div>I am encountering very strange behavior with a custom FPGA=
 image (N310). It appears that data streaming through SEPs can get swapped =
(I/Q) and/or negated.=C2=A0=C2=A0Is anyone at Ettus aware of=C2=A0anything =
that could cause this?=C2=A0 Of course, the issue might be on my end, but I=
 can&#39;t think of what it might be given that all of my custom blocks wor=
k as expected in isolation (if the block is the only block in graph).</div>=
<div><br></div><div>My custom image is the following:</div><div><ul><li>def=
ault blocks of Radios, DDCs, DUCs (each 2x2 and statically connected as in =
default image)</li><li>custom blocks of=C2=A0two 1x1 windowed-fft blocks, t=
wo 1x1 vector-avg blocks, and one 2x2 custom block. Note: each of these blo=
cks is connected to its own SEP, so I can connect dynamically in any fashio=
n.</li></ul><div>My test case is transmitting 8192 random samples from host=
 to FFT block and then optionally through a 2nd FFT block before back to ho=
st.=C2=A0 In the test case, the radios/DDCs/DUCs are not used.</div><div><b=
r></div>Here is what I observed:<br><ul><li>If I only include 1 FFT block i=
n my RFNoC graph, I get the expected results (the output from the FPGA matc=
hes what I calculate in Matlab for the FFT).=C2=A0 This is true for either =
of the two FFT blocks.</li><li>If I include both FFT blocks in series, I ca=
n only match the FPGA output if I swap the I/Q values in between my Matlab =
FFTs.</li><li>Note: that this issue is not FFT-related as I can also duplic=
ate this issue with the other blocks.=C2=A0</li><li>If I use 3 blocks in se=
ries (each through SEP), I need to negate certain data in order to get it t=
o match the FPGA output</li></ul><div>My next step is likely to build a new=
 image with Ettus-developed FIFOs to prove that the data is getting swapped=
/negated when 2 or more are used in series through SEPs.</div></div><div><b=
r></div><div>Let me know if you have any suggestions for other things to tr=
y.<br></div><div><br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000091471b05b69c7661--


--===============5016847642337648746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5016847642337648746==--

