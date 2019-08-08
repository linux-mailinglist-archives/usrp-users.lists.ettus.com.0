Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E00FF868F0
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 20:40:49 +0200 (CEST)
Received: from [::1] (port=38672 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvnLB-0007ID-Dm; Thu, 08 Aug 2019 14:40:45 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:43669)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hvnL8-0007By-6b
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 14:40:42 -0400
Received: by mail-ot1-f51.google.com with SMTP id j11so22218083otp.10
 for <usrp-users@lists.ettus.com>; Thu, 08 Aug 2019 11:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/5XK9z2AXXzfHEylC9Fh5Ky0fMCy9+4BTMNEeqxK3r0=;
 b=mRokQpPyIrBScg7/OvRyjMe2gwyIeAYLNeSvK1pVjskCXB+nCd9VZ3ukSFiy4q2/Vh
 47SYvDlXZMQoaC1WcX40XHmFTKFHG3ZKDs+dJrKWXqzTUvUFOr3+0axAKtry+oSIz5Rl
 bZHI6up38A9Hd6Z8SjOv21cfBzBJbKPtGHDxl8TC60xHv+Gbqr+ZOOjn3dgVjqNOI7oQ
 Fb6DW2CKM8ngG3GPJlQseUHkkyo2kVf0Ok+xkuC/vLgEPLB6I21lHlNz8j4uploaEuKD
 rJoIbZbxwNl+lXbAFuksuFCNi/X/wjHvidACc/BxfremRybE2Fiz3/V2tNfvcq4Mnjxl
 yryw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/5XK9z2AXXzfHEylC9Fh5Ky0fMCy9+4BTMNEeqxK3r0=;
 b=ph2jvYjtEea7MyGKt6CSJwLDNg3LY21ZCp+Xn7s/xXVYZSc1HwzeZvyx1bDvPN3ocs
 vbOKoe79oc+teWexfvQRKYI/UwAwONxNfIdF1FY6OZZ6Hc+cFcixUMeL3g2qbO2tYBF9
 mr1TGfK/4TgHDwm1kS0anZiEkkXIZgttqX1AuIlUpVZZQkHZA7nzie4wlsfek+ogo5Ok
 O0IEE80ZHlXUHvSu4rnCqesYe4cZBNBmHMbQXMW1PHLG0oJl947yHGppVE2yd5ga4FSY
 0DAIpRV0D0wuqUhf0Hauf/0mLRjEov2byxUqgLqR2dHXfFmVhq747q6twY+1XdeNMtnT
 HCBw==
X-Gm-Message-State: APjAAAXGRvfE20U4ADUIKDG5HGw/MQni8kCt80H4Kuzqms023tUvNmxT
 vvn1uYhhzsgQrja0yR4pwSygLcKNeO95hI3X5MU=
X-Google-Smtp-Source: APXvYqwemEFxiuiz1zTiTeFosZr9l4RMcuLT9xQ+CTya+nRCuxMeVdJ3R1wzBhNib16wutGWXIqcOwG0M7jQQTdCMtE=
X-Received: by 2002:a5d:8252:: with SMTP id n18mr12327237ioo.230.1565289601392; 
 Thu, 08 Aug 2019 11:40:01 -0700 (PDT)
MIME-Version: 1.0
References: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
 <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
 <7C7EB5C4-8843-4D92-9E3A-65126048DA13@yahoo.com>
 <CADRnH22cZXxKQ6OhavSOdN+bob520J4rzHSOMooosdQcaeiSsA@mail.gmail.com>
 <4FF2A237-C699-4270-B467-A926FF39F208@yahoo.com>
In-Reply-To: <4FF2A237-C699-4270-B467-A926FF39F208@yahoo.com>
Date: Thu, 8 Aug 2019 11:35:52 -0700
Message-ID: <CA+JMMq-x7xhKnsYMuG7WwFR7uGui_Fe8HYscO_RyZLkuD97ecw@mail.gmail.com>
To: Royce Connerley <royceconnerley@yahoo.com>
Subject: Re: [USRP-users] RFNoC Polyphase Channelizer updates
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6539059834077237918=="
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

--===============6539059834077237918==
Content-Type: multipart/alternative; boundary="000000000000a96574058f9f622a"

--000000000000a96574058f9f622a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Royce,

Is there a reason you absolutely need it to be done in RFNoC? This is only
5MHz of bandwidth, and any commodity PC should be able to handle
channelizing it in software.

Nick

On Thu, Aug 8, 2019 at 11:19 AM Royce Connerley via USRP-users <
usrp-users@lists.ettus.com> wrote:

