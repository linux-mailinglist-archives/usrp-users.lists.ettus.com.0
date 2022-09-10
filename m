Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 704225B48BA
	for <lists+usrp-users@lfdr.de>; Sat, 10 Sep 2022 22:15:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A180383CE7
	for <lists+usrp-users@lfdr.de>; Sat, 10 Sep 2022 16:15:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662840920; bh=KMpn5kf63/yRDzcnZCbFE5NFFnJnocboCLtv0IQ7ooo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=TiFPomVJadThT58V24tPtwcn0ZVzAzfCFDp2L+xq4555tjCiz+ZBIMq2mO/SbQw0h
	 0n6BmlTABl9CiRXFmCkOtx7BBlR8pYD9gguLtsqGda5/Nt8fhQaXkXLBoDqYBmx4SH
	 onSDNZgUL0nJ1XPntGc1YrXkDipZe8OEZU3WLKobqZ1KMLwwIRt16ug/lxN1jKuvg5
	 6FJMr3qNfImy32/6Hoi9YLO+dWR2mFfkOpizGRRy3ctbSgjCeIzww1prhPlR2/qdZT
	 zkgIAN1RgxAmbwnWmMXhIuVbs4Ctwu9UegoAkqF+2h6nipNubfw23GRIqg6uiN/DcR
	 0AWce8XCmV4dg==
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C951C383846
	for <usrp-users@lists.ettus.com>; Sat, 10 Sep 2022 16:14:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="oaotWalm";
	dkim-atps=neutral
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-3378303138bso56346377b3.9
        for <usrp-users@lists.ettus.com>; Sat, 10 Sep 2022 13:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=AOIh1Uu+dKY8rIJtRqAgm3CSPIfx1rnsIgHgO4TA8xc=;
        b=oaotWalmlHAHx0KOyt2QeHXlU7BNgj4NbwobNSlC0trM12F8Gk5IH8iEckz5+niixv
         JqjzDxw9+cj1+khQzcgy0lLIG8ZeOuoT79YpmwXi4IurK648z6t2G1D/8oO7r1OU3tB9
         OWBtug3rocREqjN9lM8BSCJnG4vBExSnRmByvqJbEalmXSw2pbdDi8y1cLSG6ZyZ7joz
         wHggs+2zXgfdpp9boVegJa9AkP5C31HhVhAo0i9O5MW/A5PUjpHY3YZnZtUx2LZvWBIj
         EqdvI/8ko5ZmO2c2hc3Rm6bSHEThR3jmhjqFPTEI4wej/Eb78QUSrCUFp/l8oOk3Z509
         UJ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=AOIh1Uu+dKY8rIJtRqAgm3CSPIfx1rnsIgHgO4TA8xc=;
        b=evxGLfAmSzNHtGOkPS+jNUcXnsdrR0dEZn0UO6wjfWhSSqfAEheaUYi2AEJVD6hLuN
         r4H83R3pJfJAIREdJOJ1w933u17RvGx+L46gsWGJPXr9Q34mK6Kh62F+0D79xPXXg7jz
         XKCQsAKTh1cpBGS3UWXmHafiW8e8GdT+aeOIZWAYkiGnQZMtR9sK/smHBOyld6qe6C2+
         UDY5yr1SzfrLSJj2wng01tJs7ev1+J56esPbSxPCcnlKahw6v2bCYXwaLugB/8+IWgqg
         WE8GCEaxTY6rb+2ubq4o9cpoW2sEci/VKzkVX1LN/vgAf/QIRbnaNbPX3dtrWXQHYBzF
         +g5g==
X-Gm-Message-State: ACgBeo0ZAmIJjBFwf1muEjA+z2y38E5emV3jyOiF12Hsj5bJxldwQCGj
	nBLUhkRQ3/W/5jNd++25m/iiRecTqrn+Cf6mtBltSyVm78r4cg==
X-Google-Smtp-Source: AA6agR5wqi/QKrubmyNKvGAewO5Z+Vqn8VGPMF9Ns9SoHpcXFhLLEp6GY+1u2QEfQBPVER0Tl2VY40DwbKMjL06Avvo=
X-Received: by 2002:a81:6103:0:b0:333:67b3:3558 with SMTP id
 v3-20020a816103000000b0033367b33558mr16870519ywb.128.1662840846056; Sat, 10
 Sep 2022 13:14:06 -0700 (PDT)
MIME-Version: 1.0
References: <YMFp481oKWLKHn6Gld6NW6T7ruuXTKrHxl9wgxfhLM8@lists.ettus.com>
 <CAB__hTSx=35DRBFwSuhTP54M-+yOXGpvJCouEu1q0iUAa82cpg@mail.gmail.com>
 <CAB__hTQj71KwcgLjOBYQdPLZ1K0L_JrRTh-CHp-JpG3OorhfxQ@mail.gmail.com>
 <CAP0o2sxysF4arBUXbf7-TUWv2gmsvc0nZ99e1g8XgQgJTqxhhA@mail.gmail.com>
 <CAFche=hpgCdrAs8OiWdcfqiubXt7NiNXtn3bVhfF8Fs=BAXhiw@mail.gmail.com>
 <CAP0o2szT7DJYWR_+CHeWLNRWhTPyZnM7y+7mVSHk93AHhAkrVg@mail.gmail.com>
 <CAFche=gcMcxK6-4vMpS9n7k-eV8JUZZacj=FRryOu=kd+ACywg@mail.gmail.com>
 <CAP0o2swJKe3SuHGtnZV12u0-G00TvTE5Ds5Peb7Em911qT5yUg@mail.gmail.com>
 <CAFche=jPOUCx+KjqfQHHxpiVMdqxdX_Xc7-4TgPiYE1jzsWs7g@mail.gmail.com>
 <CAP0o2syAqrQJtZrtHdfi9bbgn+VmpbZ_4cVzPgwXRPD6rcEyOw@mail.gmail.com>
 <36a083d4-631d-6299-032d-f546b4ca3163@o2.pl> <CAB__hTQdfskJ-fH6bfDwavJuEre8gK441Pu0hCqjRk1g++iSZA@mail.gmail.com>
 <CAP0o2syYyYgokT5Chqp7fzDMXp0gaLrVHGseGM=EGLtQbYyxrw@mail.gmail.com>
In-Reply-To: <CAP0o2syYyYgokT5Chqp7fzDMXp0gaLrVHGseGM=EGLtQbYyxrw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 10 Sep 2022 15:13:50 -0500
Message-ID: <CAFche=hTH7fiqZ9Bq70RjFAtg5HkUXe8s+4jgAO0QTMHRN=H6A@mail.gmail.com>
To: =?UTF-8?Q?Adri=C3=A1n_Campos_Ramos?= <adrian.campos@integrasys-sa.com>
Message-ID-Hash: NKTK6BWIYKRIPA5N57VDAXV42UU6MEVU
X-Message-ID-Hash: NKTK6BWIYKRIPA5N57VDAXV42UU6MEVU
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI_RAM_FIFO Controller
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NKTK6BWIYKRIPA5N57VDAXV42UU6MEVU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7800892614771261927=="

--===============7800892614771261927==
Content-Type: multipart/alternative; boundary="000000000000f292e905e8584d88"

--000000000000f292e905e8584d88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don't see anything wrong with your YAML. Did you modify the DmaFIFO code
(axi_ram_fifo), or are all the changes in your custom block? You could try
building with a clean repo and with your custom block removed just to make
sure everything is otherwise working fine with the DmaFIFO and your E320.

Wade

On Thu, Sep 8, 2022 at 10:23 AM Adri=C3=A1n Campos Ramos <
adrian.campos@integrasys-sa.com> wrote:

