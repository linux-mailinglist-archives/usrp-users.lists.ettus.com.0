Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 910C240B7FA
	for <lists+usrp-users@lfdr.de>; Tue, 14 Sep 2021 21:25:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 268D938462F
	for <lists+usrp-users@lfdr.de>; Tue, 14 Sep 2021 15:25:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="NvKbVcla";
	dkim-atps=neutral
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 97DDA384319
	for <usrp-users@lists.ettus.com>; Tue, 14 Sep 2021 15:25:01 -0400 (EDT)
Received: by mail-oo1-f53.google.com with SMTP id v20-20020a4a2554000000b0028f8cc17378so36149ooe.0
        for <usrp-users@lists.ettus.com>; Tue, 14 Sep 2021 12:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7DadcKrCgvF9xfeBe0BBsMlS73b+sBauoMWb4NhXXgY=;
        b=NvKbVclaV+FbYvGv9RbuDRxtcPvtxafwWQ8BSzQ8ZuvV9q5a68V1AXR3sV/yCcJ0Kw
         KDxMKw0SVppaZRxijiHMQY6c66PlTaJMyFRfHapAus5C2kOsv5bYTxBKxmA5+wUxE2Mt
         Lam1zphLJ1EZI8wsDp+TYAfihtr/O4ZcYXlRJegOSBzu4KqKfugGrp1IWU/WZQkCN8Mw
         4+Fe7cJUAZ3LHpIVzAgMS/H+g9tCJyoH/8VzIJ3eLPzu1joEKZK7E1ByeQKp2S1W2WGM
         EGE0AS5fCNBpllDTJDJ7K140ZzgUlzX4E/VjWMCrE2v844uhDt0DG2rgJw/o4OzIVYkD
         j/Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7DadcKrCgvF9xfeBe0BBsMlS73b+sBauoMWb4NhXXgY=;
        b=PsNxdFWml4VjP+qPLCWcf9udahGs7XJ2Us3TOz64P9e/qW0XcNZOW1TTnNo9srWqss
         0UtG0vdUHYyURFQd/h44QYRem9OJKZdQ6giQPDRO3TtPdJzr7lt7XOkbQiP+OllJHsZK
         /RbFKbfWDaOnhjwQx9i+n+tu8kLnDr5+ZyoPWqzolnFdxYB/NvwP8pdbq8grY2NQdJoE
         XwMEqoOjSBJ37VQE227gPY0vvVAq/AnaP1eHc+vApWAPnlQ2mk+kkwWtOvj1Jt05PIxJ
         YK5F6uXWj+74W3Z2VfzwguNIcjyOsSeAPsh5pxqseF4NLwAwXg4mxAavER1NhI/fBNnB
         yDpA==
X-Gm-Message-State: AOAM5315aE7MWhnwiX3M/YWZDYGw+NfxmUTmBXEGuPwDpgbBgc9MSOAQ
	LY+9tmkbiVqWdvPaUJcYtoNI6FmQnklyi9dOQotssBSy
X-Google-Smtp-Source: ABdhPJwr6p2C9lEX52zNXJr2a8tWTwytgoh59BR3EDnJcPGXx11biTsK6KWS9VVzAcVGDWPg7ODFJlv5CMHaLbbH2JE=
X-Received: by 2002:a4a:ad4f:: with SMTP id s15mr15301398oon.85.1631647500858;
 Tue, 14 Sep 2021 12:25:00 -0700 (PDT)
MIME-Version: 1.0
References: <ab0a8f479cc74e59a05b0d764c9cfee3@gtri.gatech.edu>
 <a2b2443a10404d1280c409b81b832274@gtri.gatech.edu> <d843f624eb3c4220bfdb1201a623f8eb@gtri.gatech.edu>
 <CAB__hTSud6zU8AoAW5Yy9VgmwZ1zG-pBhEgn1bJcMoi55j222Q@mail.gmail.com>
