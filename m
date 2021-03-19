Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A58A03423AB
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 18:50:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B968383707
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 13:50:43 -0400 (EDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 2BE3B3836B5
	for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 13:50:33 -0400 (EDT)
Received: by mail-lj1-f177.google.com with SMTP id z25so13009898lja.3
        for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 10:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lmarlow-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=r+xQTDWtApuiDN9iFTCekG4dQAQC/+mud1GS3alsoP8=;
        b=fb2nwJ1g8nO4ZbcZ9KXVduZI0SCA6SgLmzrwioYmtQ9j83EU5PCvOItyWqPFVHLd+M
         vqRkrmWqoXSXoYHVRgQfFspwOZtqu7R871O1dCxBhqroiFe0sTR8+fjEyFO6E5bf1o+4
         ocV4nAV2wdcaY5fwfim8AirOZIiS9Epwd9wXLsXUbkU7I7+hUSM2XLe4RrQLIpxTPZko
         dQgVg5VeIrURuroNbfsc2je8MIkdZa0W8nNpLhyBcvVa1SZrq54ZsbRUnhKP/l+i2HRY
         9RW/e9T95rM+powoXN/a3lIXOxJhoRFrX5Y5kmbGEBS0zVz651r0/4VEsrZ/PXE5J8JM
         NleA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=r+xQTDWtApuiDN9iFTCekG4dQAQC/+mud1GS3alsoP8=;
        b=A7+0ILppzyXf4+yPWK4aHS+JLajIJC4zzci0a4XE1xa5LGtsMjEfEkLVIZYbyNit6E
         MO9HoPdkHKtCUvEVU6xJDEHVNv4/iO78UQ55SEpXLsCKYnhAc5h5KqkJsAiINr39W7RK
         tE4yNzyOlUYNZ552cRdrEwmdacEMa8fOE08+kbgydsoDoEa8n8OnwIgxpxn3MOX/8UCY
         aoQZ+08HjZo49rvSAlXuslVxyfKoHz3Far/iJ7R280wWnPn2s2zrefyeNB+KuY7Ybppf
         93wbZfnueanpVF1hR0IPbzRfsA3H8LeDc1Q64XgNidkXyaFL8ZFoGDiASV3I4/RT41Ka
         cjvA==
X-Gm-Message-State: AOAM531XE+btv2pp8IvXXNUzyCbWtPGdo3YwzrPnzQk1WrtSlu7bbdzN
	9kXKcrt+bkaAoh34gztDXx3hPR8qX/lJrl+fEPSyEla8NJhiYiQ=
X-Google-Smtp-Source: ABdhPJzz87+J8OLnhoFuX/7M9ekrx0LbU37oobjbhwH9omIWQaCcuzcFEjfI47LEDK3hOT8f+bBOMluHnHSlqIxMhh4=
X-Received: by 2002:a2e:140e:: with SMTP id u14mr1607269ljd.413.1616176232275;
 Fri, 19 Mar 2021 10:50:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAOHuk9D5U97rJmO1ExSnwz4d=f4ya4uusyi68E1yT7ii0F+UBw@mail.gmail.com>
 <CAFOi1A7N-fP6K+ai4qrJOT7tnOuQ5D_pd3n8WoXcH00pQUoG8A@mail.gmail.com>
In-Reply-To: <CAFOi1A7N-fP6K+ai4qrJOT7tnOuQ5D_pd3n8WoXcH00pQUoG8A@mail.gmail.com>
From: Ryan Marlow <ryan@lmarlow.com>
Date: Fri, 19 Mar 2021 13:50:21 -0400
Message-ID: <CAOHuk9Czc17=MB1KJX4rF2ok6zJjMzNqVGAB5170A0TMNFauCA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: RQFZTWJJWA44YEOV72YVMQTNQRSSHGPU
X-Message-ID-Hash: RQFZTWJJWA44YEOV72YVMQTNQRSSHGPU
X-MailFrom: ryan@lmarlow.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N3xx internal ethernet interface
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RQFZTWJJWA44YEOV72YVMQTNQRSSHGPU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0468516663043382206=="

--===============0468516663043382206==
Content-Type: multipart/alternative; boundary="0000000000003832e505bde75afe"

--0000000000003832e505bde75afe
Content-Type: text/plain; charset="UTF-8"

Related to my previous inquiry so continuing this thread...
Trying to get UHD to find the CHDR endpoint at the internal_eth core and
thinking I understand how UHD 4.0 works but struggling to see what's going
wrong. I remember encountering this situation in past N3xx experience but
can't remember exactly how it was resolved and that was years ago (pre UHD
4.0)
I have UHD installed on the N3xx itself.  Running into a roadblock on my
setup. The end result error is the following:

