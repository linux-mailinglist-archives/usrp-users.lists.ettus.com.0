Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F199B186DF
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 10:38:44 +0200 (CEST)
Received: from [::1] (port=45524 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOeZY-00081F-82; Thu, 09 May 2019 04:38:36 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:49387)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <zluudg@zluudg.xyz>) id 1hOeZ0-0007uH-EU
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 04:38:32 -0400
X-Originating-IP: 130.229.139.83
Received: from [130.229.139.83] (n139-p83.eduroam.kth.se [130.229.139.83])
 (Authenticated sender: zluudg@zluudg.xyz)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 84B1960003;
 Thu,  9 May 2019 08:37:20 +0000 (UTC)
To: Nick Foster <bistromath@gmail.com>
References: <7f08d2de-bc0f-33f6-7b76-448cfae47524@zluudg.xyz>
 <CA+JMMq_3AtWFOwLq8rGyEDsJC7Q+4Zq=mcnx-+DnWWu3jvka-w@mail.gmail.com>
 <fd306e23-d9f0-5711-e652-751c5b644654@zluudg.xyz>
 <CA+JMMq98w2sij_s3z4pcjGiLtssyhVsMutYW-G9dPipeauv8Gg@mail.gmail.com>
 <341079d0-b6cb-6099-144b-9fda2df67279@zluudg.xyz>
 <CA+JMMq9LkAts63TiJ6VGBt=06ZwMiz1tOG0er630Q+0XvNqpcg@mail.gmail.com>
 <b6524112-7cec-3d0a-1264-70e4e2799bdb@zluudg.xyz>
Message-ID: <b510046f-2c7f-4c67-4e2c-881045898c68@zluudg.xyz>
Date: Thu, 9 May 2019 10:37:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b6524112-7cec-3d0a-1264-70e4e2799bdb@zluudg.xyz>
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] X310 RFNoC transmission issues
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
From: zluudg via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zluudg <zluudg@zluudg.xyz>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============6538424445218821384=="
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

This is a multi-part message in MIME format.
--===============6538424445218821384==
Content-Type: multipart/alternative;
 boundary="------------5942E720F4C3D22DDDE910F5"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5942E720F4C3D22DDDE910F5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I'm back with an update. As I mentioned below, I don't think my CEs are 