In-Reply-To: <CAB__hTSud6zU8AoAW5Yy9VgmwZ1zG-pBhEgn1bJcMoi55j222Q@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 14 Sep 2021 14:24:45 -0500
Message-ID: <CAFche=gagSNoBjqEJ1WkOJf5jpCX8_uFYy8NkdE45vKJUgbP2g@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: KIPU36CF4YGXELQ6PRL4FJOMYWVKRJIW
X-Message-ID-Hash: KIPU36CF4YGXELQ6PRL4FJOMYWVKRJIW
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc 4.0 gain block tutorial --> register problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KIPU36CF4YGXELQ6PRL4FJOMYWVKRJIW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8572908879637781413=="

--===============8572908879637781413==
Content-Type: multipart/alternative; boundary="000000000000b0043305cbf9896e"

--000000000000b0043305cbf9896e
Content-Type: text/plain; charset="UTF-8"

Hi Jeff,

I agree with Rob that "=" should be "<=" but I don't think that's causing
any harm here. I copied and pasted your code into the gain example and
tested it, and it seems to work as I expected. So there's probably
something wrong that's unrelated to that code snippet. Take a look at the
gain example to see what's different in yours. I would also suggest
simulating your code rather than resorting to chipscope. You can use the
example gain testbench as a starting point.

https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain.v
https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain_tb.sv

The reset should be asserted when the graph is first initialized, so you
should not be able to read the initial value of the register
(REG_USER_DEFAULT), only the reset value (REG_USER_DEFAULT2). If that reset
isn't happening then perhaps there's something wrong with the reset
connection or the clock connection. Also, it's usually good practice to
make the reset and initial value the same. Some FPGAs don't really support
them being different, although I think this is supported on Xilinx 7 Series.

Thanks,

Wade

On Mon, Sep 13, 2021 at 3:03 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Jeff,
> I am mostly a novice at FPGA development, but I have created a few blocks
> in rfnoc 4.0 with multiple registers and they seem to behave properly. One
> thing I noticed in your original post below is that when you assign the
> value REG_USER_DEFAULT2, you use "=" rather than "<=". It seems it should
> be the latter.  I don't really know what issues, if any, this would cause.
> Rob
>
> On Mon, Sep 13, 2021 at 1:07 PM Hodges, Jeff via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I'm now convinced there is something majorly wrong with UHD4.0
>> controlport.  Not only am I experiencing the issue I have described here
>> but if I create an image with two write registers (0x0 and 0x4) it works,
>> but if I create two write registers addresses of 0x4 and 0x8, it fails both
>> read and write.
>>
>>
>> Is anyone using this UHD4.0? I never had these problems with UHD3.15.  I'm
>> building for the X310.
>>
>>
>> I can try to debug with chipscope but that is a pain and would rather not
>> do waste time if someone else has already identified the source of this
>> problem.
>>
>>
>> Thanks,
>>
>>
>> Jeff
>> ------------------------------
>> *From:* Hodges, Jeff via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Monday, September 13, 2021 11:48:06 AM
>> *To:* usrp-users@lists.ettus.com
>> *Subject:* [USRP-users] Re: rfnoc 4.0 gain block tutorial --> register
>> problem
>>
>>
>> I can read and write from register addr 0x0 but the default value read
>> from peek32(0x0) is 0 regardless of what I set the REG_USER_DEFAULT value
>> to.
>>
>>
>> This only occurs on register addr 0x0.
>>
>>
>> Jeff
>>
>>
>> ------------------------------
>> *From:* Hodges, Jeff via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Saturday, September 11, 2021 5:02 PM
>> *To:* usrp-users@lists.ettus.com
>> *Subject:* [USRP-users] rfnoc 4.0 gain block tutorial --> register
>> problem
>>
>>
>> Following the gain block tutorial from GRCON20, when I read from the
>> registers using gain_block->regs().peek32(0x0), the default value that is
>> return is not the same as set during reset. The default value I read is
>> always 0 even when my verilog sets it to some other value after rebuilding
>> the image.
>>
>>
>> Has anyone seen this behavior?
>>
>>
>> Also i am having problems with other FPGA builds involving the registers
>> to please tell me if something is wrong with rfnoc 4.0 controlport.
>>
>> All i've done is taken the default gain block and added another default
>> value after reset:
>>
>>
>>
>>   localparam REG_USER_ADDR    = 0; // Address for example user register
>>   localparam REG_USER_DEFAULT = 1; // Default value for user register
>>   localparam REG_USER_DEFAULT2 = 2; //Default value for user register
>> after reset
>>
>>   reg [31:0] reg_user = REG_USER_DEFAULT;
>>
>>   always @(posedge ctrlport_clk) begin
>>     if (ctrlport_rst) begin
>>       reg_user = REG_USER_DEFAULT2;
>>     end else begin
>>       // Default assignment
>>       m_ctrlport_resp_ack <= 0;
>>
>>       // Read user register
>>       if (m_ctrlport_req_rd) begin // Read request
>>         case (m_ctrlport_req_addr)
>>           REG_USER_ADDR: begin
>>             m_ctrlport_resp_ack  <= 1;
>>             m_ctrlport_resp_data <= reg_user;
>>           end
>>         endcase
>>       end
>>
>>       // Write user register
>>       if (m_ctrlport_req_wr) begin // Write requst
>>         case (m_ctrlport_req_addr)
>>           REG_USER_ADDR: begin
>>             m_ctrlport_resp_ack <= 1;
>>             reg_user            <= m_ctrlport_req_data[31:0];
>>           end
>>         endcase
>>       end
>>     end
>>   end
>>
>>
>> Jeff
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b0043305cbf9896e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jeff,</div><div><br></div><div>I agree with Rob th=
at &quot;=3D&quot; should be &quot;&lt;=3D&quot; but I don&#39;t think that=
&#39;s causing any harm here. I copied and pasted your code into the gain e=
xample and tested it, and it seems to work as I expected. So there&#39;s pr=
obably something wrong that&#39;s unrelated to that code snippet. Take a lo=
ok at the gain example to see what&#39;s different in yours. I would also s=
uggest simulating your code rather than resorting to chipscope. You can use=
 the example gain testbench as a starting point.</div><div><br></div><div><=
