Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 148746BE31
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 16:26:43 +0200 (CEST)
Received: from [::1] (port=56590 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnktF-00036E-Ss; Wed, 17 Jul 2019 10:26:41 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:38225)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hnktC-0002xh-8P
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 10:26:38 -0400
Received: by mail-ot1-f53.google.com with SMTP id d17so25242196oth.5
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 07:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NxZ7x8WI01TzdbPKGGs1zAr9QWtxmT+P+hFvhYYrfYI=;
 b=uI56Pil9orW5Q44hz6QUShHWRB1w/06sAqPjpye5XqgCbCMl1V2eiIIdDgYU8oNxrY
 V0/8a5CBVojlNMe8F8DPNPZclAKsttywty8ZEe39AnIPg0XawnoCqBHGWRYLT1IrCg/j
 SFTL1XpFL7Xk7ZQAWWhN3tPAIJJ0ZV9JBes24L/By3YKOCtuRCp8GcgJSlXIQANZNnNT
 hMypWBoH2/01UG9SwusDCaNMjYXn+AKR5th9XUT7RbTW7AuiTxcW+zNVT7t4iOL10gSo
 y4bwwx3bZOT8UOYN37sVV9DtXZXo9vvgM9WgUvvm9jRtapCgdE5qVuRCL1pudlxr+0BN
 xk4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NxZ7x8WI01TzdbPKGGs1zAr9QWtxmT+P+hFvhYYrfYI=;
 b=Z8BRZ28XDTw5kqaC9aC+um6b9H2B6j/nY5XOEQNI1K/m4XIrwNyot6CTGD1AeB7xJR
 2sgNtco8UWvs3YP3DOzM3FqaAO+Ft0+fEfow5GG4fyR62skqW8gjkRAZRxC1kiGoo3Jb
 YpWMVL1a8FxGLt8ltTQtk50DclVP01cDeK2G6bqcSjufPDte3W8F0dOYH1gC4gg0iuOF
 aBPx/e8x4vZbVvspSm9htYz2WS7rwtnTD0ll8nqEPH4QfiRq4DRd/2p5PKOltY1P1T4W
 zYef5DrqOsGN17AXyFMBRNjYcUtl0ss4mijaX/PwAsR6NzmmeHuRYDCirSisa03qOXfY
 hmVg==
X-Gm-Message-State: APjAAAUiCW+yNBuZV8w9hiIZ0TqMfyocdWsf89xJDbumo9DsROWliKW3
 By9xwxrBxZreHqXXmROLKVwMwxROS59JJYTNOIikGMaI
X-Google-Smtp-Source: APXvYqyQrY7OKy90uyVNA5KVuh3cfAiAfXtBfdfF9P4G3219IiCKVxRalbbW00jsiMKfi7pBIfRNLaduvLbBy1fnVeA=
X-Received: by 2002:a9d:5a91:: with SMTP id w17mr725159oth.32.1563373557435;
 Wed, 17 Jul 2019 07:25:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
 <BL0PR12MB2340A337C6CBB311E990C16CAFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com>
 <BL0PR12MB2340682EFC45C0AA255B6AA2AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcSLfxOUFfqoH0EVfJCWxRsrayZV9WnDLSk=Rf-7=pnCYA@mail.gmail.com>
 <BL0PR12MB234037B01F84C36682568490AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcTPgp-yE_DBzDY--wZWdTEw_=NtoGQtVdGbYDoiAmxTtg@mail.gmail.com>
In-Reply-To: <CAOExtcTPgp-yE_DBzDY--wZWdTEw_=NtoGQtVdGbYDoiAmxTtg@mail.gmail.com>
Date: Wed, 17 Jul 2019 07:26:16 -0700
Message-ID: <CAL263iy2k8oXv_LSU6xm4apAg33-nOMxsTLukt0zadjxTxuZTA@mail.gmail.com>
To: Sumit Kumar <cogwsn@gmail.com>
Subject: Re: [USRP-users] Sequence Errors N200
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7525460022418021175=="
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

--===============7525460022418021175==
Content-Type: multipart/alternative; boundary="0000000000008ae3dd058de14548"

--0000000000008ae3dd058de14548
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sumit,

A couple things to address:

1) Enable Thread priority scheduling on your host

Note it is throwing a warning in the output: "[WARNING] [UHD] Unable to set
the thread priority. Performance may be negatively affected."

https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling


2) Adjust your network buffers

"
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
"

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx


What is the command you're using to transmit(which utility and args?)


Regards,
Nate Temple