>
> *[ERROR] [RFNOC::GRAPH] Error during initialization of block
> 0/Radio#0![ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RfnocError: OpTimeout: Control operation timed out waiting for ACK*
>
When I run uhd_find_devices I get the following response:

--------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 31DDAA2
>     claimed: False
>     mgmt_addr: 127.0.0.1
>     product: n310
>     type: n3xx
>
> This indicates UHD connects to the mpm session but not the internal eth
interface right?
If I run uhd_usrp_probe (how I get the error above), I seem to get some
trace messages that indicate the CHDR interface over int0 is getting
established. See snippets below

First I see this trace a few times:

> [TRACE] [MPM.PeriphManager.UDP.UDP] Testing available interfaces out of
> `[]'
> [INFO] [MPM.PeriphManager.UDP.UDP] No CHDR interfaces found!
>
But then shortly after I see this:

> [TRACE] [RFNOC::GRAPH] Initializing MB controllers...
> [TRACE] [RFNOC::GRAPH] Initializing GSM...
> [TRACE] [RFNOC::GRAPH] Creating packet factory with CHDR width 64 bits and
> endianness LITTLE
> [TRACE] [RFNOC::GRAPH] Found a total of 1 links.
> [TRACE] [UDP] Created UDP link to 169.254.0.2:49153
> [TRACE] [UDP] Local UDP socket endpoint: 169.254.0.1:59692
>
[TRACE] [UDP] Target/actual recv sock buff size: 2500000/2500000 bytes
> [TRACE] [UDP] Target/actual send sock buff size: 2500000/2500000 bytes
> [DEBUG] [RFNOC::MGMT] Starting topology discovery from device:2/sep:1
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/xport:0
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/xport:0
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/xbar:0
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/xbar:0
> [TRACE] [RFNOC::MGMT] * device:1/xbar:0 has 3 ports, 1 transports and we
> are hooked up on port 0
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:0
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:0
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:1
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:1
> [DEBUG] [RFNOC::MGMT] The following endpoints are reachable from
> device:2/sep:1
> [DEBUG] [RFNOC::MGMT] * 1:0
> [DEBUG] [RFNOC::MGMT] * 1:1
> [TRACE] [RFNOC::GRAPH] Initializing blocks for MB 0...
>
>
These messages indicate there are packets going across the CHDR interface
right? I think all that topology stuff is CHDR traffic. I can see on
tcpdump that there's a lot of udp traffic going to/from the 169.254.0.2
fpga IP address.

Even eventually getting to some Radio0 trace msgs:

[TRACE] [RFNOC::GRAPH] Flushing and resetting blocks on mboard 0
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 2 on EPID 1
> [TRACE] [0/Radio#0] Using timebase clock: `radio_clk'. Current frequency:
> 122.88 MHz
> [TRACE] [0/Radio#0] Using ctrlport clock: `bus_clk'. Current frequency:
> 200 MHz
> [DEBUG] [0/Radio#0] Checking compat number for FPGA component `0/Radio#0':
> Expecting 0.0, actual: 0.0.
> [TRACE] [0/Radio#0] Loading radio with SPC=1, num_inputs=2, num_outputs=2
> [TRACE] [0/Radio#0] Sending async messages to EPID 1, remote port 2, xbar
> port 1
> [TRACE] [0/Radio#0] Entering magnesium_radio_control_impl ctor...
>

And this msg that indicates that the int0 interface was identified as a
CHDR interface:

> [TRACE] [MPM.PeriphManager.UDP.UDP] Testing available interfaces out of
>> `['int0']'
>> [DEBUG] [MPM.PeriphManager.UDP.UDP] Found CHDR interfaces: `int0'
>> [DEBUG] [MPM.misc-enet-int-regs] Setting my own IP address to
>> `169.254.0.1'
>> [TRACE] [MPM.lib] [MMAP_REGS_IFACE] [UIO /dev/uio11] Opened
>> mmap_regs_iface
>> [TRACE] [MPM.lib] [MMAP_REGS_IFACE] [UIO /dev/uio11] Closed
>> mmap_regs_iface
>> [TRACE] [MPM.lib] [MMAP_REGS_IFACE] [UIO /dev/uio11] Opened
>> mmap_regs_iface
>> [DEBUG] [MPM.misc-enet-int-regs] Setting internal MAC address to
>> `00:01:02:03:04:05'
>> [TRACE] [MPM.misc-enet-int-regs] Writing to address 0x0010: 0x2030405
>> [TRACE] [MPM.misc-enet-int-regs] Writing to address 0x0014: 0x0001
>> [DEBUG] [MPM.misc-enet-int-regs] Setting internal IP address to
>> `169.254.0.2'
>> [DEBUG] [MPM.misc-enet-int-regs] Setting internal Mode
>>
>
I guess what I'm getting at is what are some of the possible root causes of
this sort of error? Looking for any general advice.
It's worth noting that I removed both SFP connections from the chdr
crossbar. The only interface to the chdr network in my setup is the int0
interface. I'm fairly certain my crossbar and static routing file are
configured correctly, I am working with a topology right now that is
similar to the E310.

Thanks,
Ryan


On Tue, Mar 16, 2021 at 12:54 PM Martin Braun <martin.braun@ettus.com>
wrote:

> You can't ping it using the 'ping' command (as you've probably found out
> yourself). We don't implement this outside of UHD, but UHD sends out
> discovery management packets into that network to see what's on the other
> side (e.g., a crossbar). You could forge one of those and send it in there
> via UHD, but you'd have to figure out the packet format from the RFNoC spec
> and the source code.
>
> --M
>
> On Tue, Mar 16, 2021 at 4:20 PM Ryan Marlow <ryan@lmarlow.com> wrote:
>
>> Hello All,
>> I have kinda an obscure/deep question about the functionality of the
>> internal ethernet interface on the N3xx. It is my understanding that this
>> interface (int0) connects the linux OS on the ARM to the CHDR/RFNoC network
>> on FPGA so you can run UHD on the N3xx ARM itself. To verify the
>> functionality of this interface, can I "ping" the IP address (defaults to
>> 192.168.10.2) of the FPGA side on that interface and expect a response?
>> Using tcpdump, I can see ARP request and replies. Just curious if anyone
>> has suggestions of sanity checks that are simpler than running
>> uhd_find_devices or uhd_usrp_probe to verify the integrity of that
>> interface connection.
>> Thanks,
>> Ryan Marlow
>>
>> --
>> Ryan L. Marlow
>> R L Marlow Consulting LLC
>> rlmarlow.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

-- 
Ryan L. Marlow
R L Marlow Consulting LLC
rlmarlow.com

--0000000000003832e505bde75afe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Related to my previous inquiry so co=
ntinuing this thread...</div><div> Trying to get UHD to find the CHDR endpo=
int at the internal_eth core and thinking I understand how UHD 4.0 works bu=
t struggling to see what&#39;s going wrong. I remember encountering this si=
tuation in past N3xx experience but can&#39;t remember exactly how it was r=
esolved and that was years ago (pre UHD 4.0)<br></div><div>I have UHD insta=
lled on the N3xx itself.=C2=A0 Running into a roadblock on my setup. The en=
d result error is the following:</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div><b>[ERROR] [RFNOC::GRAPH] Error during initialization of =
block 0/Radio#0!<br>[ERROR] [RFNOC::GRAPH] Caught exception while initializ=
ing graph: RfnocError: OpTimeout: Control operation timed out waiting for A=
CK</b><br></div></blockquote><div>When I run uhd_find_devices I get the fol=
lowing response:</div><div><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div>--------------------------------------------------<br>-- U=
HD Device 0<br>--------------------------------------------------<br>Device=
 Address:<br>=C2=A0 =C2=A0 serial: 31DDAA2<br>=C2=A0 =C2=A0 claimed: False<=
br>=C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<br>=C2=A0 =C2=A0 product: n310<br>=C2=
=A0 =C2=A0 type: n3xx<br><br></div></blockquote><div>This indicates UHD con=
nects to the mpm session but not the internal eth interface right?</div><di=
v>If I run uhd_usrp_probe (how I get the error above), I seem to get some t=
race messages that indicate the CHDR interface over int0 is getting establi=
shed. See snippets below</div><div><br></div><div>First I see this trace a =
few times:</div><div></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div>[TRACE] [MPM.PeriphManager.UDP.UDP] Testing available interfaces out=
 of `[]&#39;<br>[INFO] [MPM.PeriphManager.UDP.UDP] No CHDR interfaces found=
!<br></div></blockquote><div>But then shortly after I see this:</div><div><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div>[TRACE] [RFNOC:=
:GRAPH] Initializing MB controllers...<br>[TRACE] [RFNOC::GRAPH] Initializi=
ng GSM...<br>[TRACE] [RFNOC::GRAPH] Creating packet factory with CHDR width=
 64 bits and endianness LITTLE<br>[TRACE] [RFNOC::GRAPH] Found a total of 1=
 links.<br>[TRACE] [UDP] Created UDP link to <a href=3D"http://169.254.0.2:=
49153" target=3D"_blank">169.254.0.2:49153</a><br>[TRACE] [UDP] Local UDP s=
ocket endpoint: <a href=3D"http://169.254.0.1:59692" target=3D"_blank">169.=
254.0.1:59692</a></div></blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div>[TRACE] [UDP] Target/actual recv sock buff size: 2500000/25=
00000 bytes<br>[TRACE] [UDP] Target/actual send sock buff size: 2500000/250=
0000 bytes<br>[DEBUG] [RFNOC::MGMT] Starting topology discovery from device=
:2/sep:1<br>[DEBUG] [RFNOC::MGMT] Discovered node device:1/xport:0<br>[DEBU=
G] [RFNOC::MGMT] Initialized node device:1/xport:0<br>[DEBUG] [RFNOC::MGMT]=
 Discovered node device:1/xbar:0<br>[DEBUG] [RFNOC::MGMT] Initialized node =
device:1/xbar:0<br>[TRACE] [RFNOC::MGMT] * device:1/xbar:0 has 3 ports, 1 t=
ransports and we are hooked up on port 0<br>[DEBUG] [RFNOC::MGMT] Discovere=
d node device:1/sep:0<br>[DEBUG] [RFNOC::MGMT] Initialized node device:1/se=
p:0<br>[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:1<br>[DEBUG] [RFN=
OC::MGMT] Initialized node device:1/sep:1<br>[DEBUG] [RFNOC::MGMT] The foll=
owing endpoints are reachable from device:2/sep:1<br>[DEBUG] [RFNOC::MGMT] =
* 1:0<br>[DEBUG] [RFNOC::MGMT] * 1:1<br>[TRACE] [RFNOC::GRAPH] Initializing=
 blocks for MB 0...<br>=C2=A0</div></blockquote><div>These messages indicat=
e there are packets going across the CHDR interface right? I think all that=
 topology stuff is CHDR traffic. I can see on tcpdump that there&#39;s a lo=
t of udp traffic going to/from the 169.254.0.2 fpga IP address.<br></div><d=
iv><br></div><div>Even eventually getting to some Radio0 trace msgs:</div><=
div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div> [TRAC=
E] [RFNOC::GRAPH] Flushing and resetting blocks on mboard 0<br>[DEBUG] [RFN=
OC] Created ctrlport endpoint for port 2 on EPID 1<br>[TRACE] [0/Radio#0] U=
sing timebase clock: `radio_clk&#39;. Current frequency: 122.88 MHz<br>[TRA=
CE] [0/Radio#0] Using ctrlport clock: `bus_clk&#39;. Current frequency: 200=
 MHz<br>[DEBUG] [0/Radio#0] Checking compat number for FPGA component `0/Ra=
dio#0&#39;: Expecting 0.0, actual: 0.0.<br>[TRACE] [0/Radio#0] Loading radi=
o with SPC=3D1, num_inputs=3D2, num_outputs=3D2<br>[TRACE] [0/Radio#0] Send=
ing async messages to EPID 1, remote port 2, xbar port 1<br>[TRACE] [0/Radi=
o#0] Entering magnesium_radio_control_impl ctor...<br></div></blockquote><d=
iv><br></div><div>And this msg that indicates that the int0 interface was i=
dentified as a CHDR interface:</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>[TRACE] [=
MPM.PeriphManager.UDP.UDP] Testing available interfaces out of `[&#39;int0&=
#39;]&#39;<br>[DEBUG] [MPM.PeriphManager.UDP.UDP] Found CHDR interfaces: `i=
nt0&#39;<br>[DEBUG] [MPM.misc-enet-int-regs] Setting my own IP address to `=
169.254.0.1&#39;<br>[TRACE] [MPM.lib] [MMAP_REGS_IFACE] [UIO /dev/uio11] Op=
ened mmap_regs_iface<br>[TRACE] [MPM.lib] [MMAP_REGS_IFACE] [UIO /dev/uio11=
] Closed mmap_regs_iface<br>[TRACE] [MPM.lib] [MMAP_REGS_IFACE] [UIO /dev/u=
io11] Opened mmap_regs_iface<br>[DEBUG] [MPM.misc-enet-int-regs] Setting in=
ternal MAC address to `00:01:02:03:04:05&#39;<br>[TRACE] [MPM.misc-enet-int=
-regs] Writing to address 0x0010: 0x2030405<br>[TRACE] [MPM.misc-enet-int-r=
egs] Writing to address 0x0014: 0x0001<br>[DEBUG] [MPM.misc-enet-int-regs] =
Setting internal IP address to `169.254.0.2&#39;<br>[DEBUG] [MPM.misc-enet-=
int-regs] Setting internal Mode<br> </div></blockquote></blockquote><div><b=
r></div><div></div><div>I guess what I&#39;m getting at is what are some of=
 the possible root causes of this sort of error? Looking for any general ad=
vice.</div><div>It&#39;s worth noting that I removed both SFP connections f=
rom the chdr crossbar. The only interface to the chdr network in my setup i=
s the int0 interface. I&#39;m fairly certain my crossbar and static routing=
 file are configured correctly, I am working with a topology right now that=
 is similar to the E310. <br></div><div>=C2=A0</div><div>Thanks,</div><div>=
Ryan<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Mar 16, 2021 at 12:54 PM Martin Braun=
 &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.bra=
un@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>You can&#39;t ping it using the &#39;ping=
&#39; command (as you&#39;ve probably found out yourself). We don&#39;t imp=
lement this outside of UHD, but UHD sends out discovery management packets =
into that network to see what&#39;s on the other side (e.g., a crossbar). Y=
ou could forge one of those and send it in there via UHD, but you&#39;d hav=
e to figure out the packet format from the RFNoC spec and the source code.<=
/div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 16, 2021 at 4:20 PM Ryan =
Marlow &lt;<a href=3D"mailto:ryan@lmarlow.com" target=3D"_blank">ryan@lmarl=
ow.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div>Hello All,</div><div>I have kinda an obscure/de=
ep question about the functionality of the internal ethernet interface on t=
he N3xx. It is my understanding that this interface (int0) connects the lin=
ux OS on the ARM to the CHDR/RFNoC network on FPGA so you can run UHD on th=
e N3xx ARM itself. To verify the functionality of this interface, can I &qu=
ot;ping&quot; the IP address (defaults to 192.168.10.2) of the FPGA side on=
 that interface and expect a response? Using tcpdump, I can see ARP request=
 and replies. Just curious if anyone has suggestions of sanity checks that =
are simpler than running uhd_find_devices or uhd_usrp_probe to verify the i=
ntegrity of that interface connection.</div><div>Thanks,</div><div>Ryan Mar=
low<br></div><div><br>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div>Ryan L.=
 Marlow</div><div>R L Marlow Consulting LLC</div><div><a href=3D"http://rlm=
arlow.com" target=3D"_blank">rlmarlow.com</a><br></div></div></div></div></=
div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><div>Ryan L. Marlow</div><div>R L Marlow Consulting LLC</div><div>=
<a href=3D"http://rlmarlow.com" target=3D"_blank">rlmarlow.com</a><br></div=
></div></div></div>

--0000000000003832e505bde75afe--

--===============0468516663043382206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0468516663043382206==--