a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/rf=
noc-example/fpga/rfnoc_block_gain/rfnoc_block_gain.v">https://github.com/Et=
tusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_ga=
in/rfnoc_block_gain.v</a></div><div><a href=3D"https://github.com/EttusRese=
arch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfno=
c_block_gain_tb.sv">https://github.com/EttusResearch/uhd/blob/master/host/e=
xamples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain_tb.sv</a></div=
><div><br></div><div>The reset should be asserted when the graph is first i=
nitialized, so you should not be able to read the initial value of the regi=
ster (REG_USER_DEFAULT), only the reset value (REG_USER_DEFAULT2). If that =
reset isn&#39;t happening then perhaps there&#39;s something wrong with the=
 reset connection or the clock connection. Also, it&#39;s usually good prac=
tice to make the reset and initial value the same. Some FPGAs don&#39;t rea=
lly support them being different, although I think this is supported on Xil=
inx 7 Series.</div><div><br></div><div>Thanks,</div><div><br></div><div>Wad=
e<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, Sep 13, 2021 at 3:03 PM Rob Kossler &lt;<a href=3D"mailt=
o:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Jeff=
,<div>I am mostly a novice at FPGA development, but I have created a few bl=
ocks in rfnoc 4.0 with multiple registers and they seem to behave properly.=
 One thing I noticed in your original post below is that when you assign th=
e value=C2=A0REG_USER_DEFAULT2, you use &quot;=3D&quot; rather than &quot;&=
lt;=3D&quot;. It seems it should be the latter.=C2=A0 I don&#39;t really kn=
ow what issues, if any, this would cause.</div><div>Rob</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 13=
, 2021 at 1:07 PM Hodges, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">

<div id=3D"gmail-m_-332466019450191388gmail-m_5548596774417990564divtagdefa=
ultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,He=
lvetica,sans-serif" dir=3D"ltr">
<p>I&#39;m now convinced there is something majorly wrong with UHD4.0 contr=
olport.=C2=A0 Not only am I experiencing the issue I have described here bu=
t if I create an image with two write registers (0x0 and 0x4) it works, but=
 if I create two write registers addresses
 of 0x4 and 0x8, it fails both read and write.</p>