On Wed, Jul 17, 2019 at 7:06 AM Sumit Kumar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Following is what I am getting after the command you asked to run. The
> 192.168.10.5 gives SSSSSSS.
>
> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.5"
> Creating USRP device from address: addr=3D192.168.10.5
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
> UHD_3.15.0.git-1-gf83faf28
> [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes
> [INFO] [USRP2] Current send frame size: 1472 bytes
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2500000 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2500000 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2500000 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
> [WARNING] [UHD] Unable to set the thread priority. Performance may be
> negatively affected.
> Please see the general application notes in the manual for instructions.
> EnvironmentError: OSError: error in pthread_setschedparam
>
> Fetching current settings from EEPROM...
>     EEPROM ["hardware"] is "2576"
>     EEPROM ["revision"] is ""
>     EEPROM ["product"] is ""
>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:44"
>     EEPROM ["ip-addr"] is "192.168.10.5"
>     EEPROM ["subnet"] is "255.255.255.255"
>     EEPROM ["gateway"] is "255.255.255.255"
>     EEPROM ["gpsdo"] is "none"
>     EEPROM ["serial"] is "E4R14V4UN"
>     EEPROM ["name"] is ""
>
> Power-cycle the USRP device for the changes to take effect.
>
> Done
>
>
> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.3"
> Creating USRP device from address: addr=3D192.168.10.3
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
> UHD_3.15.0.git-1-gf83faf28
> [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes
> [INFO] [USRP2] Current send frame size: 1472 bytes
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2500000 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2500000 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2500000 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
> [WARNING] [UHD] Unable to set the thread priority. Performance may be
> negatively affected.
> Please see the general application notes in the manual for instructions.
> EnvironmentError: OSError: error in pthread_setschedparam
>
> Fetching current settings from EEPROM...
>     EEPROM ["hardware"] is "2576"
>     EEPROM ["revision"] is ""
>     EEPROM ["product"] is ""
>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:42"
>     EEPROM ["ip-addr"] is "192.168.10.3"
>     EEPROM ["subnet"] is "255.255.255.255"
>     EEPROM ["gateway"] is "255.255.255.255"
>     EEPROM ["gpsdo"] is "none"
>     EEPROM ["serial"] is "E4R14V2UN"
>     EEPROM ["name"] is ""
>
> Power-cycle the USRP device for the changes to take effect.
>
> Done
>
>
> On Wed, Jul 17, 2019 at 3:19 PM Jason Matusiak <
> jason@gardettoengineering.com> wrote:
>
>> You are right, the table of revisions was for the X-series
>>
>> try running the command from your prefix:
>> src/uhd/host/build/utils/usrp_burn_mb_eeprom --args=3D"type=3Dn200" --re=
ad-all
>>
>> don't quote me on the type portion, I don't have a board in front of me
>> to see if it is n200 or something else.  I //think// that will report th=
e
>> major and minor revision values (I am grasping at straws here, just tryi=
ng
>> to figure out what the differences might be).
>>
>> You are connecting the ethernet connections to the two devices through
>> the exact same port on your PC?
>>
>> ------------------------------
>> *From:* Sumit Kumar <cogwsn@gmail.com>
>> *Sent:* Wednesday, July 17, 2019 8:24 AM
>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>
>> The sticker  for sbx shows F33612 and F33814.
>> How will this help ?
>>
>>
>> On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak <
>> jason@gardettoengineering.com> wrote:
>>
>> Sumit,
>>
>> OK, the last idea I have:
>>
>> There is a sticker on the back of the N-series devices it *usually* says
>> the version there, but not always.  This has a little info:
>> https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_US=
RP_Devices#N200.2F210_EEPROM
>>
>> Do they match?
>>
>> ------------------------------
>> *From:* Sumit Kumar <cogwsn@gmail.com>
>> *Sent:* Wednesday, July 17, 2019 7:45 AM
>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>
>> Hi Jason,
>>
>> Yes they are consistent, I mean the output of uhd_usrp_probe for both
>> N200 is exactly the same (except the ip, serial and mac addr).
>> I do not know where the problem is! Hardware or software
>>
>> Regards
>> Sumit
>>
>> On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <
>> jason@gardettoengineering.com> wrote:
>>
>> I am not really an N-series guy, so this probably won't be helpful.  Hav=
e
>> you tried doing a uhd_usrp_probe on both devices and seen that the
>> responses are consistent?
>>
>> ------------------------------
>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
>> Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Wednesday, July 17, 2019 7:15 AM
>> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> *Subject:* [USRP-users] Sequence Errors N200
>>
>> Hi,
>> I am trying transmit using Ettus N200 (call it A) but getting this error
>> message on the console
>>
>>
>> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS...............................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...................................
>>
>> I looked for it on google and found these links
>>
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037=
495.html
>>
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/03=
2838.html
>>
>> Both the links  suggested problem related to the gigabit port. Then I
>> connected another USRP N200 (call it B) to the same laptop and tried
>> transmitting using that as there were no such sequence error messages.
>>
>> This makes me believe there is some problem with the first USRP, i.e., A=
.
>>
>> Further I tried with different versions of UHD 3.11, UHD 3.15.. but its
>> the same.
>>
>> Receive is good only transmit is throwing error.
>>
>> Not only with UHD, even in labview, when I transmit, I see nothing comin=
g
>> out from the N200 (A).
>>
>> I am using SBXv2 daughter board.
>>
>> Any clue!
>>
>> Regards
>> --
>> --
>> Sumit kumar
>> Postdoc
>> SnT, Luxembourg
>>
>>
>>
>>
>> --
>> --
>> Sumit kumar
>> Postdoc
>> SnT, Luxembourg
>>
>>
>>
>>
>> --
>> --
>> Sumit kumar
>> Postdoc
>> SnT, Luxembourg
>>
>>
>>
>
> --
> --
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008ae3dd058de14548
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Sumit,<br><br>A couple things to address:<br><br>1) =
Enable Thread priority scheduling on your host<br><br>Note it is throwing a=
 warning in the output: &quot;[WARNING] [UHD] Unable to set the thread prio=
rity. Performance may be negatively affected.&quot;<br><br><a href=3D"https=
://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD=
_and_GNU_Radio)_on_Linux#Thread_priority_scheduling">https://kb.ettus.com/B=
uilding_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_o=
n_Linux#Thread_priority_scheduling</a><br><br><br>2) Adjust your network bu=
ffers<br><br>&quot;<br>[WARNING] [UDP] The send buffer could not be resized=
 sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff=
 size: 1048576 bytes.<br>See the transport application notes on buffer resi=