> The same
>
>
>
> El mi=C3=A9, 7 sept 2022 a las 18:19, Rob Kossler (<rkossler@nd.edu>) esc=
ribi=C3=B3:
>
>> You mentioned that your error happens when running from gnuradio.  What
>> happens if you remove gnuradio from the equation and run "uhd_usrp_probe=
"?
>> Do you still get the error?
>> Rob
>>
>> On Wed, Sep 7, 2022 at 10:31 AM Piotr Krysik <perper@o2.pl> wrote:
>>
>>> Hi Adri=C3=A1n,
>>>
>>> This error mean that the block didn't respond to a control message
>>> during initialization.
>>>
>>> I've seen such errors when element of RFNoC graphs wasn't working
>>> correctly.
>>> Those situations were when:
>>> 1. replay block wasn't working correctly due to wrong clock for DDR
>>> SDRAM controller module,
>>> 2. I removed implementation of one of Ethernet ports (in order to get
>>> quicker builds in Vivado) but its end-point was left in the RFNoC graph=
.
>>> So it was probed during initialization but there was nothing that could
>>> respond.
>>>
>>> Best Regards,
>>> Piotr Krysik
>>>
>>> W dniu 06.09.2022 o 14:59, Adri=C3=A1n Campos Ramos pisze:
>>> > HI everyone
>>> >
>>> > Thank you very much. I made a controller and, according to the
>>> > simulation, it's working fine, at least as I wanted. However, I am
>>> > facing problems to implementate in the fpga. There is not problem whe=
n
>>> > i generate the .bit buf when i call in gnuradio, this error appears:
>>> >
>>> > WARNING] [UDP] The current send_buff_size of 212992 is less than the
>>> > minimum recommended size of 307200 and may result in dropped packets
>>> > on some NICs
>>> > [ERROR] [RFNOC::GRAPH] Error during initialization of block
>>> 0/DmaFIFO#0!
>>> > [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
>>> > RfnocError: OpTimeout: Control operation timed out waiting for ACK
>>> > Traceback (most recent call last):
>>> >   File
>>> >
>>> "/home/integrasys/rfnoc/src/uhd/fpga/usrp3/top/e320/build/untitled.py",
>>> > line 181, in <module>
>>> >     main()
>>> >   File
>>> >
>>> "/home/integrasys/rfnoc/src/uhd/fpga/usrp3/top/e320/build/untitled.py",
>>> > line 157, in main
>>> >     tb =3D top_block_cls()
>>> >   File
>>> >
>>> "/home/integrasys/rfnoc/src/uhd/fpga/usrp3/top/e320/build/untitled.py",
>>> > line 76, in __init__
>>> >     self.rfnoc_graph =3D ettus_rfnoc_graph_0 =3D
>>> > ettus.rfnoc_graph(uhd.device_addr(",".join(("addr=3D192.168.1.23", ''=
))))
>>> >   File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py",
>>> > line 1153, in make
>>> >     return _ettus_swig.rfnoc_graph_make(dev_addr)
>>> > RuntimeError: RuntimeError: Failure to create rfnoc_grap
>>> >
>>> > I attached my image.yml:
>>> >
>>> >
>>> > Thanks in advance.
>>> >
>>> > El jue, 1 sept 2022 a las 22:24, Wade Fife (<wade.fife@ettus.com>)
>>> > escribi=C3=B3:
>>> >
>>> >     The DRAM on USRPs is half duplex, but the AXI bus is full duplex,
>>> >     which makes the real world behavior more complicated. If you want
>>> >     to simulate accurately for a specific USRP, you could pull in its
>>> >     AXI interconnect, the Xilinx memory interface IP, and a DRAM
>>> >     simulation model, then connect it together and match the USRP
>>> >     design exactly, but this is a lot of work. There are examples tha=
t
>>> >     are similar to this in fpga/usrp3/top/x300/sim/dram_fifo and
>>> >     fpga/usrp3/top/n3xx/sim/dram_fifo. There's no example for E320,
>>> >     but the idea is similar.
>>> >
>>> >     Wade
>>> >
>>> >     On Thu, Sep 1, 2022 at 5:38 AM Adri=C3=A1n Campos Ramos
>>> >     <adrian.campos@integrasys-sa.com> wrote:
>>> >
>>> >         Thank you very much! I was testing the code and I got
>>> >         something similar to what I wanted. However, in the simulatio=
n
>>> >         the sim_ram is half duplex and my question is if the
>>> >         implementation in the FPGA is also half or full duplex. And i=
f
>>> >         it is full, is there any way to simulate?
>>> >
>>> >         Thanks in advance.
>>> >
>>> >         Adri=C3=A1n
>>> >
>>> >         El mi=C3=A9, 31 ago 2022 a las 16:22, Wade Fife
>>> >         (<wade.fife@ettus.com>) escribi=C3=B3:
>>> >
>>> >             OUT_FIFO_SIZE sets the size of the FIFO used to buffer
>>> >             data read from the external DRAM. But the unit for this
>>> >             parameter is log base 2 of the size. So, setting it to 20
>>> >             means the output FIFO will be 2^20 words or 8 MiB
>>> >             implemented in BRAM, which is too big for the FPGA to
>>> >             support. You should probably leave it at the default
>>> >             value. The amount of DRAM to use for the FIFO can be set
>>> >             by the FIFO_ADDR_MASK parameter.
>>> >
>>> >             It should behave like a true FIFO. So anything you write
>>> >             to the input will come out on the output, but you can
>>> >             buffer up to the size of the memory you have configured.
>>> >             I'm not sure I understand your application exactly, but i=
f
>>> >             you only want to capture at a specific time, then you
>>> >             should add logic to only write the data to the input of
>>> >             the FIFO during those times and take care to handle
>>> >             overflow when the FIFO fills. And add logic on the output
>>> >             to only read when you want, taking care to handle
>>> >             underflow when the FIFO empties.
>>> >
>>> >             Wade
>>> >
>>> >             On Wed, Aug 31, 2022 at 4:42 AM Adri=C3=A1n Campos Ramos
>>> >             <adrian.campos@integrasys-sa.com> wrote:
>>> >
>>> >                 Hi,
>>> >
>>> >                 Thank you very much, now I understand how it works an=
d
>>> >                 it runs perfectly. However, it's not what I expected
>>> >                 since it does not FIFO behaviour, or I'm
>>> >                 doing something wrong. What I need is a FIFO that
>>> >                 stores the data of a signal when I activate a flag an=
d
>>> >                 reads when I activate another flag continuously and
>>> >                 constantly. Currently, I have the FIFO implemented in
>>> >                 the FPGA but it takes too much resources  so I want t=
o
>>> >                 take advantage of the E320 RAM. I think the
>>> >                 axi_ram_fifo would be perfect for my project but as
>>> >                 far i can see, when space =3D 0 and occupied is full,=
 it
>>> >                 starts to lose the continuity. On the other hand, I
>>> >                 don't know why but I can't  increase the
>>> >                 FIFO_OUT_SIZE. With 10 there are outputs but if i
>>> >                 increase, for example, to 20 it doesn't.
>>> >
>>> >                 I attached a photo of the behavior of the
>>> >                 input_fifo/fifo_ram/ram.
>>> >                 p1.png
>>> >
>>> >                 El mar, 30 ago 2022 a las 19:54, Wade Fife
>>> >                 (<wade.fife@ettus.com>) escribi=C3=B3:
>>> >
>>> >                     Hello Adri=C3=A1n,
>>> >
>>> >                     REG_FIFO_FULLNESS is the number of bytes currentl=
y
>>> >                     stored in the RAM of the FIFO.
>>> >
>>> >                     FIFO_ADDR_W is a testbench parameter that defines
>>> >                     the amount of memory address space to use for the
>>> >                     simulated FIFOs. The unmodified testbench uses a
>>> >                     single memory to test two FIFOs. So the sum of th=
e
>>> >                     memory used by both FIFOs must be less than the
>>> >                     size of the memory being simulated in order for
>>> >                     the testbench to work (i.e., 2 * 2**FIFO_ADDR_W
>>> >                     must not exceed 2**MEM_ADDR_W).
>>> >
>>> >                     IN_FIFO_SIZE and OUT_FIFO_SIZE control the size o=
f
>>> >                     the input/output buffers used by the block. They
>>> >                     can affect the performance of the FIFO, but must
>>> >                     be large enough to hold two of the expected burst
>>> >                     memory transfer size, which I think is 512 words.
>>> >
>>> >                     The testbench is failing because it expects the
>>> >                     FIFO to be empty when the simulation begins.
>>> >                     Perhaps you have started inputting values before
>>> >                     it was expecting you to?
>>> >
>>> >                     Wade
>>> >
>>> >                     On Tue, Aug 30, 2022 at 3:13 AM Adri=C3=A1n Campo=
s
>>> >                     Ramos <adrian.campos@integrasys-sa.com> wrote:
>>> >
>>> >                         Hi everyone,
>>> >
>>> >                         First of all, thank you very much Rob Kossler
>>> >                         for the explanation. I made a "controller"
>>> >                         that sends and receives information at certai=
n
>>> >                         points in time. However, I am facing problems
>>> >                         in relation to REG_FIFO_FULLNESS. I've been
>>> >                         changing the values of FIFO_ADDR_W,
>>> >                         IN_FIFO_SIZE and OUT_FIFO_SIZE but it didn't
>>> >                         work. Furthermore, I don't understand the
>>> >                         problem at all, is the input fifo or the
>>> >                         output fifo? or the ram?. The controller
>>> >                         mentioned before has only two counters, one t=
o
>>> >                         activate the valid flag to send information
>>> >                         and another to activate the ready flag to
>>> >                         receive the information and, as far i could
>>> >                         see, it was working until the assert.
>>> >
>>> >                         This is the error that returns me the
>>> >                         simulation (the number that appears in the
>>> >                         image is for: `ASSERT_ERROR(val64 =3D=3D 0,
>>> >                         $sformatf("Incorrect REG_FIFO_FULLNESS value!
>>> >                         %d",val64));
>>> >
>>> >                         Screenshot from 2022-08-30 10-10-52.png
>>> >                         On the other hand, the data that I send to RA=
M
>>> >                         is the value of a counter.
>>> >
>>> >                         I hope you can help me. Thanks in advance.
>>> >
>>> >                         Adri=C3=A1n Campos
>>> >
>>> >                         El jue, 18 ago 2022 a las 22:49, Rob Kossler
>>> >                         (<rkossler@nd.edu>) escribi=C3=B3:
>>> >
>>> >                             Replace "upstream" with "downstream" belo=
w.
>>> >
>>> >                             On Thu, Aug 18, 2022 at 1:28 PM Rob
>>> >                             Kossler <rkossler@nd.edu> wrote:
>>> >
>>> >                                 Hi Adrian,
>>> >                                 As you indicated, the RFNoC blocks
>>> >                                 axi_ram_fifo and Relay both use the
>>> >                                 FPGA RAM.  axi_ram_fifo doesn't need
>>> >                                 any registers for control because it
>>> >                                 just accepts an AXI stream on the
>>> >                                 input and forwards that exact stream
>>> >                                 on the output. The "control" is in th=
e
>>> >                                 AXI tvalid/tready handshaking. Thus,
>>> >                                 if the upstream block is not ready,
>>> >                                 the FIFO starts filling up but does
>>> >                                 not empty until the upstream block is
>>> >                                 ready.  But, for the Replay block,
>>> >                                 this block stores the incoming stream
>>> >                                 to RAM until you later decide to play
>>> >                                 it out.  It can be used in the
>>> >                                 transmit path to load a waveform into
>>> >                                 RAM such that it can be played out to
>>> >                                 the Tx Radio without any help from th=
e
>>> >                                 host PC.  Or, it can be used in the
>>> >                                 receive path to store receive samples
>>> >                                 as they arrive (up to the given RAM
>>> >                                 memory depth) and then later
>>> >                                 downloaded (played out) to the host P=
C
>>> >                                 in non-realtime.
>>> >
>>> >                                 While I don't know your specific
>>> >                                 application, I wondered if the Replay
>>> >                                 block (or the axi_ram_fifo) can
>>> >                                 already implement your desired
>>> >                                 functionality such that a custom bloc=
k
>>> >                                 is not needed.
>>> >                                 Rob
>>> >
>>> >                                 On Thu, Aug 18, 2022 at 8:25 AM
>>> >                                 <adrian.campos@integrasys-sa.com>
>>> wrote:
>>> >
>>> >                                     I am making a custom block which
>>> >                                     has to start storing data to be
>>> >                                     read later, in other words store
>>> >                                     the data in a FIFO. I am
>>> >                                     interested in using the RAM
>>> >                                     provided by the E320 so I want to
>>> >                                     take advantage of the axi_ram_fif=
o
>>> >                                     code. However, I don't really
>>> >                                     understand the control of that
>>> >                                     block, how can I control when to
>>> >                                     start writing data to memory and
>>> >                                     when to start reading it? I have
>>> >                                     checked the registers in case it
>>> >                                     could be controlled from there
>>> >                                     like the replay block that has tw=
o
>>> >                                     registers to start reading and
>>> >                                     another one to do a restart but I
>>> >                                     haven't seen anything like that.
>>> >
>>> >                                     I hope you can help me. Thank you
>>> >                                     very much in advance
>>> >
>>> >
>>> >
>>>  _______________________________________________
>>> >                                     USRP-users mailing list --
>>> >                                     usrp-users@lists.ettus.com
>>> >                                     To unsubscribe send an email to
>>> >                                     usrp-users-leave@lists.ettus.com
>>> >
>>> >                         _____________________________________________=
__
>>> >                         USRP-users mailing list --
>>> >                         usrp-users@lists.ettus.com
>>> >                         To unsubscribe send an email to
>>> >                         usrp-users-leave@lists.ettus.com
>>> >
>>> >
>>> > _______________________________________________
>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f292e905e8584d88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj5JIGRvbiYjMzk7dCBzZWUgYW55dGhpbmcgd3Jvbmcgd2l0aCB5
b3VyIFlBTUwuIERpZCB5b3UgbW9kaWZ5IHRoZSBEbWFGSUZPIGNvZGUgKGF4aV9yYW1fZmlmbyks
IG9yIGFyZSBhbGwgdGhlIGNoYW5nZXMgaW4geW91ciBjdXN0b20gYmxvY2s/IFlvdSBjb3VsZCB0
cnkgYnVpbGRpbmcgd2l0aCBhIGNsZWFuIHJlcG8gYW5kIHdpdGggeW91ciBjdXN0b20gYmxvY2sg
cmVtb3ZlZCBqdXN0IHRvIG1ha2Ugc3VyZSBldmVyeXRoaW5nIGlzIG90aGVyd2lzZSB3b3JraW5n
IGZpbmUgd2l0aCB0aGUgRG1hRklGTyBhbmQgeW91ciBFMzIwLjwvZGl2PjxkaXY+PGJyPjwvZGl2
PjxkaXY+V2FkZTxicj48L2Rpdj48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxk
aXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5PbiBUaHUsIFNlcCA4LCAyMDIyIGF0IDEw
OjIzIEFNIEFkcmnDoW4gQ2FtcG9zIFJhbW9zICZsdDs8YSBocmVmPSJtYWlsdG86YWRyaWFuLmNh
bXBvc0BpbnRlZ3Jhc3lzLXNhLmNvbSI+YWRyaWFuLmNhbXBvc0BpbnRlZ3Jhc3lzLXNhLmNvbTwv
YT4mZ3Q7IHdyb3RlOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0
eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigy
MDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+PGRpdiBkaXI9Imx0ciI+VGhlIHNhbWU8ZGl2
Pjxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVv
dGUiPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5FbCBtacOpLCA3IHNlcHQgMjAy
MiBhIGxhcyAxODoxOSwgUm9iIEtvc3NsZXIgKCZsdDs8YSBocmVmPSJtYWlsdG86cmtvc3NsZXJA
bmQuZWR1IiB0YXJnZXQ9Il9ibGFuayI+cmtvc3NsZXJAbmQuZWR1PC9hPiZndDspIGVzY3JpYmnD
szo8YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2lu
OjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQp
O3BhZGRpbmctbGVmdDoxZXgiPjxkaXYgZGlyPSJsdHIiPjxkaXYgZGlyPSJsdHIiPllvdSBtZW50
aW9uZWQgdGhhdCB5b3VyIGVycm9yIGhhcHBlbnMgd2hlbiBydW5uaW5nIGZyb20gZ251cmFkaW8u
wqAgV2hhdCBoYXBwZW5zIGlmIHlvdSByZW1vdmUgZ251cmFkaW8gZnJvbSB0aGUgZXF1YXRpb24g
YW5kIHJ1biAmcXVvdDt1aGRfdXNycF9wcm9iZSZxdW90Oz8gRG8geW91IHN0aWxsIGdldCB0aGUg
ZXJyb3I/PGRpdj5Sb2I8L2Rpdj48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxk
aXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5PbiBXZWQsIFNlcCA3LCAyMDIyIGF0IDEw
OjMxIEFNIFBpb3RyIEtyeXNpayAmbHQ7PGEgaHJlZj0ibWFpbHRvOnBlcnBlckBvMi5wbCIgdGFy
Z2V0PSJfYmxhbmsiPnBlcnBlckBvMi5wbDwvYT4mZ3Q7IHdyb3RlOjxicj48L2Rpdj48YmxvY2tx
dW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7
Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+
SGkgQWRyacOhbiw8YnI+DQo8YnI+DQpUaGlzIGVycm9yIG1lYW4gdGhhdCB0aGUgYmxvY2sgZGlk
biYjMzk7dCByZXNwb25kIHRvIGEgY29udHJvbCBtZXNzYWdlIDxicj4NCmR1cmluZyBpbml0aWFs
aXphdGlvbi48YnI+DQo8YnI+DQpJJiMzOTt2ZSBzZWVuIHN1Y2ggZXJyb3JzIHdoZW4gZWxlbWVu
dCBvZiBSRk5vQyBncmFwaHMgd2FzbiYjMzk7dCB3b3JraW5nIGNvcnJlY3RseS48YnI+DQpUaG9z
ZSBzaXR1YXRpb25zIHdlcmUgd2hlbjo8YnI+DQoxLiByZXBsYXkgYmxvY2sgd2FzbiYjMzk7dCB3
b3JraW5nIGNvcnJlY3RseSBkdWUgdG8gd3JvbmcgY2xvY2sgZm9yIEREUiA8YnI+DQpTRFJBTSBj
b250cm9sbGVyIG1vZHVsZSw8YnI+DQoyLiBJIHJlbW92ZWQgaW1wbGVtZW50YXRpb24gb2Ygb25l
IG9mIEV0aGVybmV0IHBvcnRzIChpbiBvcmRlciB0byBnZXQgPGJyPg0KcXVpY2tlciBidWlsZHMg
aW4gVml2YWRvKSBidXQgaXRzIGVuZC1wb2ludCB3YXMgbGVmdCBpbiB0aGUgUkZOb0MgZ3JhcGgu
IDxicj4NClNvIGl0IHdhcyBwcm9iZWQgZHVyaW5nIGluaXRpYWxpemF0aW9uIGJ1dCB0aGVyZSB3
YXMgbm90aGluZyB0aGF0IGNvdWxkIDxicj4NCnJlc3BvbmQuPGJyPg0KPGJyPg0KQmVzdCBSZWdh
cmRzLDxicj4NClBpb3RyIEtyeXNpazxicj4NCjxicj4NClcgZG5pdSAwNi4wOS4yMDIyIG/CoDE0
OjU5LCBBZHJpw6FuIENhbXBvcyBSYW1vcyBwaXN6ZTo8YnI+DQomZ3Q7IEhJIGV2ZXJ5b25lPGJy
Pg0KJmd0Ozxicj4NCiZndDsgVGhhbmsgeW91IHZlcnkgbXVjaC4gSSBtYWRlIGEgY29udHJvbGxl
ciBhbmQsIGFjY29yZGluZyB0byB0aGUgPGJyPg0KJmd0OyBzaW11bGF0aW9uLCBpdCYjMzk7cyB3
b3JraW5nIGZpbmUswqBhdCBsZWFzdCBhcyBJIHdhbnRlZC4gSG93ZXZlciwgSSBhbSA8YnI+DQom
Z3Q7IGZhY2luZyBwcm9ibGVtcyB0byBpbXBsZW1lbnRhdGUgaW4gdGhlIGZwZ2EuIFRoZXJlIGlz
IG5vdCBwcm9ibGVtIHdoZW4gPGJyPg0KJmd0OyBpIGdlbmVyYXRlIHRoZSAuYml0IGJ1ZiB3aGVu
IGkgY2FsbCBpbiBnbnVyYWRpbywgdGhpcyBlcnJvciBhcHBlYXJzOjxicj4NCiZndDs8YnI+DQom
Z3Q7IFdBUk5JTkddIFtVRFBdIFRoZSBjdXJyZW50IHNlbmRfYnVmZl9zaXplIG9mIDIxMjk5MiBp
cyBsZXNzIHRoYW4gdGhlIDxicj4NCiZndDsgbWluaW11bSByZWNvbW1lbmRlZCBzaXplIG9mIDMw
NzIwMCBhbmQgbWF5IHJlc3VsdCBpbiBkcm9wcGVkIHBhY2tldHMgPGJyPg0KJmd0OyBvbiBzb21l
IE5JQ3M8YnI+DQomZ3Q7IFtFUlJPUl0gW1JGTk9DOjpHUkFQSF0gRXJyb3IgZHVyaW5nIGluaXRp
YWxpemF0aW9uIG9mIGJsb2NrIDAvRG1hRklGTyMwITxicj4NCiZndDsgW0VSUk9SXSBbUkZOT0M6
OkdSQVBIXSBDYXVnaHQgZXhjZXB0aW9uIHdoaWxlIGluaXRpYWxpemluZyBncmFwaDogPGJyPg0K
Jmd0OyBSZm5vY0Vycm9yOiBPcFRpbWVvdXQ6IENvbnRyb2wgb3BlcmF0aW9uIHRpbWVkIG91dCB3
YWl0aW5nIGZvciBBQ0s8YnI+DQomZ3Q7IFRyYWNlYmFjayAobW9zdCByZWNlbnQgY2FsbCBsYXN0
KTo8YnI+DQomZ3Q7IMKgIEZpbGUgPGJyPg0KJmd0OyAmcXVvdDsvaG9tZS9pbnRlZ3Jhc3lzL3Jm
bm9jL3NyYy91aGQvZnBnYS91c3JwMy90b3AvZTMyMC9idWlsZC91bnRpdGxlZC5weSZxdW90Oywg
PGJyPg0KJmd0OyBsaW5lIDE4MSwgaW4gJmx0O21vZHVsZSZndDs8YnI+DQomZ3Q7IMKgIMKgIG1h
aW4oKTxicj4NCiZndDsgwqAgRmlsZSA8YnI+DQomZ3Q7ICZxdW90Oy9ob21lL2ludGVncmFzeXMv
cmZub2Mvc3JjL3VoZC9mcGdhL3VzcnAzL3RvcC9lMzIwL2J1aWxkL3VudGl0bGVkLnB5JnF1b3Q7
LCA8YnI+DQomZ3Q7IGxpbmUgMTU3LCBpbiBtYWluPGJyPg0KJmd0OyDCoCDCoCB0YiA9IHRvcF9i
bG9ja19jbHMoKTxicj4NCiZndDsgwqAgRmlsZSA8YnI+DQomZ3Q7ICZxdW90Oy9ob21lL2ludGVn
cmFzeXMvcmZub2Mvc3JjL3VoZC9mcGdhL3VzcnAzL3RvcC9lMzIwL2J1aWxkL3VudGl0bGVkLnB5
JnF1b3Q7LCA8YnI+DQomZ3Q7IGxpbmUgNzYsIGluIF9faW5pdF9fPGJyPg0KJmd0OyDCoCDCoCBz
ZWxmLnJmbm9jX2dyYXBoID0gZXR0dXNfcmZub2NfZ3JhcGhfMCA9IDxicj4NCiZndDsgZXR0dXMu
cmZub2NfZ3JhcGgodWhkLmRldmljZV9hZGRyKCZxdW90OywmcXVvdDsuam9pbigoJnF1b3Q7YWRk
cj0xOTIuMTY4LjEuMjMmcXVvdDssICYjMzk7JiMzOTspKSkpPGJyPg0KJmd0OyDCoCBGaWxlICZx
dW90Oy91c3IvbG9jYWwvbGliL3B5dGhvbjMvZGlzdC1wYWNrYWdlcy9ldHR1cy9ldHR1c19zd2ln
LnB5JnF1b3Q7LCA8YnI+DQomZ3Q7IGxpbmUgMTE1MywgaW4gbWFrZTxicj4NCiZndDsgwqAgwqAg
cmV0dXJuIF9ldHR1c19zd2lnLnJmbm9jX2dyYXBoX21ha2UoZGV2X2FkZHIpPGJyPg0KJmd0OyBS
dW50aW1lRXJyb3I6IFJ1bnRpbWVFcnJvcjogRmFpbHVyZSB0byBjcmVhdGUgcmZub2NfZ3JhcDxi
cj4NCiZndDs8YnI+DQomZ3Q7IEkgYXR0YWNoZWQgbXkgaW1hZ2UueW1sOjxicj4NCiZndDs8YnI+
DQomZ3Q7PGJyPg0KJmd0OyBUaGFua3MgaW4gYWR2YW5jZS48YnI+DQomZ3Q7PGJyPg0KJmd0OyBF
bCBqdWUsIDEgc2VwdCAyMDIyIGEgbGFzIDIyOjI0LCBXYWRlIEZpZmUgKCZsdDs8YSBocmVmPSJt
YWlsdG86d2FkZS5maWZlQGV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPndhZGUuZmlmZUBldHR1
cy5jb208L2E+Jmd0OykgPGJyPg0KJmd0OyBlc2NyaWJpw7M6PGJyPg0KJmd0Ozxicj4NCiZndDvC
oCDCoCDCoFRoZSBEUkFNIG9uIFVTUlBzIGlzIGhhbGYgZHVwbGV4LCBidXQgdGhlIEFYSSBidXMg
aXMgZnVsbCBkdXBsZXgsPGJyPg0KJmd0O8KgIMKgIMKgd2hpY2ggbWFrZXMgdGhlIHJlYWwgd29y
bGQgYmVoYXZpb3IgbW9yZSBjb21wbGljYXRlZC4gSWYgeW91IHdhbnQ8YnI+DQomZ3Q7wqAgwqAg
wqB0byBzaW11bGF0ZSBhY2N1cmF0ZWx5IGZvciBhIHNwZWNpZmljIFVTUlAsIHlvdSBjb3VsZCBw
dWxsIGluIGl0czxicj4NCiZndDvCoCDCoCDCoEFYSSBpbnRlcmNvbm5lY3QsIHRoZSBYaWxpbngg
bWVtb3J5IGludGVyZmFjZSBJUCwgYW5kIGEgRFJBTTxicj4NCiZndDvCoCDCoCDCoHNpbXVsYXRp
b24gbW9kZWwsIHRoZW4gY29ubmVjdCBpdCB0b2dldGhlciBhbmQgbWF0Y2ggdGhlIFVTUlA8YnI+
DQomZ3Q7wqAgwqAgwqBkZXNpZ24gZXhhY3RseSwgYnV0IHRoaXMgaXMgYSBsb3Qgb2Ygd29yay4g
VGhlcmUgYXJlIGV4YW1wbGVzIHRoYXQ8YnI+DQomZ3Q7wqAgwqAgwqBhcmUgc2ltaWxhciB0byB0
aGlzIGluIGZwZ2EvdXNycDMvdG9wL3gzMDAvc2ltL2RyYW1fZmlmbyBhbmQ8YnI+DQomZ3Q7wqAg
wqAgwqBmcGdhL3VzcnAzL3RvcC9uM3h4L3NpbS9kcmFtX2ZpZm8uIFRoZXJlJiMzOTtzIG5vIGV4
YW1wbGUgZm9yIEUzMjAsPGJyPg0KJmd0O8KgIMKgIMKgYnV0IHRoZSBpZGVhIGlzIHNpbWlsYXIu
PGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoFdhZGU8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgT24gVGh1LCBTZXAgMSwgMjAyMiBhdCA1OjM4IEFNIEFkcmnDoW4gQ2FtcG9zIFJhbW9zPGJy
Pg0KJmd0O8KgIMKgIMKgJmx0OzxhIGhyZWY9Im1haWx0bzphZHJpYW4uY2FtcG9zQGludGVncmFz
eXMtc2EuY29tIiB0YXJnZXQ9Il9ibGFuayI+YWRyaWFuLmNhbXBvc0BpbnRlZ3Jhc3lzLXNhLmNv
bTwvYT4mZ3Q7IHdyb3RlOjxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBUaGFuayB5
b3UgdmVyeSBtdWNoISBJIHdhcyB0ZXN0aW5nIHRoZSBjb2RlIGFuZCBJIGdvdDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoHNvbWV0aGluZyBzaW1pbGFyIHRvIHdoYXQgSSB3YW50ZWQuIEhvd2V2ZXIs
IGluIHRoZSBzaW11bGF0aW9uPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgdGhlIHNpbV9yYW0gaXMg
aGFsZiBkdXBsZXggYW5kIG15IHF1ZXN0aW9uIGlzIGlmIHRoZTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoGltcGxlbWVudGF0aW9uIGluIHRoZSBGUEdBIGlzIGFsc28gaGFsZiBvciBmdWxsIGR1cGxl
eC4gQW5kIGlmPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgaXQgaXMgZnVsbCwgaXMgdGhlcmUgYW55
IHdheSB0byBzaW11bGF0ZT88YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgVGhhbmtz
IGluIGFkdmFuY2UuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoEFkcmnDoW48YnI+
DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgRWwgbWnDqSwgMzEgYWdvIDIwMjIgYSBsYXMg
MTY6MjIsIFdhZGUgRmlmZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFp
bHRvOndhZGUuZmlmZUBldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj53YWRlLmZpZmVAZXR0dXMu
Y29tPC9hPiZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgT1VUX0ZJRk9fU0laRSBzZXRzIHRoZSBzaXplIG9mIHRoZSBGSUZPIHVzZWQgdG8gYnVm
ZmVyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZGF0YSByZWFkIGZyb20gdGhlIGV4dGVy
bmFsIERSQU0uIEJ1dCB0aGUgdW5pdCBmb3IgdGhpczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoHBhcmFtZXRlciBpcyBsb2cgYmFzZSAyIG9mIHRoZSBzaXplLiBTbywgc2V0dGluZyBpdCB0
byAyMDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoG1lYW5zIHRoZSBvdXRwdXQgRklGTyB3
aWxsIGJlIDJeMjAgd29yZHMgb3IgOCBNaUI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBp
bXBsZW1lbnRlZCBpbiBCUkFNLCB3aGljaCBpcyB0b28gYmlnIGZvciB0aGUgRlBHQSB0bzxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHN1cHBvcnQuIFlvdSBzaG91bGQgcHJvYmFibHkgbGVh
dmUgaXQgYXQgdGhlIGRlZmF1bHQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB2YWx1ZS4g
VGhlIGFtb3VudCBvZiBEUkFNIHRvIHVzZSBmb3IgdGhlIEZJRk8gY2FuIGJlIHNldDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoGJ5IHRoZSBGSUZPX0FERFJfTUFTSyBwYXJhbWV0ZXIuPGJy
Pg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEl0IHNob3VsZCBiZWhhdmUgbGlr
ZSBhIHRydWUgRklGTy4gU28gYW55dGhpbmcgeW91IHdyaXRlPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgdG8gdGhlIGlucHV0IHdpbGwgY29tZSBvdXQgb24gdGhlIG91dHB1dCwgYnV0IHlv
dSBjYW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBidWZmZXIgdXAgdG8gdGhlIHNpemUg
b2YgdGhlIG1lbW9yeSB5b3UgaGF2ZSBjb25maWd1cmVkLjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoEkmIzM5O20gbm90IHN1cmUgSSB1bmRlcnN0YW5kIHlvdXIgYXBwbGljYXRpb24gZXhh
Y3RseSwgYnV0IGlmPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgeW91IG9ubHkgd2FudCB0
byBjYXB0dXJlIGF0IGEgc3BlY2lmaWMgdGltZSwgdGhlbiB5b3U8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqBzaG91bGQgYWRkIGxvZ2ljIHRvIG9ubHkgd3JpdGUgdGhlIGRhdGEgdG8gdGhl
IGlucHV0IG9mPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdGhlIEZJRk8gZHVyaW5nIHRo
b3NlIHRpbWVzIGFuZCB0YWtlIGNhcmUgdG8gaGFuZGxlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgb3ZlcmZsb3cgd2hlbiB0aGUgRklGTyBmaWxscy4gQW5kIGFkZCBsb2dpYyBvbiB0aGUg
b3V0cHV0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdG8gb25seSByZWFkIHdoZW4geW91
IHdhbnQsIHRha2luZyBjYXJlIHRvIGhhbmRsZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oHVuZGVyZmxvdyB3aGVuIHRoZSBGSUZPIGVtcHRpZXMuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoFdhZGU8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgT24gV2VkLCBBdWcgMzEsIDIwMjIgYXQgNDo0MiBBTSBBZHJpw6FuIENhbXBvcyBSYW1vczxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDs8YSBocmVmPSJtYWlsdG86YWRyaWFuLmNh
bXBvc0BpbnRlZ3Jhc3lzLXNhLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmFkcmlhbi5jYW1wb3NAaW50
ZWdyYXN5cy1zYS5jb208L2E+Jmd0OyB3cm90ZTo8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgSGksPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoFRoYW5rIHlvdSB2ZXJ5IG11Y2gsIG5vdyBJIHVuZGVyc3RhbmQgaG93IGl0IHdv
cmtzIGFuZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGl0IHJ1bnMgcGVyZmVj
dGx5LiBIb3dldmVyLCBpdCYjMzk7cyBub3Qgd2hhdCBJIGV4cGVjdGVkPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgc2luY2UgaXQgZG9lcyBub3QgRklGTyBiZWhhdmlvdXIsIG9y
IEkmIzM5O208YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkb2luZ8Kgc29tZXRo
aW5nIHdyb25nLiBXaGF0IEkgbmVlZCBpcyBhIEZJRk8gdGhhdDxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoHN0b3JlcyB0aGUgZGF0YSBvZiBhIHNpZ25hbCB3aGVuIEkgYWN0aXZh
dGUgYSBmbGFnIGFuZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJlYWRzIHdo
ZW4gSSBhY3RpdmF0ZSBhbm90aGVyIGZsYWcgY29udGludW91c2x5IGFuZDxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNvbnN0YW50bHkuIEN1cnJlbnRseSwgSSBoYXZlIHRoZSBG
SUZPIGltcGxlbWVudGVkIGluPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdGhl
IEZQR0EgYnV0IGl0IHRha2VzIHRvbyBtdWNoIHJlc291cmNlcyDCoHNvIEkgd2FudCB0bzxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHRha2UgYWR2YW50YWdlIG9mIHRoZSBFMzIw
IFJBTS4gSSB0aGluayB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBheGlf
cmFtX2ZpZm8gd291bGQgYmUgcGVyZmVjdCBmb3IgbXkgcHJvamVjdCBidXQgYXM8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmYXIgaSBjYW4gc2VlLCB3aGVuIHNwYWNlID0gMCBh
bmQgb2NjdXBpZWQgaXMgZnVsbCwgaXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBzdGFydHMgdG8gbG9zZSB0aGUgY29udGludWl0eS4gT27CoHRoZSBvdGhlciBoYW5kLCBJPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZG9uJiMzOTt0IGtub3cgd2h5IGJ1dCBJ
IGNhbiYjMzk7dMKgIGluY3JlYXNlIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoEZJRk9fT1VUX1NJWkUuIFdpdGggMTAgdGhlcmUgYXJlIG91dHB1dHMgYnV0IGlmIGk8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpbmNyZWFzZSwgZm9yIGV4YW1wbGUsIHRv
IDIwIGl0IGRvZXNuJiMzOTt0Ljxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBJIGF0dGFjaGVkIGEgcGhvdG8gb2YgdGhlIGJlaGF2aW9yIG9mwqB0aGU8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpbnB1dF9maWZvL2ZpZm9fcmFtL3JhbS48YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwMS5wbmc8YnI+DQomZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgRWwgbWFyLCAzMCBhZ28gMjAyMiBhIGxhcyAxOTo1
NCwgV2FkZSBGaWZlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgKCZsdDs8YSBo
cmVmPSJtYWlsdG86d2FkZS5maWZlQGV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPndhZGUuZmlm
ZUBldHR1cy5jb208L2E+Jmd0OykgZXNjcmliacOzOjxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBIZWxsbyBBZHJpw6FuLDxicj4NCiZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBSRUdfRklGT19GVUxMTkVTUyBpcyB0
aGUgbnVtYmVyIG9mIGJ5dGVzIGN1cnJlbnRseTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHN0b3JlZCBpbiB0aGUgUkFNIG9mIHRoZSBGSUZPLjxicj4NCiZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBGSUZPX0FERFJfVyBpcyBhIHRl
c3RiZW5jaCBwYXJhbWV0ZXIgdGhhdCBkZWZpbmVzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgdGhlIGFtb3VudCBvZiBtZW1vcnkgYWRkcmVzcyBzcGFjZSB0byB1c2Ug
Zm9yIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHNpbXVsYXRl
ZCBGSUZPcy4gVGhlIHVubW9kaWZpZWQgdGVzdGJlbmNoIHVzZXMgYTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHNpbmdsZSBtZW1vcnkgdG8gdGVzdCB0d28gRklGT3Mu
IFNvIHRoZSBzdW0gb2YgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgbWVtb3J5IHVzZWQgYnkgYm90aCBGSUZPcyBtdXN0IGJlIGxlc3MgdGhhbiB0aGU8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzaXplIG9mIHRoZSBtZW1vcnkgYmVp
bmcgc2ltdWxhdGVkIGluIG9yZGVyIGZvcjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHRoZSB0ZXN0YmVuY2ggdG8gd29yayAoaS5lLiwgMiAqIDIqKkZJRk9fQUREUl9X
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgbXVzdCBub3QgZXhjZWVk
IDIqKk1FTV9BRERSX1cpLjxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBJTl9GSUZPX1NJWkUgYW5kIE9VVF9GSUZPX1NJWkUgY29udHJvbCB0aGUgc2l6
ZSBvZjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHRoZSBpbnB1dC9v
dXRwdXQgYnVmZmVycyB1c2VkIGJ5IHRoZSBibG9jay4gVGhleTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNhbiBhZmZlY3QgdGhlIHBlcmZvcm1hbmNlIG9mIHRoZSBG
SUZPLCBidXQgbXVzdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJl
IGxhcmdlIGVub3VnaCB0byBob2xkIHR3byBvZiB0aGUgZXhwZWN0ZWQgYnVyc3Q8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBtZW1vcnkgdHJhbnNmZXIgc2l6ZSwgd2hp
Y2ggSSB0aGluayBpcyA1MTIgd29yZHMuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoFRoZSB0ZXN0YmVuY2ggaXMgZmFpbGluZyBiZWNhdXNlIGl0IGV4
cGVjdHMgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgRklGTyB0
byBiZSBlbXB0eSB3aGVuIHRoZSBzaW11bGF0aW9uIGJlZ2lucy48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBQZXJoYXBzIHlvdSBoYXZlIHN0YXJ0ZWQgaW5wdXR0aW5n
IHZhbHVlcyBiZWZvcmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBp
dCB3YXMgZXhwZWN0aW5nIHlvdSB0bz88YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgV2FkZTxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBPbiBUdWUsIEF1ZyAzMCwgMjAyMiBhdCAzOjEzIEFNIEFkcmnDoW4g
Q2FtcG9zPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgUmFtb3MgJmx0
OzxhIGhyZWY9Im1haWx0bzphZHJpYW4uY2FtcG9zQGludGVncmFzeXMtc2EuY29tIiB0YXJnZXQ9
Il9ibGFuayI+YWRyaWFuLmNhbXBvc0BpbnRlZ3Jhc3lzLXNhLmNvbTwvYT4mZ3Q7IHdyb3RlOjxi
cj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBI
aSBldmVyeW9uZSw8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgRmlyc3Qgb2YgYWxsLCB0aGFuayB5b3UgdmVyeSBtdWNoIFJvYiBLb3NzbGVy
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZm9yIHRoZSBl
eHBsYW5hdGlvbi4gSSBtYWRlIGEgJnF1b3Q7Y29udHJvbGxlciZxdW90Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHRoYXQgc2VuZHMgYW5kIHJlY2VpdmVz
IGluZm9ybWF0aW9uIGF0IGNlcnRhaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBwb2ludHMgaW4gdGltZS4gSG93ZXZlciwgSSBhbSBmYWNpbmcgcHJvYmxl
bXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpbiByZWxh
dGlvbiB0b8KgUkVHX0ZJRk9fRlVMTE5FU1MuIEkmIzM5O3ZlIGJlZW48YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjaGFuZ2luZyB0aGUgdmFsdWVzIG9mIEZJ
Rk9fQUREUl9XLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oElOX0ZJRk9fU0laRSBhbmQgT1VUX0ZJRk9fU0laRSBidXQgaXQgZGlkbiYjMzk7dDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHdvcmsuIEZ1cnRoZXJtb3Jl
LCBJIGRvbiYjMzk7dMKgdW5kZXJzdGFuZCB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBwcm9ibGVtIGF0IGFsbCwgaXMgdGhlIGlucHV0IGZpZm8gb3Ig
dGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgb3V0cHV0
IGZpZm8/IG9yIHRoZSByYW0/LiBUaGUgY29udHJvbGxlcjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoG1lbnRpb25lZCBiZWZvcmUgaGFzIG9ubHkgdHdvIGNv
dW50ZXJzLCBvbmUgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBhY3RpdmF0ZSB0aGUgdmFsaWQgZmxhZyB0byBzZW5kIGluZm9ybWF0aW9uPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYW5kIGFub3RoZXIgdG8gYWN0
aXZhdGUgdGhlIHJlYWR5IGZsYWcgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqByZWNlaXZlwqB0aGUgaW5mb3JtYXRpb24gYW5kLCBhcyBmYXIgaSBjb3Vs
ZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHNlZSwgaXQg
d2FzIHdvcmtpbmcgdW50aWwgdGhlIGFzc2VydC48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgVGhpcyBpcyB0aGUgZXJyb3IgdGhhdCByZXR1
cm5zIG1lIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHNpbXVsYXRpb24gKHRoZSBudW1iZXIgdGhhdCBhcHBlYXJzIGluIHRoZTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGltYWdlIGlzIGZvcjrCoGBBU1NFUlRf
RVJST1IodmFsNjQgPT0gMCw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAkc2Zvcm1hdGYoJnF1b3Q7SW5jb3JyZWN0IFJFR19GSUZPX0ZVTExORVNTIHZhbHVl
ITxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCVkJnF1b3Q7
LHZhbDY0KSk7PGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoFNjcmVlbnNob3QgZnJvbSAyMDIyLTA4LTMwIDEwLTEwLTUyLnBuZzxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoE9uIHRoZSBvdGhlciBoYW5k
LCB0aGUgZGF0YSB0aGF0IEkgc2VuZMKgdG8gUkFNPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgaXMgdGhlIHZhbHVlIG9mIGEgY291bnRlci48YnI+DQomZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgSSBob3BlIHlv
dSBjYW4gaGVscCBtZS4gVGhhbmtzIGluIGFkdmFuY2UuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEFkcmnDoW4gQ2FtcG9zPGJyPg0KJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEVsIGp1ZSwg
MTggYWdvIDIwMjIgYSBsYXMgMjI6NDksIFJvYiBLb3NzbGVyPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgKCZsdDs8YSBocmVmPSJtYWlsdG86cmtvc3NsZXJA
bmQuZWR1IiB0YXJnZXQ9Il9ibGFuayI+cmtvc3NsZXJAbmQuZWR1PC9hPiZndDspIGVzY3JpYmnD
szo8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgUmVwbGFjZSAmcXVvdDt1cHN0cmVhbSZxdW90OyB3aXRoICZxdW90O2Rvd25zdHJl
YW0mcXVvdDsgYmVsb3cuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoE9uIFRodSwgQXVnIDE4LCAyMDIyIGF0IDE6MjggUE0gUm9i
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgS29z
c2xlciAmbHQ7PGEgaHJlZj0ibWFpbHRvOnJrb3NzbGVyQG5kLmVkdSIgdGFyZ2V0PSJfYmxhbmsi
PnJrb3NzbGVyQG5kLmVkdTwvYT4mZ3Q7IHdyb3RlOjxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBIaSBBZHJpYW4sPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
QXMgeW91IGluZGljYXRlZCwgdGhlIFJGTm9DIGJsb2Nrczxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGF4aV9yYW1fZmlmbyBhbmQgUmVs
YXkgYm90aCB1c2UgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgRlBHQSBSQU0uwqAgYXhpX3JhbV9maWZvIGRvZXNuJiMzOTt0IG5l
ZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBhbnkgcmVnaXN0ZXJzIGZvciBjb250cm9sIGJlY2F1c2UgaXQ8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBqdXN0IGFjY2VwdHMg
YW4gQVhJIHN0cmVhbSBvbiB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpbnB1dCBhbmQgZm9yd2FyZHMgdGhhdCBleGFjdCBzdHJl
YW08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBvbiB0aGUgb3V0cHV0LiBUaGUgJnF1b3Q7Y29udHJvbCZxdW90OyBpcyBpbiB0aGU8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBB
WEkgdHZhbGlkL3RyZWFkeSBoYW5kc2hha2luZy4gVGh1cyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiB0aGUgdXBzdHJlYW0gYmxv
Y2sgaXMgbm90IHJlYWR5LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoHRoZSBGSUZPIHN0YXJ0cyBmaWxsaW5nIHVwIGJ1dCBkb2VzPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
bm90IGVtcHR5IHVudGlsIHRoZSB1cHN0cmVhbSBibG9jayBpczxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJlYWR5LsKgIEJ1dCwgZm9y
IHRoZSBSZXBsYXkgYmxvY2ssPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgdGhpcyBibG9jayBzdG9yZXMgdGhlIGluY29taW5nIHN0cmVh
bTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoHRvIFJBTSB1bnRpbCB5b3UgbGF0ZXIgZGVjaWRlIHRvIHBsYXk8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpdCBvdXQuwqAgSXQg
Y2FuIGJlIHVzZWQgaW4gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgdHJhbnNtaXQgcGF0aCB0byBsb2FkIGEgd2F2ZWZvcm0gaW50
bzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoFJBTSBzdWNoIHRoYXQgaXQgY2FuIGJlIHBsYXllZCBvdXQgdG88YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0aGUgVHggUmFkaW8g
d2l0aG91dCBhbnkgaGVscCBmcm9tIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGhvc3QgUEMuwqAgT3IsIGl0IGNhbiBiZSB1c2Vk
IGluIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHJlY2VpdmUgcGF0aCB0byBzdG9yZSByZWNlaXZlIHNhbXBsZXM8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBhcyB0aGV5
IGFycml2ZSAodXAgdG8gdGhlIGdpdmVuIFJBTTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoG1lbW9yeSBkZXB0aCkgYW5kIHRoZW4gbGF0
ZXI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBkb3dubG9hZGVkIChwbGF5ZWQgb3V0KSB0byB0aGUgaG9zdCBQQzxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGluIG5vbi1yZWFs
dGltZS48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgV2hpbGUgSSBkb24mIzM5O3Qga25vdyB5b3VyIHNwZWNpZmljPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
YXBwbGljYXRpb24sIEkgd29uZGVyZWQgaWYgdGhlIFJlcGxheTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJsb2NrIChvciB0aGUgYXhp
X3JhbV9maWZvKSBjYW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBhbHJlYWR5IGltcGxlbWVudCB5b3VyIGRlc2lyZWQ8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmdW5jdGlv
bmFsaXR5IHN1Y2ggdGhhdCBhIGN1c3RvbSBibG9jazxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlzIG5vdCBuZWVkZWQuPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgUm9iPGJy
Pg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoE9uIFRodSwgQXVnIDE4LCAyMDIyIGF0IDg6MjUgQU08YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7PGEgaHJlZj0i
bWFpbHRvOmFkcmlhbi5jYW1wb3NAaW50ZWdyYXN5cy1zYS5jb20iIHRhcmdldD0iX2JsYW5rIj5h
ZHJpYW4uY2FtcG9zQGludGVncmFzeXMtc2EuY29tPC9hPiZndDsgd3JvdGU6PGJyPg0KJmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoEkgYW0gbWFraW5nIGEgY3VzdG9tIGJsb2NrIHdoaWNoPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaGFzIHRvIHN0
YXJ0IHN0b3JpbmcgZGF0YSB0byBiZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJlYWQgbGF0ZXIsIGluIG90aGVyIHdvcmRz
IHN0b3JlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgdGhlIGRhdGEgaW4gYSBGSUZPLiBJIGFtPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaW50ZXJlc3Rl
ZCBpbiB1c2luZyB0aGUgUkFNPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHJvdmlkZWQgYnkgdGhlIEUzMjAgc28gSSB3YW50
IHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgdGFrZSBhZHZhbnRhZ2Ugb2YgdGhlIGF4aV9yYW1fZmlmbzxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNv
ZGUuIEhvd2V2ZXIsIEkgZG9uJiMzOTt0IHJlYWxseTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHVuZGVyc3RhbmQgdGhlIGNv
bnRyb2wgb2YgdGhhdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJsb2NrLCBob3cgY2FuIEkgY29udHJvbCB3aGVuIHRvPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgc3RhcnQgd3JpdGluZyBkYXRhIHRvIG1lbW9yeSBhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB3aGVuIHRvIHN0
YXJ0IHJlYWRpbmcgaXQ/IEkgaGF2ZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNoZWNrZWQgdGhlIHJlZ2lzdGVycyBpbiBj
YXNlIGl0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgY291bGQgYmUgY29udHJvbGxlZCBmcm9tIHRoZXJlPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgbGlr
ZSB0aGUgcmVwbGF5IGJsb2NrIHRoYXQgaGFzIHR3bzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJlZ2lzdGVycyB0byBzdGFy
dCByZWFkaW5nIGFuZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGFub3RoZXIgb25lIHRvIGRvIGEgcmVzdGFydCBidXQgSTxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGhhdmVuJiMzOTt0IHNlZW4gYW55dGhpbmcgbGlrZSB0aGF0Ljxicj4NCiZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBJIGhvcGUgeW91IGNhbiBoZWxwIG1lLiBUaGFuayB5b3U8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB2ZXJ5IG11Y2gg
aW4gYWR2YW5jZTxicj4NCiZndDs8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bSIgdGFyZ2V0PSJfYmxhbmsiPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YSBocmVmPSJtYWlsdG86
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX188YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
PC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bTwvYT48YnI+DQomZ3Q7PGJyPg0KJmd0Ozxicj4NCiZndDsgX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQomZ3Q7IFVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDsgVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbTwvYT48YnI+DQo8YnI+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXzxicj4NClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIDxhIGhyZWY9
Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tIiB0
YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0K
PC9ibG9ja3F1b3RlPjwvZGl2PjwvZGl2Pg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX188YnI+DQpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSA8YSBocmVm
PSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbSIg
dGFyZ2V0PSJfYmxhbmsiPnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4N
CjwvYmxvY2txdW90ZT48L2Rpdj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fPGJyPg0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gPGEgaHJlZj0ibWFp
bHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20iIHRhcmdl
dD0iX2JsYW5rIj51c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQo8L2Js
b2NrcXVvdGU+PC9kaXY+DQo=
--000000000000f292e905e8584d88--

--===============7800892614771261927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7800892614771261927==--