<p><br>
Is anyone using this UHD4.0? I never had these problems with UHD3.15. =C2=
=A0<span>I&#39;m building for the X310.</span></p>
<p><br>
</p>
<p>I can try to debug with chipscope but that is a pain and would rather no=
t do waste time if someone else has already identified the source of this p=
roblem.<br>
</p>
<p><br>
</p>
<p>Thanks,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-332466019450191388gmail-m_5548596774417990564divRplyFwd=
Msg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif=
" color=3D"#000000"><b>From:</b> Hodges, Jeff via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt;<br>
<b>Sent:</b> Monday, September 13, 2021 11:48:06 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: rfnoc 4.0 gain block tutorial --&gt; regis=
ter problem</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_-332466019450191388gmail-m_5548596774417990564divtagdefa=
ultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,He=
lvetica,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI E=
moji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&q=
uot;,EmojiSymbols" dir=3D"ltr">
<p>I can read and write from register addr 0x0 but the default value read f=
rom peek32(0x0) is 0 regardless of what I set the REG_USER_DEFAULT value to=
.<br>
</p>
<p><br>
</p>
<p>This only occurs on register addr 0x0.<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-332466019450191388gmail-m_5548596774417990564divRplyFwd=
Msg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif=
" color=3D"#000000"><b>From:</b> Hodges, Jeff via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt;<br>
<b>Sent:</b> Saturday, September 11, 2021 5:02 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] rfnoc 4.0 gain block tutorial --&gt; register =
problem</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_-332466019450191388gmail-m_5548596774417990564divtagdefa=
ultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-famil=
y:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quo=
t;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;And=
roid Emoji&quot;,EmojiSymbols">
<p>Following the gain block tutorial from GRCON20, when I read from the reg=
isters using gain_block-&gt;regs().peek32(0x0), the default value that is r=
eturn is not the same as set during reset. The default value I read is alwa=
ys 0 even when my verilog sets it to
 some other value after rebuilding the image.</p>
<p><br>
</p>
<p>Has anyone seen this behavior?<br>
</p>
<p><br>
</p>
<p>Also i am having problems with other FPGA builds involving the registers=
 to please tell me if something is wrong with rfnoc 4.0 controlport.<br>
<br>
All i&#39;ve done is taken the default gain block and added another default=
 value after reset:<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p></p>
<div>=C2=A0 localparam REG_USER_ADDR=C2=A0=C2=A0=C2=A0 =3D 0; // Address fo=
r example user register<br>
=C2=A0 localparam REG_USER_DEFAULT =3D 1; // Default value for user registe=
r<br>
=C2=A0 localparam REG_USER_DEFAULT2 =3D 2; //Default value for user registe=
r after reset<br>
<br>
=C2=A0 reg [31:0] reg_user =3D REG_USER_DEFAULT;<br>
<br>
=C2=A0 always @(posedge ctrlport_clk) begin<br>
=C2=A0=C2=A0=C2=A0 if (ctrlport_rst) begin<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg_user =3D REG_USER_DEFAULT2;<br>
=C2=A0=C2=A0=C2=A0 end else begin<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Default assignment<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 m_ctrlport_resp_ack &lt;=3D 0;<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Read user register<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (m_ctrlport_req_rd) begin // Read request=
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case (m_ctrlport_req_addr)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_USER_ADDR: begin=
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 m_ctrlpo=
rt_resp_ack=C2=A0 &lt;=3D 1;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 m_ctrlpo=
rt_resp_data &lt;=3D reg_user;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 end<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 endcase<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 end<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Write user register<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (m_ctrlport_req_wr) begin // Write requst=
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case (m_ctrlport_req_addr)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_USER_ADDR: begin=
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 m_ctrlpo=
rt_resp_ack &lt;=3D 1;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg_user=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &lt;=3D =
m_ctrlport_req_data[31:0];<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 end<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 endcase<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 end<br>
=C2=A0=C2=A0=C2=A0 end<br>
=C2=A0 end<br>
<br>
</div>
<br>
<p></p>
<p>Jeff<br>
</p>
</div>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b0043305cbf9896e--

--===============8572908879637781413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8572908879637781413==--