zing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING=
] [UDP] The send buffer could not be resized sufficiently.<br>Target sock b=
uff size: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See th=
e transport application notes on buffer resizing.<br>Please run: sudo sysct=
l -w net.core.wmem_max=3D2500000<br>&quot;<br><br><a href=3D"https://kb.ett=
us.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx">https://kb.ettus.=
com/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx</a><br><br><br>What i=
s the command you&#39;re using to transmit(which utility and args?)<br><br>=
<br>Regards,<br>Nate Temple<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 7:06 AM Sumit =
Kumar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Following is what I am getting after=
 the command you asked to run. The 192.168.10.5 gives SSSSSSS.=C2=A0<div><b=
r></div><div>john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$ =
./usrp_burn_mb_eeprom --read-all --args &quot;addr=3D192.168.10.5&quot;<br>=
Creating USRP device from address: addr=3D192.168.10.5<br>[INFO] [UHD] linu=
x; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.0.git-1-gf83faf28=
<br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[INFO] [USRP2] Cur=
rent recv frame size: 1472 bytes<br>[INFO] [USRP2] Current send frame size:=
 1472 bytes<br>[WARNING] [UDP] The send buffer could not be resized suffici=
ently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff size: 1=
048576 bytes.<br>See the transport application notes on buffer resizing.<br=
>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UDP] =
The send buffer could not be resized sufficiently.<br>Target sock buff size=
: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transp=
ort application notes on buffer resizing.<br>Please run: sudo sysctl -w net=
.core.wmem_max=3D2500000<br>[WARNING] [UDP] The send buffer could not be re=
sized sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock=
 buff size: 1048576 bytes.<br>See the transport application notes on buffer=
 resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WA=