> EJ:
>
> I=E2=80=99m currently wanting to receive a total of four channels that ar=
e 12.5
> kHz wide.  The channels are not equally spaced.
>
> F2 =3D F1 + 1 MHz
> F3 =3D F1 + 3.99375 MHz
> F4 =3D F3 + 1 MHz
>
> For this type of system, I typically have a number of channel pairs
> (repeater output and input separated by 1 MHz) that I need to monitor.
>
> Royce
>
> On Aug 8, 2019, at 8:51 AM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>
> Hi Royce,
>
> Can you walk me through your use case real quick?
>
> - How many channels?
> - How wide is each channel?
> - Are the channels equally spaced?
>
> The polyphase channelizer in theseus-cores currently has a static number
> of "max channels" that get instantiated.... which is not insignificant.
> We've discussed exposing a build-time parameter that could scale down the
> max number of channels to save some resources, but 1) that hasn't been
> implemented yet and 2) I'm not totally confident it would fit in the e310
> anyway.
>
> But lets think through your scenario and we can discuss where we'd need
> the channelizer to go for it to work... for example, you probably also ne=
ed
> the FPGA-based channel downselection in the channelizer -- the E310 wont =
be
> able to return all channels in real time! Or, we could consider other
> approaches -- the DDC channelizer in theseus-cores might be workable if y=
ou
> have just small number of channels and you need arbitrary spacing/channel
> widths.
>
> EJ
>
> On Thu, Aug 8, 2019, 8:52 AM Royce Connerley <royceconnerley@yahoo.com>
> wrote:
>
>> EJ:
>>
>> I want to pick a few narrowband channels scattered over about 5 MHz.  I
>> would like to be able to use your channelizer in an E310.  Do you think =
it
>> could fit in the E310=E2=80=99s FPGA?  When I run uhd_image_builder with=
 just the
>> channelizer and a FIFO, I=E2=80=99m seeing the following errors:
>>
>> ERROR: [Place 30-640] Place Check : This design requires more RAMB36/FIF=
O
>> cells than are available in the target device. This design requires 324 =
of
>> such cell types but only 140 compatible sites are available in the targe=
t
>> device. Please analyze your synthesis results and constraints to ensure =
the
>> design is mapped to Xilinx primitives as expected. If so, please conside=
r
>> targeting a larger device.
>> ERROR: [Place 30-640] Place Check : This design requires more RAMB18 and
>> RAMB36/FIFO cells than are available in the target device. This design
>> requires 703 of such cell types but only 280 compatible sites are availa=
ble
>> in the target device. Please analyze your synthesis results and constrai=
nts
>> to ensure the design is mapped to Xilinx primitives as expected. If so,
>> please consider targeting a larger device.
>> ERROR: [Place 30-640] Place Check : This design requires more RAMB36E1
>> cells than are available in the target device. This design requires 324 =
of
>> such cell types but only 140 compatible sites are available in the targe=
t
>> device. Please analyze your synthesis results and constraints to ensure =
the
>> design is mapped to Xilinx primitives as expected. If so, please conside=
r
>> targeting a larger device.
>>
>> Royce Connerley
>>
>> On Jul 24, 2019, at 6:34 PM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>>
>> Hi Royce,
>>
>> Phil and I have been working on the channelizer in the theseus-cores rep=
o
>> here: gitlab.com/theseus-cores/theseus-cores
>>
>> The master branch has a (potentially) working channelizer, at least
>> according to my recent tests on the x310, as long as the network interfa=
ce
>> supports the desired output rate.
>>
>> There's also an fpga solution for channel downselection in a branch that
>> Phil put together. The ball is in my court to turn the crank and merge t=
o
>> master with supporting software, but I haven't gotten much of a chance
>> recently.
>>
>> If you're interested in testing we could definitely use some more people
>> to give it a shot :D Let me know if you need a sample bitstream or if yo=
u
>> can build one yourself.
>>
>> EJ
>>
>> On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC
>>> polyphase channelizer.  Has there been any activity on this?
>>>
>>> Royce Connerley
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a96574058f9f622a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Royce,</div><div><br></div><div>Is there a reason you=
 absolutely need it to be done in RFNoC? This is only 5MHz of bandwidth, an=
d any commodity PC should be able to handle channelizing it in software.</d=
iv><div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019 at 11:19 AM Royce =
Connerley via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div style=3D"overflow-wrap: break-word;">EJ:<div=
><br></div><div>I=E2=80=99m currently wanting to receive a total of four ch=
annels that are 12.5 kHz wide.=C2=A0 The channels are not equally spaced.</=
div><div><br></div><div>F2 =3D F1 + 1 MHz</div><div>F3 =3D F1 + 3.99375 MHz=
</div><div>F4 =3D F3 + 1 MHz</div><div><br></div><div>For this type of syst=
em, I typically have a number of channel pairs (repeater output and input s=
eparated by 1 MHz) that I need to monitor.<br><div><br></div><div>Royce</di=
v><div><br><blockquote type=3D"cite"><div>On Aug 8, 2019, at 8:51 AM, EJ Kr=
einar &lt;<a href=3D"mailto:ejkreinar@gmail.com" target=3D"_blank">ejkreina=
r@gmail.com</a>&gt; wrote:</div><br class=3D"gmail-m_-7668041020443800314Ap=
ple-interchange-newline"><div><div dir=3D"ltr"><div dir=3D"auto">Hi Royce,<=
div dir=3D"auto"><br></div><div dir=3D"auto">Can you walk me through your u=
se case real quick?</div><div dir=3D"auto"><br></div><div dir=3D"auto">- Ho=
w many channels?</div><div dir=3D"auto">- How wide is each channel?</div><d=
iv dir=3D"auto">- Are the channels equally spaced?</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">The polyphase channelizer in theseus-cores curre=
ntly has a static number of &quot;max channels&quot; that get instantiated.=
... which is not insignificant. We&#39;ve discussed exposing a build-time p=
arameter that could scale down the max number of channels to save some reso=
urces, but 1) that hasn&#39;t been implemented yet and 2) I&#39;m not total=
ly confident it would fit in the e310 anyway.=C2=A0</div><div dir=3D"auto">=
<br></div><div>But lets think through your scenario and we can discuss wher=
e we&#39;d need the channelizer to go for it to work... for example, you pr=
obably also need the FPGA-based channel downselection in the channelizer --=
 the E310 wont be able to return all channels in real time! Or, we could co=