the main issue here (I haven't ruled it out completely) so to highlight 
the issue I'm struggling with, I'll try to present a reproducible 
example that does not involve my custom CEs:


Consider the block diagrams seen here: https://imgur.com/a/k3zcaJT.

According to my understanding of this article: 
https://kb.ettus.com/RFNoC, they should be more or less equivalent.

Now consider two FPGA images: The stock image (found in something like 
/usr/local/share/uhd/images) and a "custom" image built with 
uhd_image_builder.py that has the same CEs as the stock image (2x DDC, 
2x DUC, 1x DmaFIFO and 2x Radio, all provided by Ettus) and nothing else 
(no FIFOs or FFTs or any of my own CEs).

The USRP Sink-based TX chain works as expected on both images. However, 
the RFNoC: Radio-based TX chain works on the stock FPGA image but fails 
on the other, the "custom" image. The first time the RFNoC: Radio-based 
chain fails on the "custom" image, everything is just quiet (no error 
messages in GRC and no spike on the spectrum analyzer). Subsequent runs 
will fail with "RuntimeError: RuntimeError: BIST failed! (code: 1)" 
until the USRP is rebooted. The uhd_image_builder.py script finished 
without any errors, such as timing violations or other design rule 
violations.


So, getting back to the original question: Why am I not seeing any 
output while using the RFNoC: Radio-based TX chain on the "custom" 
FPGA-image?


//

Leon


On 2019-05-08 22:40, zluudg wrote:
>
> Ok, I think I have an idea what to look for now. Thanks a lot for the 
> quick replies!
>
>
> //
>
> Leon
>
> On 2019-05-08 22:29, Nick Foster wrote:
>> Anything that might hang the bus. If you don't consume packets, if 
>> you generate packets addressed to the wrong CE, if you don't set 
>> tlast correctly.
>>
>> On Wed, May 8, 2019 at 1:03 PM zluudg <zluudg@zluudg.xyz 
>> <mailto:zluudg@zluudg.xyz>> wrote:
>>
>>     Cool, I'll take a closer look at my CEs then.
>>
>>     What behavior on the main AXI-Stream data interface of a CE would
>>     count as "not playing nicely"? I know that a master may not wait
>>     on the tready-signal of a slave before asserting its
>>     tvalid-signal, but other than that I'm unsure what type of
>>     behavior could cause issues.
>>
>>     //
>>
>>     Leon
>>
>>     On 2019-05-08 21:34, Nick Foster wrote:
>>>     Short answer: yes. If your block isn't playing nicely it can do
>>>     bad things to the NoC crossbar.
>>>
>>>     Best solution is to simulate the whole NoC block.
>>>
>>>     On Wed, May 8, 2019 at 12:20 PM zluudg <zluudg@zluudg.xyz
>>>     <mailto:zluudg@zluudg.xyz>> wrote:
>>>
>>>         I thought that my own CEs was just a sidenote in this
>>>         context since the Gnuradio block diagram I used as an
>>>         example consists solely of Ettus-provided blocks.
>>>
>>>         I have not simulated my RFNoC CEs with Verilog testbenches.
>>>         I have simulated my blocks in a VHDL testbench, but not with
>>>         the RFNoC-generated System Verilog skeleton code. My blocks
>>>         seem to work fine during live testing in RX-only systems,
>>>         though.
>>>
>>>         So as a question back to you, can my custom CEs cause
>>>         trouble for the Ettus-provided CEs (DmaFIFO, DUC, Radio)
>>>         even if they are unused in a block diagram such as the
>>>         example I gave in my previous mail? If so, I'll take a
>>>         closer look at my custom CEs.
>>>
>>>
>>>         //
>>>
>>>         Leon
>>>
>>>         On 2019-05-08 18:41, Nick Foster wrote:
>>>>         Have you simulated your RFNoC CEs with Verilog testbenches?
>>>>
>>>>         On Wed, May 8, 2019 at 8:12 AM zluudg via USRP-users
>>>>         <usrp-users@lists.ettus.com
>>>>         <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>
>>>>             Hello!
>>>>
>>>>             I'm having some issues while trying to transmit a
>>>>             signal using the
>>>>             RFNoC: Radio block in Gnuradio. My block diagram is:
>>>>
>>>>
>>>>                      Signal Source (constant) -> RFNoC: DmaFIFO ->
>>>>             RFNoC: Radio (in
>>>>             TX mode).
>>>>
>>>>
>>>>             I run the block diagram by calling "python
>>>>             top_block.py" from the
>>>>             command line and I'm not getting any errors while it's
>>>>             running .
>>>>             However, I'm unable to quit it properly without having
>>>>             to close the
>>>>             terminal window and power-cycle the USRP. When
>>>>             connecting the USRP to a
>>>>             spectrum analyzer I see no signal whatsoever (I expect
>>>>             to see a peak at
>>>>             2.4 GHz).
>>>>
>>>>
>>>>             Removing the DmaFIFO does not seem to make any
>>>>             difference. My FPGA image
>>>>             is a custom image with some of my CEs, but it was built
>>>>             smoothly using
>>>>             the "uhd_image_builder.py" script. I've also
>>>>             experienced similar
>>>>             problems while having a RFNoC: DUC between the DmaFIFO
>>>>             and the Radio
>>>>             block, also with a custom FPGA image. With the stock
>>>>             FPGA image I was
>>>>             able to get a signal with more or less the same
>>>>             Gnuradio block diagram.
>>>>
>>>>
>>>>             Why am I not seeing any output with my custom FPGA
>>>>             images? All
>>>>             suggestions appreciated.
>>>>
>>>>
>>>>             I'll happily provide more info if needed, so don't
>>>>             hesitate to ask. For
>>>>             know, I'll just provide the basics:
>>>>
>>>>
>>>>                      OS: Ubuntu 18.04
>>>>
>>>>                      uhd: rfnoc-devel, eec24d7b0
>>>>
>>>>                      gnuradio: maint-3.7, c6c575309
>>>>
>>>>                      gr-ettus: master, a909447
>>>>
>>>>
>>>>             Thanks in advance!
>>>>
>>>>             //
>>>>
>>>>             Leon
>>>>
>>>>
>>>>             _______________________________________________
>>>>             USRP-users mailing list
>>>>             USRP-users@lists.ettus.com
>>>>             <mailto:USRP-users@lists.ettus.com>
>>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>

--------------5942E720F4C3D22DDDE910F5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I'm back with an update. As I mentioned below, I don't think my
      CEs are the main issue here (I haven't ruled it out completely) so
      to highlight the issue I'm struggling with, I'll try to present a
      reproducible example that does not involve my custom CEs:</p>
    <p><br>
    </p>
    <p>Consider the block diagrams seen here:
      <a class="moz-txt-link-freetext" href="https://imgur.com/a/k3zcaJT">https://imgur.com/a/k3zcaJT</a>.</p>
    <p>According to my understanding of this article:
      <a class="moz-txt-link-freetext" href="https://kb.ettus.com/RFNoC">https://kb.ettus.com/RFNoC</a>, they should be more or less
      equivalent.</p>
    <p>Now consider two FPGA images: The stock image (found in something
      like /usr/local/share/uhd/images) and a "custom" image built with
      uhd_image_builder.py that has the same CEs as the stock image (2x
      DDC, 2x DUC, 1x DmaFIFO and 2x Radio, all provided by Ettus) and
      nothing else (no FIFOs or FFTs or any of my own CEs).<br>
    </p>
    <p>The USRP Sink-based TX chain works as expected on both images.
      However, the RFNoC: Radio-based TX chain works on the stock FPGA
      image but fails on the other, the "custom" image. The first time
      the RFNoC: Radio-based chain fails on the "custom" image,
      everything is just quiet (no error messages in GRC and no spike on
      the spectrum analyzer). Subsequent runs will fail with
      "RuntimeError: RuntimeError: BIST failed! (code: 1)" until the
      USRP is rebooted. The uhd_image_builder.py script finished without
      any errors, such as timing violations or other design rule
      violations.</p>
    <p><br>
    </p>
    <p>So, getting back to the original question: Why am I not seeing
      any output while using the RFNoC: Radio-based TX chain on the
      "custom" FPGA-image?<br>
    </p>
    <p><br>
    </p>
    <p>//</p>
    <p>Leon<br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2019-05-08 22:40, zluudg wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:b6524112-7cec-3d0a-1264-70e4e2799bdb@zluudg.xyz">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p>Ok, I think I have an idea what to look for now. Thanks a lot
        for the quick replies!</p>
      <p><br>
      </p>
      <p>//</p>
      <p>Leon<br>
      </p>
      <div class="moz-cite-prefix">On 2019-05-08 22:29, Nick Foster
        wrote:<br>
      </div>
      <blockquote type="cite"
cite="mid:CA+JMMq9LkAts63TiJ6VGBt=06ZwMiz1tOG0er630Q+0XvNqpcg@mail.gmail.com">
        <meta http-equiv="content-type" content="text/html;
          charset=UTF-8">
        <div dir="ltr">Anything that might hang the bus. If you don't
          consume packets, if you generate packets addressed to the
          wrong CE, if you don't set tlast correctly.<br>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Wed, May 8, 2019 at 1:03
            PM zluudg &lt;<a href="mailto:zluudg@zluudg.xyz"
              moz-do-not-send="true">zluudg@zluudg.xyz</a>&gt; wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <p>Cool, I'll take a closer look at my CEs then.</p>
              <p>What behavior on the main AXI-Stream data interface of
                a CE would count as "not playing nicely"? I know that a
                master may not wait on the tready-signal of a slave
                before asserting its tvalid-signal, but other than that
                I'm unsure what type of behavior could cause issues.</p>
              <p>//</p>
              <p>Leon<br>
              </p>
              <div class="gmail-m_5757420266047401170moz-cite-prefix">On
                2019-05-08 21:34, Nick Foster wrote:<br>
              </div>
              <blockquote type="cite">
                <div dir="ltr">
                  <div>Short answer: yes. If your block isn't playing
                    nicely it can do bad things to the NoC crossbar.</div>
                  <div><br>
                  </div>
                  <div>Best solution is to simulate the whole NoC block.<br>
                  </div>
                </div>
                <br>
                <div class="gmail_quote">
                  <div dir="ltr" class="gmail_attr">On Wed, May 8, 2019
                    at 12:20 PM zluudg &lt;<a
                      href="mailto:zluudg@zluudg.xyz" target="_blank"
                      moz-do-not-send="true">zluudg@zluudg.xyz</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class="gmail_quote" style="margin:0px 0px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div bgcolor="#FFFFFF">
                      <p>I thought that my own CEs was just a sidenote
                        in this context since the Gnuradio block diagram
                        I used as an example consists solely of
                        Ettus-provided blocks.</p>
                      <p>I have not simulated my RFNoC CEs with Verilog
                        testbenches. I have simulated my blocks in a
                        VHDL testbench, but not with the RFNoC-generated
                        System Verilog skeleton code. My blocks seem to
                        work fine during live testing in RX-only
                        systems, though.<br>
                      </p>
                      <p>So as a question back to you, can my custom CEs
                        cause trouble for the Ettus-provided CEs
                        (DmaFIFO, DUC, Radio) even if they are unused in
                        a block diagram such as the example I gave in my
                        previous mail? If so, I'll take a closer look at
                        my custom CEs.</p>
                      <p><br>
                      </p>
                      <p>//</p>
                      <p>Leon<br>
                      </p>
                      <div
class="gmail-m_5757420266047401170gmail-m_2408284769618447317moz-cite-prefix">On
                        2019-05-08 18:41, Nick Foster wrote:<br>
                      </div>
                      <blockquote type="cite">
                        <div dir="ltr">Have you simulated your RFNoC CEs
                          with Verilog testbenches?<br>
                        </div>
                        <br>
                        <div class="gmail_quote">
                          <div dir="ltr" class="gmail_attr">On Wed, May
                            8, 2019 at 8:12 AM zluudg via USRP-users
                            &lt;<a
                              href="mailto:usrp-users@lists.ettus.com"
                              target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                            wrote:<br>
                          </div>
                          <blockquote class="gmail_quote"
                            style="margin:0px 0px 0px
                            0.8ex;border-left:1px solid
                            rgb(204,204,204);padding-left:1ex">Hello!<br>
                            <br>
                            I'm having some issues while trying to
                            transmit a signal using the <br>
                            RFNoC: Radio block in Gnuradio. My block
                            diagram is:<br>
                            <br>
                            <br>
                                     Signal Source (constant) -&gt;
                            RFNoC: DmaFIFO -&gt; RFNoC: Radio (in <br>
                            TX mode).<br>
                            <br>
                            <br>
                            I run the block diagram by calling "python
                            top_block.py" from the <br>
                            command line and I'm not getting any errors
                            while it's running . <br>
                            However, I'm unable to quit it properly
                            without having to close the <br>
                            terminal window and power-cycle the USRP.
                            When connecting the USRP to a <br>
                            spectrum analyzer I see no signal whatsoever
                            (I expect to see a peak at <br>
                            2.4 GHz).<br>
                            <br>
                            <br>
                            Removing the DmaFIFO does not seem to make
                            any difference. My FPGA image <br>
                            is a custom image with some of my CEs, but
                            it was built smoothly using <br>
                            the "uhd_image_builder.py" script. I've also
                            experienced similar <br>
                            problems while having a RFNoC: DUC between
                            the DmaFIFO and the Radio <br>
                            block, also with a custom FPGA image. With
                            the stock FPGA image I was <br>
                            able to get a signal with more or less the
                            same Gnuradio block diagram.<br>
                            <br>
                            <br>
                            Why am I not seeing any output with my
                            custom FPGA images? All <br>
                            suggestions appreciated.<br>
                            <br>
                            <br>
                            I'll happily provide more info if needed, so
                            don't hesitate to ask. For <br>
                            know, I'll just provide the basics:<br>
                            <br>
                            <br>
                                     OS: Ubuntu 18.04<br>
                            <br>
                                     uhd: rfnoc-devel, eec24d7b0<br>
                            <br>
                                     gnuradio: maint-3.7, c6c575309<br>
                            <br>
                                     gr-ettus: master, a909447<br>
                            <br>
                            <br>
                            Thanks in advance!<br>
                            <br>
                            //<br>
                            <br>
                            Leon<br>
                            <br>
                            <br>
_______________________________________________<br>
                            USRP-users mailing list<br>
                            <a href="mailto:USRP-users@lists.ettus.com"
                              target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                            <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                              rel="noreferrer" target="_blank"
                              moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                          </blockquote>
                        </div>
                      </blockquote>
                    </div>
                  </blockquote>
                </div>
              </blockquote>
            </div>
          </blockquote>
        </div>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------5942E720F4C3D22DDDE910F5--


--===============6538424445218821384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6538424445218821384==--