RNING] [UHD] Unable to set the thread priority. Performance may be negative=
ly affected.<br>Please see the general application notes in the manual for =
instructions.<br>EnvironmentError: OSError: error in pthread_setschedparam<=
br><br>Fetching current settings from EEPROM...<br>=C2=A0 =C2=A0 EEPROM [&q=
uot;hardware&quot;] is &quot;2576&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;revi=
sion&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;product&quot;] i=
s &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;mac-addr&quot;] is &quot;a0:3=
6:fa:26:34:44&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;ip-addr&quot;] is &quot;=
192.168.10.5&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;subnet&quot;] is &quot;25=
5.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gateway&quot;] is &quot;=
255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;] is &quot;=
none&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;serial&quot;] is &quot;E4R14V4UN&=
quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;name&quot;] is &quot;&quot;<br><br>Pow=
er-cycle the USRP device for the changes to take effect.<br><br><div>Done</=
div><div><br></div><div><br></div><div>john@john-Precision-M4600:~/pybombs/=
src/uhd/host/build/utils$ ./usrp_burn_mb_eeprom --read-all --args &quot;add=
r=3D192.168.10.3&quot;<br>Creating USRP device from address: addr=3D192.168=
.10.3<br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; =
UHD_3.15.0.git-1-gf83faf28<br>[INFO] [USRP2] Opening a USRP2/N-Series devic=
e...<br>[INFO] [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2=
] Current send frame size: 1472 bytes<br>[WARNING] [UDP] The send buffer co=
uld not be resized sufficiently.<br>Target sock buff size: 2500000 bytes.<b=
r>Actual sock buff size: 1048576 bytes.<br>See the transport application no=
tes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2=
500000<br>[WARNING] [UDP] The send buffer could not be resized sufficiently=
.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff size: 104857=
6 bytes.<br>See the transport application notes on buffer resizing.<br>Plea=
se run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UDP] The s=
end buffer could not be resized sufficiently.<br>Target sock buff size: 250=
0000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport a=
pplication notes on buffer resizing.<br>Please run: sudo sysctl -w net.core=
.wmem_max=3D2500000<br>[WARNING] [UHD] Unable to set the thread priority. P=
erformance may be negatively affected.<br>Please see the general applicatio=
n notes in the manual for instructions.<br>EnvironmentError: OSError: error=
 in pthread_setschedparam<br><br>Fetching current settings from EEPROM...<b=
r>=C2=A0 =C2=A0 EEPROM [&quot;hardware&quot;] is &quot;2576&quot;<br>=C2=A0=
 =C2=A0 EEPROM [&quot;revision&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPR=
OM [&quot;product&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;mac=
-addr&quot;] is &quot;a0:36:fa:26:34:42&quot;<br>=C2=A0 =C2=A0 EEPROM [&quo=
t;ip-addr&quot;] is &quot;192.168.10.3&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot=
;subnet&quot;] is &quot;255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quo=
t;gateway&quot;] is &quot;255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&q=
uot;gpsdo&quot;] is &quot;none&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;serial&=
quot;] is &quot;E4R14V2UN&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;name&quot;] =
is &quot;&quot;<br><br>Power-cycle the USRP device for the changes to take =
effect.<br><br>Done<div class=3D"gmail-m_-5090455826936873702gmail-yj6qo"><=
/div><div class=3D"gmail-m_-5090455826936873702gmail-adL"><br></div></div><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Wed, Jul 17, 2019 at 3:19 PM Jason Matusiak &lt;<a href=3D"mailto:j=
ason@gardettoengineering.com" target=3D"_blank">jason@gardettoengineering.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
You are right, the table of revisions was for the X-series</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
try running the command from your prefix: src/uhd/host/build/utils/usrp_bur=
n_mb_eeprom=C2=A0--args=3D&quot;type=3Dn200&quot; --read-all</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
don&#39;t quote me on the type portion, I don&#39;t have a board in front o=
f me to see if it is n200 or something else.=C2=A0 I //think// that will re=
port the major and minor revision values (I am grasping at straws here, jus=
t trying to figure out what the differences might
 be).</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