nsider other approaches -- the DDC channelizer in theseus-cores might be wo=
rkable if you have just small number of channels and you need arbitrary spa=
cing/channel widths.</div><div><br></div><div>EJ</div></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, =
2019, 8:52 AM Royce Connerley &lt;<a href=3D"mailto:royceconnerley@yahoo.co=
m" target=3D"_blank">royceconnerley@yahoo.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div>EJ:<div><br></div><div>I =
want to pick a few narrowband channels scattered over about 5 MHz.=C2=A0 I =
would like to be able to use your channelizer in an E310.=C2=A0 Do you thin=
k it could fit in the E310=E2=80=99s FPGA?=C2=A0 When I run uhd_image_build=
er with just the channelizer and a FIFO, I=E2=80=99m seeing the following e=
rrors:</div><div><br></div><div><div>ERROR: [Place 30-640] Place Check : Th=
is design requires more RAMB36/FIFO cells than are available in the target =
device. This design requires 324 of such cell types but only 140 compatible=
 sites are available in the target device. Please analyze your synthesis re=
sults and constraints to ensure the design is mapped to Xilinx primitives a=
s expected. If so, please consider targeting a larger device.</div><div>ERR=
OR: [Place 30-640] Place Check : This design requires more RAMB18 and RAMB3=
6/FIFO cells than are available in the target device. This design requires =
703 of such cell types but only 280 compatible sites are available in the t=
arget device. Please analyze your synthesis results and constraints to ensu=
re the design is mapped to Xilinx primitives as expected. If so, please con=
sider targeting a larger device.</div><div>ERROR: [Place 30-640] Place Chec=
k : This design requires more RAMB36E1 cells than are available in the targ=
et device. This design requires 324 of such cell types but only 140 compati=
ble sites are available in the target device. Please analyze your synthesis=
 results and constraints to ensure the design is mapped to Xilinx primitive=
s as expected. If so, please consider targeting a larger device.</div></div=
><div><br></div><div>Royce Connerley</div><div><br><blockquote type=3D"cite=
"><div>On Jul 24, 2019, at 6:34 PM, EJ Kreinar &lt;<a href=3D"mailto:ejkrei=
nar@gmail.com" rel=3D"noreferrer" target=3D"_blank">ejkreinar@gmail.com</a>=
&gt; wrote:</div><br class=3D"gmail-m_-7668041020443800314gmail-m_-79559180=
35240629135m_-4832231494987881177Apple-interchange-newline"><div><div dir=
=3D"auto">Hi Royce,<div dir=3D"auto"><br></div><div dir=3D"auto">Phil and I=
 have been working on the channelizer in the theseus-cores repo here: <a hr=
ef=3D"http://gitlab.com/theseus-cores/theseus-cores" rel=3D"noreferrer" tar=
get=3D"_blank">gitlab.com/theseus-cores/theseus-cores</a></div><div dir=3D"=
auto"><br></div><div dir=3D"auto">The master branch has a (potentially) wor=
king channelizer, at least according to my recent tests on the x310, as lon=
g as the network interface supports the desired output rate.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">There&#39;s also an fpga solution for=
 channel downselection in a branch that Phil put together. The ball is in m=
y court to turn the crank and merge to master with supporting software, but=
 I haven&#39;t gotten much of a chance recently.=C2=A0</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">If you&#39;re interested in testing we could=
 definitely use some more people to give it a shot :D Let me know if you ne=
ed a sample bitstream or if you can build one yourself.</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">EJ</div><div dir=3D"auto"></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul=
 24, 2019, 4:39 PM Royce Connerley via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">At the 2018 GRCon, EJ Kreinar spoke about improvements to the =
RFNoC polyphase channelizer.=C2=A0 Has there been any activity on this?<br>
<br>
Royce Connerley<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div><br></div></blockquote></div>
</div></blockquote></div><br></div></div>__________________________________=
_____________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a96574058f9f622a--


--===============6539059834077237918==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6539059834077237918==--