You are connecting the ethernet connections to the two devices through the =
exact same port on your PC?</div>
<div id=3D"gmail-m_-5090455826936873702gmail-m_3403553355508831478Signature=
">
<div>
<div id=3D"gmail-m_-5090455826936873702gmail-m_3403553355508831478appendons=
end"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-5090455826936873702gmail-m_3403553355508831478divRplyFw=
dMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-seri=
f" color=3D"#000000"><b>From:</b> Sumit Kumar &lt;<a href=3D"mailto:cogwsn@=
gmail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 8:24 AM<br>
<b>To:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Sequence Errors N200</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">The sticker=C2=A0 for sbx shows F33612 and F33814.=C2=A0
<div>How will this help ?=C2=A0</div>
<div><br>
</div>
</div>
<br>
<div class=3D"gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmai=
l_quote">
<div dir=3D"ltr" class=3D"gmail-m_-5090455826936873702gmail-m_3403553355508=
831478x_gmail_attr">On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak &lt;<a h=
ref=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@gardet=
toengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-5090455826936873702gmail-m_340355335550883147=
8x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb=
(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Sumit,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
OK, the last idea I have:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
There is a sticker on the back of the N-series devices it=C2=A0<em>usually<=
/em>=C2=A0says the version there, but not always.=C2=A0 This has a little i=
nfo:=C2=A0<a href=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughte=
rcard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM" rel=3D"nofollow" style=3D"c=
olor:rgb(59,115,175)" target=3D"_blank">https://kb.ettus.com/About_the_Moth=
erboard_and_Daughtercard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Do they match?</div>
<div id=3D"gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m=
_6506407344245079092Signature">
<div>
<div id=3D"gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m=
_6506407344245079092appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m=
_6506407344245079092divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11p=
t" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Sumit Kumar =
&lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_blank">cogwsn@gmail.com<=
/a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:45 AM<br>
<b>To:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Sequence Errors N200</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Jason,
<div><br>
<div>Yes they are consistent, I mean the output of uhd_usrp_probe for both =
N200 is exactly=C2=A0the same (except the ip, serial and mac addr).</div>
<div>I do not know where the problem is! Hardware or software=C2=A0</div>
<div><br>
</div>
<div>Regards</div>
<div>Sumit=C2=A0=C2=A0</div>
</div>
</div>
<br>
<div class=3D"gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmai=
l-m_6506407344245079092x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_-5090455826936873702gmail-m_3403553355508=
831478x_gmail-m_6506407344245079092x_gmail_attr">On Wed, Jul 17, 2019 at 1:=
19 PM Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com" t=
arget=3D"_blank">jason@gardettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-5090455826936873702gmail-m_340355335550883147=
8x_gmail-m_6506407344245079092x_gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am not really an N-series guy, so this probably won&#39;t be helpful.=C2=
=A0 Have you tried doing a uhd_usrp_probe on both devices and seen that the=
 responses are consistent?</div>
<div id=3D"gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m=
_6506407344245079092x_gmail-m_9014729813065413461Signature">
<div>
<div id=3D"gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m=
_6506407344245079092x_gmail-m_9014729813065413461appendonsend">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m=
_6506407344245079092x_gmail-m_9014729813065413461divRplyFwdMsg" dir=3D"ltr"=
>
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#00000=
0"><b>From:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.e=
ttus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on b=
ehalf of Sumit Kumar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:15 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Sequence Errors N200</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi,=C2=A0
<div>I am trying transmit using Ettus N200 (call it A) but getting this err=
or message on the console=C2=A0</div>
<div><br>
</div>
<div>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.............................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.....................................<br>
</div>
<div><br>
</div>
<div>I looked for it on google and found these links=C2=A0</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2014-May/037495.html" target=3D"_blank">http://lists.ettus.com/pipermail/u=
srp-users_lists.ettus.com/2014-May/037495.html</a><br>
</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2012-July/032838.html" target=3D"_blank">http://lists.ettus.com/pipermail/=
usrp-users_lists.ettus.com/2012-July/032838.html</a><br>
</div>
<div><br>
</div>
<div>Both the links=C2=A0 suggested problem related to the gigabit port. Th=
en I connected another USRP N200 (call it B) to the same laptop and tried t=
ransmitting using that as there were no such sequence error messages.</div>
<div><br>
</div>
<div>This makes me believe there is some problem with the first USRP, i.e.,=
 A.=C2=A0<br>
</div>
<div><br>
</div>
<div>Further I tried with different versions of UHD 3.11, UHD 3.15.. but it=
s the same.=C2=A0</div>
<div><br>
</div>
<div>Receive is good only transmit is throwing error.=C2=A0</div>
<div><br>
</div>
<div>Not only with UHD, even in labview, when I transmit, I see nothing com=
ing out from the N200 (A).=C2=A0</div>
<div><br>
</div>
<div>I am using SBXv2 daughter board.=C2=A0</div>
<div><br>
</div>
<div>Any clue!</div>
<div><br>
</div>
<div>Regards</div>
<div>-- <br>
<div dir=3D"ltr" class=3D"gmail-m_-5090455826936873702gmail-m_3403553355508=
831478x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461x_gmail_sig=
nature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=
=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px">
<div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div=
>
<div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"gmail-m_-5090455826936873702gmail-m_3403553355508=
831478x_gmail-m_6506407344245079092x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=
=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px">
<div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div=
>
<div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"gmail-m_-5090455826936873702gmail-m_3403553355508=
831478x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=
=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px">
<div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div=
>
<div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-5090455826936873702gmail_signature"><div dir=3D"ltr"><di=
v><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">=
--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px"><div s=
tyle=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>Postdoc</di=
v><div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</d=
iv><div style=3D"color:rgb(136,136,136);font-size:12.8px"><br></div><br></d=
iv></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000008ae3dd058de14548--


--===============7525460022418021175==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7525460022418021175==--

