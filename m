Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E7118E409
	for <lists+usrp-users@lfdr.de>; Sat, 21 Mar 2020 20:40:50 +0100 (CET)
Received: from [::1] (port=52116 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFjzB-00049H-Ng; Sat, 21 Mar 2020 15:40:45 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:40496)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cinaed.simson@gmail.com>)
 id 1jFQNz-00007N-9W
 for usrp-users@lists.ettus.com; Fri, 20 Mar 2020 18:45:03 -0400
Received: by mail-pl1-f195.google.com with SMTP id h11so3114184plk.7
 for <usrp-users@lists.ettus.com>; Fri, 20 Mar 2020 15:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language;
 bh=WVweS6j3Xac2HKE7AbdHv+09glwrY6nRgWGatrCzitc=;
 b=lqdY12HGJTVTNBL9ZvswHZw3aGG/vXSNtWHGskTbbn0xbVCQwhQt6Css3CV3lgyUvP
 IIcR8OlvEOnNgm3jMf7+QwAKzD2jZ17QPBARTSCD/zpgtN40A2BVs1gjK23dcwIlR5mb
 GPTFsSn08LZqskOiyVnfirWnpSbfEzqdhePn87BtxhqrUisSpWILaB0NiVQKukVfBl+l
 cY25B0E7m6ojPoN95O4sLTDzcwVrI9Qap0nAe1wOt2oa6mUkJnre7mdb35qAI52B/Bl8
 4SxHv7QPG08iHfJqjXLpD5BA75C/02pepuSRBXJp7qxJ+n68p3gn+hgtJrR5GBXA6bAE
 1YnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language;
 bh=WVweS6j3Xac2HKE7AbdHv+09glwrY6nRgWGatrCzitc=;
 b=J3UvKIu73zz6VVUCj71BMa8yuy0zIsMCe8ySIIwxYPm2gRPKsiMg0825B0Mv0ZhNby
 Fh+eBETcTDO9U3vgEWB1EYBQrOtbwZEQa/9YWIx8I1PmBtcGYkCbBVAEedtxqcFST2Uf
 6MPCYvCe37SEgwlCqnNi4iKM/8BeEp9GQO0LKOHjbzbZ55NprbdnytYxZkr97P8YpwfP
 1M3sPxt1c5zRsG9ZryQ+qaJ9jk0VOBQ1pKDZXZSmenT/yFZnn7Itb64Et9Ht6DqKtmBx
 1Xnm9XQK+o3XcMZh/8FLhw2A4n7DuO0AeLzkzffwIs5h1vG/dn3TXAomiONz5Ppja5Rx
 V13g==
X-Gm-Message-State: ANhLgQ0VL78+n6EYLP8RA2cZlkmAqkHI2eZvQH6hrjKW7gFCq1QNYC+1
 VIzwq9hy3HSvt25DKzjz4tCLitw=
X-Google-Smtp-Source: ADFU+vuOP3xcjO6/6b6ZguONgbQ48GAivobBuQGMGoduS/HBpw8SUN/3bvXxyD9vPrSK+zfDxnCVyw==
X-Received: by 2002:a17:90a:b395:: with SMTP id
 e21mr12205313pjr.103.1584744261925; 
 Fri, 20 Mar 2020 15:44:21 -0700 (PDT)
Received: from [10.0.0.16] (c-76-103-30-197.hsd1.ca.comcast.net.
 [76.103.30.197])
 by smtp.gmail.com with ESMTPSA id s12sm6072579pgi.38.2020.03.20.15.44.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Mar 2020 15:44:21 -0700 (PDT)
To: Rodolphe Bertolini <bertolini.rodolphe@gmail.com>
References: <CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com>
 <1661e285-c25d-8272-0e49-1d0f896033b4@comcast.net>
 <CAKaLowQZETbs6g=Ry5wGxuV7cJRM7eQWKmh1zyDDtHLrYuOxvQ@mail.gmail.com>
 <0d486110-0f4a-9605-ae9a-b68075c797e5@ettus.com>
 <dcddce1b-6d5c-9139-d2c9-61f88dfd1743@eurecom.fr>
 <CAKaLowTQ3GEHZgksydU0pVm1ewHQjR810ZcVZObfLedX9w53+w@mail.gmail.com>
 <00072490-e939-e531-5917-aa617f204ada@ettus.com>
 <CAKaLowQkki_q1HSij8gmtusRJtkOzDP3pbKvQhKj9Sz1syRuEQ@mail.gmail.com>
 <f57b84f3-22dd-629a-cfa3-4e3bbe01cf5e@gmail.com>
 <CAKaLowTYMnyzOL4zYpmzAMEGE9j5GfPKgWYQKJpvs07QHMonYw@mail.gmail.com>
 <cf3f3450-64ad-4ed9-3180-0e4025dfaf03@gmail.com>
 <CAKaLowQYC2G5LjSYszfTA4HTrJVC5XfVZmRdTPx0gibb40LLPg@mail.gmail.com>
Autocrypt: addr=cinaed.simson@gmail.com; keydata=
 xsFNBF5cdPABEACmkLp2IFMyNAyaQrgDrs+J39NGDpayrFzXpcdWV0lZTgkRk7AkbLEjyq8O
 UMqGBpslEdvqEDH9l7wuXSr+JVqw1i5BiLZK6SBD4g6l6ZkZOeuv5dVsM5O5O3n73ABATq7x
 NcOQoCu6UQm8WIZIfLZ0gTXGnWuXb/nC5UOCWXvHlPbKd+k99XT5KMmaEsubkr6NF26WwR4A
 EXpwFkE5tnebtRB69PN+WD6Eibx4ID3BoucU+43aNVQCCmaUX1Ck4MwCqGBsm7jyh5gcoMMb
 RGGRHUSMEUDDaVby8vsrhcVGOewGvPoQPSgh0tAO+oZ9H8RWNcXDgSiNRks+okdIXbUhto6O
 kMlTbZr5TiaJFD4kBPnAmoL8pivNep6w/P0qENotAjJtpylG8EFwDz6/q68Asi0DIUtsNOiB
 qalPhoCx+2bR72tDcJgjF9d+98P+XtU1sN4LoxsRQqB8hzPo+veo3vGk0tMXowddBig3cMNk
 XPXW78fVB34QZ9zQalU9dMe+KMCPJ5VaIrTpQRv/3VS7Ptg4Wm4lfHyVIBw6aVruseoCrZRW
 HIgdu1NkmF5X9xedgCOjxJbCyqf6F8NDon2hMu2EdcYHyyc4Wi2F2guTw1tsW2UuTgB6BKQX
 RH6lGJMb7xWLbT0MEVEe1dYXakYm4vHwc8lOlxPJeRC3BiYcxwARAQABzSdDaW5hZWQgU2lt
 c29uIDxjaW5hZWQuc2ltc29uQGdtYWlsLmNvbT7CwX8EEwEIACkFAl5cdPACGyMFCQHhM4AH
 CwkIBwMCAQYVCAIJCgsEFgIDAQIeAQIXgAAKCRDfb4CasVt5aAGiD/9xdMByAgpWTuc6Y1Lj
 kwzWzOu8s6UGOogS621VJlSiWBX7waqgH714X2ab237zaowC+jiiZ0NYy41krgVOC2qXuNdQ
 +k6Unb/L0GWKKqUYQFLAKDnFY2o/L8IKAIJ5pfwrIHhRsITAcMcxBQ36zOYYyCiKes/FzZkC
 C/9GYsy6pWXmQjaBuA0ghYhf1ua07/nHu7GeBFyPoTCvHJ6PmxpacS0IICfy6/0ZlF49WCcb
 hUB6e7qGj7teVCvLYBDdz5M33l12s2oWLfNai1Mzkzb6waXm2UaE0PXbubYSRIByhu1epa3o
 Tu8fdy9KaExdk+IKWExUS/VBNlwrgM067L/Aw3ObKRbaLKhd5xET3+mGTZ2SoztBp1pCUv4s
 CWIOINcpTbYGO3MuP8IFA1WHvC+UAAq5aCKf7YoXOv0xS7x4IpxCzEKz2zbGyh6PCc1WTGmf
 lWU9oUM+X4HMUzTd3wyNONEI1xnrYRj4HaPCikTDoWi/ezHAPkbx5wihyBSVp/y532Ym9ZZ+
 VeE2Ned4djHByEVu4UknLqAIN2Gu6HYQhLdw8nNsZ8oqkpkCFSL6wUTRbqmTYXGe4mIqCYAc
 5rEODTQS2Q2+WahdzkSKL7rMmgVf/mJLLEisus1cEl+H9DbjG7gRNBj9zy3kWkWIrrgSoF/w
 d2ykGmZZv0OPGndRys7BTQReXHTwARAArPSwWQi/7FVOnTwEmEBumFNW3eypcZxOvsh8zd7P
 hpcVu2DV9I/X9d5hWAxEO6gCORKIvU28pdu7om3WNtlVpWTp+Ry7h97sNybWIBKH4Lbnm1Op
 oj9h54ZXzqL9IxKZWqG9Y9Rfd5rHF2LwV00K1dwJw2H1p7dDd4HabXLvl6XcG0FH9vQfhZ5W
 Gfn71Ogy84FW0ot6+WTDBHFZO1p6Fj2/ynOhciIWq5aSX1csxWDqaCSqIn/qgtwXEGnirMIY
 bOytEsoPs2A05h9syZAvvy9lgILhE2vKy7mdwThCP8or0O16f6fDHvUtXtuLI8HBZQLPm/x/
 6pltTeOhNAW3PsxULO20GevWfZD3CJ1QSjD1fO3qdH970TWvEV2/HDM9JVfCuLv86MLYRy3R
 dCMu3XFOmEgvePWCNYOOPhfDZHMJo8Ss0e8s02p6GlFpMk4wrfBuiTb5+XSAUXVQyMLAy8Pt
 wmHRScC5gE927suOtPIdU1yytM5RmJFnHEIJf1/jwIU5B/R/turOMvN/7rq5bS5cS6P0iotK
 H1+66nJJc7PE+lE1zDzDRVeadEaaHyVALNyOx7ex8sFXk9yG5sDmCggbTpT9yNYwANBOFOOa
 HIg09gyqrNBh9N7eFM6DF5BB54t4L41QbTfZpkSFT3M9mUQ6M/Q0W+XYYwByjXq5pC0AEQEA
 AcLBZQQYAQgADwUCXlx08AIbDAUJAeEzgAAKCRDfb4CasVt5aAGgEACbmKA/9wx8T1akBx1m
 BqGa+GOqd1W8iI8dCZoNq76K/UuD2K8b/VcOR9aj0YbZsrrbvCml9I/ViGwDLK7NIjU47QfS
 mug7998yIEMDBmhwsJbdqORJ2wPYa+QSVXpxWNvgJWtu1xM0whadGqPLRqmp9AG7Bzt9i4fa
 znY4Srknda9vgtFo7tR0MuKc6IrAVPKZXHFTC44ipCyP/f2wVGU7zy7y057y02slaj7fn+YD
 uTcZv6heD1eevZAARySgyG0j8mHbH6yyJ/ineibiPTneIVLtJtxin1aD2hDvN7H0i8TDeXWk
 ilmce9ySfARTgdEl4SJAMU959pg9rNFQd0sXKXbK075JrVv8G+nxoD6jul7mBHt812I9/q2k
 wXA2hS78VHDlLuBLKvrzhv29ZFN1I271thp6zWRIiDGoTWRb7FJXdyk2yEhKhTwIWB4BMJP+
 oTNOoZa2PvhifJQ14g3s42SVH3tqVLZOF6R+kgDCC4DyNBAcHhsvqEwKkDQ1sqm+kLU3vXJh
 M3bDp7xxszWxMonC969JH786zBPr8IFirqYS4B0KOEXW4sOoNSaSz5U78LWUeYySwJrEbkSx
 Lc6Z38kvsYyw0fxSCagTA6m38460K8IDeEkeVTKqYCVBFNjY4td6xBFVAut8WsPRD6RHZPXU
 tgKEmwfIndcGZvKmEA==
Message-ID: <a61b1b5d-9dd3-9d73-2937-425fee0fe494@gmail.com>
Date: Fri, 20 Mar 2020 15:44:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKaLowQYC2G5LjSYszfTA4HTrJVC5XfVZmRdTPx0gibb40LLPg@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Sat, 21 Mar 2020 15:40:42 -0400
Subject: Re: [USRP-users] Apologize if duplicate : UHD 3.15 isn't using USB
 3.0 although Linux driver are loaded
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Cinaed Simson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cinaed Simson <cinaed.simson@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8884441856845910334=="
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
--===============8884441856845910334==
Content-Type: multipart/alternative;
 boundary="------------37B2CAC07937717B63B0B3B0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------37B2CAC07937717B63B0B3B0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Rodolphe - the implicit assumption is you don't any other USB devices
plugged into the computer - other then the keyboard and the mouse.

And the Linux OS is running on bare metal and not running in a VM.

Assuming the above is true, then to get from the USRP into the computer,
you need to confirm that both the USB3 port is working and the USB3 wire
is working.

You've confirmed the USB3 port is working correctly,=C2=A0 but you haven'=
t
confirmed the USB3 wire is working correctly.=C2=A0

Also, if a connected device is sensed to be a low speed USB2 device,
then it's unlikely the USB2 device is going to be using the high speed
USB3 bus.

-- Cinaed

On 3/20/20 1:17 AM, Rodolphe Bertolini wrote:
> Hello Cinaed,
>
> During the tests I use a USB 3.0 stick that behaves same as the USRP :
> with an other computer, both are well recognized as 3.0, but not in
> the erroneous machine. I don't think that neither USB stick, neither
> USRP USB cable are faulty.
>
> The output for both USB stickand USRP gives is:
> =C2=A0 bcdUSB =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2.10
>
> Also for both :
> =C2=A0 Device can operate at SuperSpeed (5Gbps)
>
> USB ports are on bus 1.
> However, something strange : when USB stick is plugged in (bus 1) at
> boot time, it is often detected in bus 2 as SuperSpeed (so as 3.0),
> then it is also detected in bus 1, and finally disconnected from bus
> 2. I don't touch it during those 3 steps that span over half a second.
>
> I am completely lost.
>
> Thank you !
> Regards,
> Rodolphe
>
> Le=C2=A0jeu. 19 mars 2020 =C3=A0=C2=A020:15, Cinaed Simson <cinaed.sims=
on@gmail.com
> <mailto:cinaed.simson@gmail.com>> a =C3=A9crit=C2=A0:
>
>     Hi Rodolphe - you need to type
>
>     =C2=A0 =C2=A0 lsusb
>
>     and find your USRP device ID.
>
>     For instance, for my HackRF lsusb indicates it's ID is:
>
>     =C2=A0 Bus 003 Device 003: ID 1d50:6089 OpenMoko, Inc. Great Scott
>     Gadgets HackRF One SDR
>
>     Then I would type
>
>     =C2=A0 lsusb -v -d 1d50:6089
>
>     Once you have the output for you USRP device, look for the entry
>
>     =C2=A0 bcdUSB
>
>     My HackRF has USB2 interface but it's plugged into a USB3 port and
>     lsusb indicates
>
>     =C2=A0 bcdUSB 2
>
>     It the problem persists, you may have to swap out the cable - it
>     could be a cable problem.
>
>     -- Cinaed
>
>     On 3/19/20 1:06 AM, Rodolphe Bertolini wrote:
>>     Cinaed,
>>
>>     Thank you.
>>     Output is empty (except at FIXME warning : "FIXME: alloc bigger
>>     buffer for device capability descriptors").
>>     However, without filtering I have something like this :
>>
>>     Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>>     Device Descriptor:
>>     =C2=A0 bLength =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A018
>>     =C2=A0 bDescriptorType =C2=A0 =C2=A0 =C2=A0 =C2=A0 1
>>     =C2=A0 bcdUSB =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 3.1=
0
>>     ...
>>     =C2=A0 =C2=A0 =C2=A0 bInterfaceProtocol =C2=A0 =C2=A0 =C2=A00 Full=
 speed (or root) hub
>>
>>     I think that this bus is USB 3.0 capable, but for some reason the
>>     "superspeed" is not activated.
>>     Also no information about data rate is given about this bus.
>>
>>     Regards,
>>     Rodolphe
>>
>>     Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A020:29, Cinaed Simson via USR=
P-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     a =C3=A9crit=C2=A0:
>>
>>         A USB3 port is=C2=A0 SuperSpeed port.
>>
>>         For a quick check, try
>>
>>         =C2=A0 lsusb -v | grep 5Gbps
>>
>>         to confirm you have at least 1 working USB3 port.
>>
>>         And then you can check the port speed where the device is
>>         connected using lsusb -v.
>>
>>         -- Cinaed
>>
>>
>>
>>         On 3/18/20 7:36 AM, Rodolphe Bertolini via USRP-users wrote:
>>>         Marcus,
>>>         USB plug is rotated (from row is at top), but yes I get the
>>>         exact same port as your.
>>>         Thank you
>>>         Regards,
>>>         Rodolphe
>>>
>>>         Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A016:20, Marcus M=C3=BCll=
er via USRP-users
>>>         <usrp-users@lists.ettus.com
>>>         <mailto:usrp-users@lists.ettus.com>> a =C3=A9crit=C2=A0:
>>>
>>>             Hi Rodolphe,
>>>
>>>             considering this is as confusing to me as to you: I took
>>>             a picture of my
>>>             USB3 port. When looking at an oblique angle at yours, do
>>>             you see the
>>>             five front-row bronze/gold contacts shown in the
>>>             attached photo?
>>>
>>>             Best regards,
>>>             Marcus
>>>
>>>             On 18.03.20 14:33, Rodolphe Bertolini via USRP-users wrot=
e:
>>>             > Thanks to both of you.
>>>             >
>>>             > The port is black, but it has been working for few
>>>             months until I
>>>             > shutdown / change session (I can't log back to
>>>             previous session for
>>>             > reasons) so I believe that the port by itself isn't
>>>             the bad guy.
>>>             >
>>>             > It keeps appearing as USB 2 ("high-speed") when I plug
>>>             it and also when
>>>             > I run uhd_find_devices
>>>             >
>>>             > @Cedric I made sure to plug at max both ends
>>>             >
>>>             > Thank you again
>>>             > Regards,
>>>             > Rodolphe
>>>             >
>>>             > Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A015:02, Cedric Rou=
x via USRP-users
>>>             > <usrp-users@lists.ettus.com
>>>             <mailto:usrp-users@lists.ettus.com>
>>>             <mailto:usrp-users@lists.ettus.com
>>>             <mailto:usrp-users@lists.ettus.com>>> a =C3=A9crit=C2=A0:=

>>>             >
>>>             >=C2=A0 =C2=A0 =C2=A0Hi,
>>>             >
>>>             >=C2=A0 =C2=A0 =C2=A0be also sure to plug the cable firml=
y on both
>>>             >=C2=A0 =C2=A0 =C2=A0ends. I've seen it more than once wi=
th a cable
>>>             >=C2=A0 =C2=A0 =C2=A0"half-plugged" and then it becomes u=
sb2, not usb3.
>>>             >
>>>             >=C2=A0 =C2=A0 =C2=A0My 2 cents.
>>>             >
>>>             >=C2=A0 =C2=A0 =C2=A0Regards,
>>>             >=C2=A0 =C2=A0 =C2=A0C=C3=A9dric.
>>>             >
>>>             >=C2=A0 =C2=A0 =C2=A0On 3/18/20 2:54 PM, Marcus M=C3=BCll=
er via USRP-users
>>>             wrote:
>>>             >=C2=A0 =C2=A0 =C2=A0> Hi Rodolphe,
>>>             >=C2=A0 =C2=A0 =C2=A0>
>>>             >=C2=A0 =C2=A0 =C2=A0> first of all, check whether you're=
 actually
>>>             dealing with a USB3
>>>             >=C2=A0 =C2=A0 =C2=A0port. I
>>>             >=C2=A0 =C2=A0 =C2=A0> know, sounds strange, but if it's =
not blue and
>>>             doesn't have more than
>>>             >=C2=A0 =C2=A0 =C2=A0> four visible contacts, it's not
>>>             standard-compliant USB3. The fact that
>>>             >=C2=A0 =C2=A0 =C2=A0> it's attached to a xHCI doesn't it=
self mean it
>>>             can do USB3.
>>>             >=C2=A0 =C2=A0 =C2=A0>
>>>             >=C2=A0 =C2=A0 =C2=A0> Then, I can't quite remember wheth=
er the USB
>>>             controller on the B200
>>>             >=C2=A0 =C2=A0 =C2=A0> would even register as USB3 before=
 the initial
>>>             firmware is loaded. Try
>>>             >=C2=A0 =C2=A0 =C2=A0> the following: In one terminal win=
dow, run
>>>             `dmesg -Hwx`. Plug in the
>>>             >=C2=A0 =C2=A0 =C2=A0> USRP, and see how it appears on th=
e bus (it
>>>             seems, as USB2 high-speed
>>>             >=C2=A0 =C2=A0 =C2=A0> device). After that, in another te=
rminal, you'd run
>>>             >=C2=A0 =C2=A0 =C2=A0`uhd_find_devices`,
>>>             >=C2=A0 =C2=A0 =C2=A0> and see whether the device re-enum=
erates as USB3
>>>             SuperSpeed device.
>>>             >=C2=A0 =C2=A0 =C2=A0>
>>>             >=C2=A0 =C2=A0 =C2=A0> Best regards,
>>>             >=C2=A0 =C2=A0 =C2=A0> Marcus
>>>             >=C2=A0 =C2=A0 =C2=A0>
>>>             >=C2=A0 =C2=A0 =C2=A0> On 18.03.20 13:43, Rodolphe Bertol=
ini via
>>>             USRP-users wrote:
>>>             >=C2=A0 =C2=A0 =C2=A0>> Hello Ron, (I resend the email, I=
 forgot to
>>>             "reply to all")
>>>             >=C2=A0 =C2=A0 =C2=A0>> Thank you for your quick feedback=
=2E
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>> Ok I understand. More information=
, lspci gives me :
>>>             >=C2=A0 =C2=A0 =C2=A0>> 00:14.0 USB controller: Intel Cor=
poration
>>>             Cannon Lake PCH USB 3.1
>>>             >=C2=A0 =C2=A0 =C2=A0xHCI
>>>             >=C2=A0 =C2=A0 =C2=A0>> Host Controller (rev 10)
>>>             >=C2=A0 =C2=A0 =C2=A0>> So I don't get why doesn't Ubuntu=
 enables USB
>>>             3.0 with the B210.
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>> My problems looks like this one
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0
>>>             =C2=A0http://lists.ettus.com/pipermail/usrp-users_lists.e=
ttus.com/2018-July/057323.html
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>> The output of lsusb -t is similar=
, with
>>>             "Driver=3D(none)"
>>>             >=C2=A0 =C2=A0 =C2=A0>> A message of above mentioned thre=
ad suggests to
>>>             enable 3.0 option in
>>>             >=C2=A0 =C2=A0 =C2=A0>> BIOS, however I don't have such o=
ption. And
>>>             even if I had, I
>>>             >=C2=A0 =C2=A0 =C2=A0didn't not
>>>             >=C2=A0 =C2=A0 =C2=A0>> change anything between reboot / =
session switch
>>>             so I really don't
>>>             >=C2=A0 =C2=A0 =C2=A0>> understand where this regression =
is coming from.
>>>             >=C2=A0 =C2=A0 =C2=A0>> Also I did the "solution" mention=
ed by the author :
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>> uhd_image_loader --args=3D"type=3D=
b200,reset"
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>> Which did not improve the situati=
on.
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>> Thank you again
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>> Rodolphe
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>> Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=
=A012:02, Ron Economos via
>>>             USRP-users
>>>             >=C2=A0 =C2=A0 =C2=A0>> <usrp-users@lists.ettus.com
>>>             <mailto:usrp-users@lists.ettus.com>
>>>             <mailto:usrp-users@lists.ettus.com
>>>             <mailto:usrp-users@lists.ettus.com>>
>>>             >=C2=A0 =C2=A0 =C2=A0<mailto:usrp-users@lists.ettus.com
>>>             <mailto:usrp-users@lists.ettus.com>
>>>             >=C2=A0 =C2=A0 =C2=A0<mailto:usrp-users@lists.ettus.com
>>>             <mailto:usrp-users@lists.ettus.com>>>> a =C3=A9crit=C2=A0=
:
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0dmesg should s=
ay "new SuperSpeed USB device
>>>             number X using
>>>             >=C2=A0 =C2=A0 =C2=A0xhci_hcd"
>>>             >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0or "new SuperS=
peed Gen 1 USB device number
>>>             X using xhci_hcd"
>>>             >=C2=A0 =C2=A0 =C2=A0if you
>>>             >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0have a newer k=
ernel.
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0"high-speed" m=
eans USB 2.0.
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0Ron
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0On 3/18/20 03:=
41, Rodolphe Bertolini via
>>>             USRP-users wrote:
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0Dear all,
>>>             >=C2=A0 =C2=A0 =C2=A0>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0I have been u=
sing a USRP B210 on a laptop
>>>             for months now. For
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0reasons, I sw=
itched to another Linux
>>>             session, and using this
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0session UHD f=
ails to talk to B210 over USB 3.0
>>>             >=C2=A0 =C2=A0 =C2=A0>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0dmesg tells m=
e it is using the xhci_hcd
>>>             driver (which I
>>>             >=C2=A0 =C2=A0 =C2=A0believe is
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0the driver fo=
r USB 3.0), and is also
>>>             mentioning=C2=A0 "new high-speed
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0USB", which l=
eads me to think that USB 3.0
>>>             link is well
>>>             >=C2=A0 =C2=A0 =C2=A0recognized
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0and active:
>>>             >=C2=A0 =C2=A0 =C2=A0>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.1=
33028] usb 1-1: new high-speed USB
>>>             device number 16
>>>             >=C2=A0 =C2=A0 =C2=A0using
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0xhci_hcd
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.2=
60349] usb 1-1: New USB device
>>>             found, idVendor=3D2500,
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0idProduct=3D0=
020
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.2=
60351] usb 1-1: New USB device
>>>             strings: Mfr=3D1,
>>>             >=C2=A0 =C2=A0 =C2=A0Product=3D2,
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0SerialNumber=3D=
3
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.2=
60352] usb 1-1: Product: USRP B200
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.2=
60354] usb 1-1: Manufacturer:
>>>             Ettus Research LLC
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.2=
60355] usb 1-1: SerialNumber: 31B9289
>>>             >=C2=A0 =C2=A0 =C2=A0>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0However, when=
 running any uhd command
>>>             line, it fails using
>>>             >=C2=A0 =C2=A0 =C2=A0USB 3.0:
>>>             >=C2=A0 =C2=A0 =C2=A0>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[INFO] [UHD] =
linux; GNU C++ version 5.4.0
>>>             20160609;
>>>             >=C2=A0 =C2=A0 =C2=A0Boost_105800;
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0UHD_3.15.0.0-=
release
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[INFO] [B200]=
 Detected Device: B210
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[INFO] [B200]=
 Operating over USB 2.
>>>             >=C2=A0 =C2=A0 =C2=A0>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0I have also t=
ried with UHD 3.14.1, no
>>>             improvement.
>>>             >=C2=A0 =C2=A0 =C2=A0>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0I remember ha=
ving a similar issue (maybe
>>>             the same?) that had
>>>             >=C2=A0 =C2=A0 =C2=A0been
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0solved with s=
omething related to udev, but
>>>             I sadly didn't
>>>             >=C2=A0 =C2=A0 =C2=A0take any
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0note of this.=

>>>             >=C2=A0 =C2=A0 =C2=A0>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0Do you have a=
ny hint?
>>>             >=C2=A0 =C2=A0 =C2=A0>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0Thank you.
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0Regards,
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0Rodolphe
>>>             >=C2=A0 =C2=A0 =C2=A0>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0
>>>             =C2=A0_______________________________________________
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0USRP-users ma=
iling list
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0USRP-users@li=
sts.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             >=C2=A0 =C2=A0 =C2=A0<mailto:USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>>
>>>             >=C2=A0 =C2=A0 =C2=A0<mailto:USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             <mailto:USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0
>>>             >=C2=A0 =C2=A0
>>>             =C2=A0=C2=A0http://lists.ettus.com/mailman/listinfo/usrp-=
users_lists.ettus.com
>>>             >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0______________=
_________________________________
>>>             >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0USRP-users mai=
ling list
>>>             >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0USRP-users@lis=
ts.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             >=C2=A0 =C2=A0 =C2=A0<mailto:USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>>
>>>             >=C2=A0 =C2=A0 =C2=A0<mailto:USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             <mailto:USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0
>>>             >=C2=A0 =C2=A0
>>>             =C2=A0=C2=A0http://lists.ettus.com/mailman/listinfo/usrp-=
users_lists.ettus.com
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>> _________________________________=
______________
>>>             >=C2=A0 =C2=A0 =C2=A0>> USRP-users mailing list
>>>             >=C2=A0 =C2=A0 =C2=A0>> USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             <mailto:USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>>
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com
>>>             >=C2=A0 =C2=A0 =C2=A0>>
>>>             >=C2=A0 =C2=A0 =C2=A0>
>>>             >=C2=A0 =C2=A0 =C2=A0> __________________________________=
_____________
>>>             >=C2=A0 =C2=A0 =C2=A0> USRP-users mailing list
>>>             >=C2=A0 =C2=A0 =C2=A0> USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             <mailto:USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>>
>>>             >=C2=A0 =C2=A0 =C2=A0>
>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com
>>>             >=C2=A0 =C2=A0 =C2=A0>
>>>             >
>>>             >
>>>             >=C2=A0 =C2=A0 =C2=A0____________________________________=
___________
>>>             >=C2=A0 =C2=A0 =C2=A0USRP-users mailing list
>>>             >=C2=A0 =C2=A0 =C2=A0USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             <mailto:USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>>
>>>             >=C2=A0 =C2=A0
>>>             =C2=A0http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com
>>>             >
>>>             >
>>>             > _______________________________________________
>>>             > USRP-users mailing list
>>>             > USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             >
>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com
>>>             >
>>>             _______________________________________________
>>>             USRP-users mailing list
>>>             USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com
>>>
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list
>>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com=
>
>>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>=

>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
=2Ecom
>>

--------------37B2CAC07937717B63B0B3B0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Rodolphe - the implicit assumption is you don't any other USB
      devices plugged into the computer - other then the keyboard and
      the mouse. <br>
    </p>
    <p>And the Linux OS is running on bare metal and not running in a
      VM.<br>
    </p>
    <p>Assuming the above is true, then to get from the USRP into the
      computer, you need to confirm that both the USB3 port is working
      and the USB3 wire is working. <br>
    </p>
    <p>You've confirmed the USB3 port is working correctly,  but you
      haven't confirmed the USB3 wire is working correctly. </p>
    <p>Also, if a connected device is sensed to be a low speed USB2
      device, then it's unlikely the USB2 device is going to be using
      the high speed USB3 bus.</p>
    <p>-- Cinaed<br>
    </p>
    <div class="moz-cite-prefix">On 3/20/20 1:17 AM, Rodolphe Bertolini
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAKaLowQYC2G5LjSYszfTA4HTrJVC5XfVZmRdTPx0gibb40LLPg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hello Cinaed,</div>
        <div><br>
        </div>
        <div>During the tests I use a USB 3.0 stick that behaves same as
          the USRP : with an other computer, both are well recognized as
          3.0, but not in the erroneous machine. I don't think that
          neither USB stick, neither USRP USB cable are faulty.<br>
        </div>
        <div><br>
        </div>
        <div>The output for both USB stickand USRP gives is:</div>
        <div>  bcdUSB               2.10</div>
        <div><br>
        </div>
        <div>Also for both :</div>
        <div>  Device can operate at SuperSpeed (5Gbps)<br>
        </div>
        <div><br>
        </div>
        <div>USB ports are on bus 1.<br>
        </div>
        <div>However, something strange : when USB stick is plugged in
          (bus 1) at boot time, it is often detected in bus 2 as
          SuperSpeed (so as 3.0), then it is also detected in bus 1, and
          finally disconnected from bus 2. I don't touch it during those
          3 steps that span over half a second.</div>
        <div><br>
        </div>
        <div>I am completely lost.</div>
        <div><br>
        </div>
        <div>Thank you !</div>
        <div>Regards,</div>
        <div>Rodolphe<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">Le jeu. 19 mars 2020 à 20:15,
          Cinaed Simson &lt;<a href="mailto:cinaed.simson@gmail.com"
            moz-do-not-send="true">cinaed.simson@gmail.com</a>&gt; a
          écrit :<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>Hi Rodolphe - you need to type</p>
            <p>    lsusb <br>
            </p>
            <p>and find your USRP device ID. <br>
            </p>
            For instance, for my HackRF lsusb indicates it's ID is:<br>
            <p>  Bus 003 Device 003: ID 1d50:6089 OpenMoko, Inc. Great
              Scott Gadgets HackRF One SDR</p>
            <p>Then I would type <br>
            </p>
            <p>  lsusb -v -d 1d50:6089</p>
            <p>Once you have the output for you USRP device, look for
              the entry <br>
            </p>
            <p>  bcdUSB <br>
            </p>
            <p>My HackRF has USB2 interface but it's plugged into a USB3
              port and lsusb indicates</p>
            <p>  bcdUSB 2</p>
            <p>It the problem persists, you may have to swap out the
              cable - it could be a cable problem.<br>
            </p>
            <p>-- Cinaed<br>
            </p>
            <div>On 3/19/20 1:06 AM, Rodolphe Bertolini wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">
                <div>Cinaed,</div>
                <div><br>
                </div>
                <div>Thank you.</div>
                <div>Output is empty (except at FIXME warning : "FIXME:
                  alloc bigger buffer for device capability
                  descriptors").</div>
                <div>However, without filtering I have something like
                  this :</div>
                <div><br>
                </div>
                <div>Bus 002 Device 001: ID 1d6b:0003 Linux Foundation <span
                    style="color:rgb(255,0,0)">3.0 </span>root hub<br>
                  Device Descriptor:<br>
                    bLength                18<br>
                    bDescriptorType         1<br>
                  <span style="color:rgb(255,0,0)">  bcdUSB            
                      3.10</span><br>
                </div>
                <div>...</div>
                <div><span style="color:rgb(255,0,0)">     
                    bInterfaceProtocol      0 Full speed (or root) hub</span></div>
                <div><span style="color:rgb(255,0,0)"><br>
                  </span></div>
                <div><span style="color:rgb(255,0,0)"><font
                      color="#000000">I think that this bus is USB 3.0
                      capable, but for some reason the "superspeed" is
                      not activated.</font><br>
                  </span></div>
                <div><span style="color:rgb(0,0,0)">Also no information
                    about data rate is given about this bus.</span></div>
                <div><span style="color:rgb(0,0,0)"><br>
                  </span></div>
                <div><span style="color:rgb(0,0,0)">Regards,</span></div>
                <div><span style="color:rgb(0,0,0)">Rodolphe</span><br>
                </div>
              </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">Le mer. 18 mars 2020
                  à 20:29, Cinaed Simson via USRP-users &lt;<a
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                  a écrit :<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <p>A USB3 port is  SuperSpeed port.</p>
                    <p>For a quick check, try<br>
                    </p>
                    <p>  lsusb -v | grep 5Gbps</p>
                    <p>to confirm you have at least 1 working USB3 port.<br>
                    </p>
                    <p>And then you can check the port speed where the
                      device is connected using lsusb -v.</p>
                    <p>-- Cinaed</p>
                    <p><br>
                    </p>
                    <p><br>
                    </p>
                    <div>On 3/18/20 7:36 AM, Rodolphe Bertolini via
                      USRP-users wrote:<br>
                    </div>
                    <blockquote type="cite">
                      <div dir="ltr">
                        <div>Marcus,</div>
                        <div>USB plug is rotated (from row is at top),
                          but yes I get the exact same port as your.</div>
                        <div>Thank you<br>
                        </div>
                        <div>Regards,</div>
                        <div>Rodolphe<br>
                        </div>
                      </div>
                      <br>
                      <div class="gmail_quote">
                        <div dir="ltr" class="gmail_attr">Le mer. 18
                          mars 2020 à 16:20, Marcus Müller via
                          USRP-users &lt;<a
                            href="mailto:usrp-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                          a écrit :<br>
                        </div>
                        <blockquote class="gmail_quote"
                          style="margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">Hi
                          Rodolphe,<br>
                          <br>
                          considering this is as confusing to me as to
                          you: I took a picture of my<br>
                          USB3 port. When looking at an oblique angle at
                          yours, do you see the<br>
                          five front-row bronze/gold contacts shown in
                          the attached photo?<br>
                          <br>
                          Best regards,<br>
                          Marcus<br>
                          <br>
                          On 18.03.20 14:33, Rodolphe Bertolini via
                          USRP-users wrote:<br>
                          &gt; Thanks to both of you.<br>
                          &gt; <br>
                          &gt; The port is black, but it has been
                          working for few months until I<br>
                          &gt; shutdown / change session (I can't log
                          back to previous session for<br>
                          &gt; reasons) so I believe that the port by
                          itself isn't the bad guy.<br>
                          &gt; <br>
                          &gt; It keeps appearing as USB 2
                          ("high-speed") when I plug it and also when<br>
                          &gt; I run uhd_find_devices<br>
                          &gt; <br>
                          &gt; @Cedric I made sure to plug at max both
                          ends<br>
                          &gt; <br>
                          &gt; Thank you again<br>
                          &gt; Regards,<br>
                          &gt; Rodolphe<br>
                          &gt; <br>
                          &gt; Le mer. 18 mars 2020 à 15:02, Cedric Roux
                          via USRP-users<br>
                          &gt; &lt;<a
                            href="mailto:usrp-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>
                          &lt;mailto:<a
                            href="mailto:usrp-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;&gt;
                          a écrit :<br>
                          &gt; <br>
                          &gt;     Hi,<br>
                          &gt; <br>
                          &gt;     be also sure to plug the cable firmly
                          on both<br>
                          &gt;     ends. I've seen it more than once
                          with a cable<br>
                          &gt;     "half-plugged" and then it becomes
                          usb2, not usb3.<br>
                          &gt; <br>
                          &gt;     My 2 cents.<br>
                          &gt; <br>
                          &gt;     Regards,<br>
                          &gt;     Cédric.<br>
                          &gt; <br>
                          &gt;     On 3/18/20 2:54 PM, Marcus Müller via
                          USRP-users wrote:<br>
                          &gt;     &gt; Hi Rodolphe,<br>
                          &gt;     &gt;<br>
                          &gt;     &gt; first of all, check whether
                          you're actually dealing with a USB3<br>
                          &gt;     port. I<br>
                          &gt;     &gt; know, sounds strange, but if
                          it's not blue and doesn't have more than<br>
                          &gt;     &gt; four visible contacts, it's not
                          standard-compliant USB3. The fact that<br>
                          &gt;     &gt; it's attached to a xHCI doesn't
                          itself mean it can do USB3.<br>
                          &gt;     &gt;<br>
                          &gt;     &gt; Then, I can't quite remember
                          whether the USB controller on the B200<br>
                          &gt;     &gt; would even register as USB3
                          before the initial firmware is loaded. Try<br>
                          &gt;     &gt; the following: In one terminal
                          window, run `dmesg -Hwx`. Plug in the<br>
                          &gt;     &gt; USRP, and see how it appears on
                          the bus (it seems, as USB2 high-speed<br>
                          &gt;     &gt; device). After that, in another
                          terminal, you'd run<br>
                          &gt;     `uhd_find_devices`,<br>
                          &gt;     &gt; and see whether the device
                          re-enumerates as USB3 SuperSpeed device.<br>
                          &gt;     &gt;<br>
                          &gt;     &gt; Best regards,<br>
                          &gt;     &gt; Marcus<br>
                          &gt;     &gt;<br>
                          &gt;     &gt; On 18.03.20 13:43, Rodolphe
                          Bertolini via USRP-users wrote:<br>
                          &gt;     &gt;&gt; Hello Ron, (I resend the
                          email, I forgot to "reply to all")<br>
                          &gt;     &gt;&gt; Thank you for your quick
                          feedback.<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt; Ok I understand. More
                          information, lspci gives me :<br>
                          &gt;     &gt;&gt; 00:14.0 USB controller:
                          Intel Corporation Cannon Lake PCH USB 3.1<br>
                          &gt;     xHCI<br>
                          &gt;     &gt;&gt; Host Controller (rev 10)<br>
                          &gt;     &gt;&gt; So I don't get why doesn't
                          Ubuntu enables USB 3.0 with the B210.<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt; My problems looks like this
                          one<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     <a
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057323.html"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057323.html</a><br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt; The output of lsusb -t is
                          similar, with "Driver=(none)"<br>
                          &gt;     &gt;&gt; A message of above mentioned
                          thread suggests to enable 3.0 option in<br>
                          &gt;     &gt;&gt; BIOS, however I don't have
                          such option. And even if I had, I<br>
                          &gt;     didn't not<br>
                          &gt;     &gt;&gt; change anything between
                          reboot / session switch so I really don't<br>
                          &gt;     &gt;&gt; understand where this
                          regression is coming from.<br>
                          &gt;     &gt;&gt; Also I did the "solution"
                          mentioned by the author :<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt; uhd_image_loader
                          --args="type=b200,reset"<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt; Which did not improve the
                          situation.<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt; Thank you again<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt; Rodolphe<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt; Le mer. 18 mars 2020
                          à 12:02, Ron Economos via USRP-users<br>
                          &gt;     &gt;&gt; &lt;<a
                            href="mailto:usrp-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>
                          &lt;mailto:<a
                            href="mailto:usrp-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;<br>
                          &gt;     &lt;mailto:<a
                            href="mailto:usrp-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a><br>
                          &gt;     &lt;mailto:<a
                            href="mailto:usrp-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;&gt;&gt;
                          a écrit :<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt;     dmesg should say "new
                          SuperSpeed USB device number X using<br>
                          &gt;     xhci_hcd"<br>
                          &gt;     &gt;&gt;     or "new SuperSpeed Gen 1
                          USB device number X using xhci_hcd"<br>
                          &gt;     if you<br>
                          &gt;     &gt;&gt;     have a newer kernel.<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt;     "high-speed" means USB
                          2.0.<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt;     Ron<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt;     On 3/18/20 03:41,
                          Rodolphe Bertolini via USRP-users wrote:<br>
                          &gt;     &gt;&gt;&gt;     Dear all,<br>
                          &gt;     &gt;&gt;&gt;<br>
                          &gt;     &gt;&gt;&gt;     I have been using a
                          USRP B210 on a laptop for months now. For<br>
                          &gt;     &gt;&gt;&gt;     reasons, I switched
                          to another Linux session, and using this<br>
                          &gt;     &gt;&gt;&gt;     session UHD fails to
                          talk to B210 over USB 3.0<br>
                          &gt;     &gt;&gt;&gt;<br>
                          &gt;     &gt;&gt;&gt;     dmesg tells me it is
                          using the xhci_hcd driver (which I<br>
                          &gt;     believe is<br>
                          &gt;     &gt;&gt;&gt;     the driver for USB
                          3.0), and is also mentioning  "new high-speed<br>
                          &gt;     &gt;&gt;&gt;     USB", which leads me
                          to think that USB 3.0 link is well<br>
                          &gt;     recognized<br>
                          &gt;     &gt;&gt;&gt;     and active:<br>
                          &gt;     &gt;&gt;&gt;<br>
                          &gt;     &gt;&gt;&gt;     [  306.133028] usb
                          1-1: new high-speed USB device number 16<br>
                          &gt;     using<br>
                          &gt;     &gt;&gt;&gt;     xhci_hcd<br>
                          &gt;     &gt;&gt;&gt;     [  306.260349] usb
                          1-1: New USB device found, idVendor=2500,<br>
                          &gt;     &gt;&gt;&gt;     idProduct=0020<br>
                          &gt;     &gt;&gt;&gt;     [  306.260351] usb
                          1-1: New USB device strings: Mfr=1,<br>
                          &gt;     Product=2,<br>
                          &gt;     &gt;&gt;&gt;     SerialNumber=3<br>
                          &gt;     &gt;&gt;&gt;     [  306.260352] usb
                          1-1: Product: USRP B200<br>
                          &gt;     &gt;&gt;&gt;     [  306.260354] usb
                          1-1: Manufacturer: Ettus Research LLC<br>
                          &gt;     &gt;&gt;&gt;     [  306.260355] usb
                          1-1: SerialNumber: 31B9289<br>
                          &gt;     &gt;&gt;&gt;<br>
                          &gt;     &gt;&gt;&gt;     However, when
                          running any uhd command line, it fails using<br>
                          &gt;     USB 3.0:<br>
                          &gt;     &gt;&gt;&gt;<br>
                          &gt;     &gt;&gt;&gt;     [INFO] [UHD] linux;
                          GNU C++ version 5.4.0 20160609;<br>
                          &gt;     Boost_105800;<br>
                          &gt;     &gt;&gt;&gt;     UHD_3.15.0.0-release<br>
                          &gt;     &gt;&gt;&gt;     [INFO] [B200]
                          Detected Device: B210<br>
                          &gt;     &gt;&gt;&gt;     [INFO] [B200]
                          Operating over USB 2.<br>
                          &gt;     &gt;&gt;&gt;<br>
                          &gt;     &gt;&gt;&gt;     I have also tried
                          with UHD 3.14.1, no improvement.<br>
                          &gt;     &gt;&gt;&gt;<br>
                          &gt;     &gt;&gt;&gt;     I remember having a
                          similar issue (maybe the same?) that had<br>
                          &gt;     been<br>
                          &gt;     &gt;&gt;&gt;     solved with
                          something related to udev, but I sadly didn't<br>
                          &gt;     take any<br>
                          &gt;     &gt;&gt;&gt;     note of this.<br>
                          &gt;     &gt;&gt;&gt;<br>
                          &gt;     &gt;&gt;&gt;     Do you have any
                          hint?<br>
                          &gt;     &gt;&gt;&gt;<br>
                          &gt;     &gt;&gt;&gt;     Thank you.<br>
                          &gt;     &gt;&gt;&gt;     Regards,<br>
                          &gt;     &gt;&gt;&gt;     Rodolphe<br>
                          &gt;     &gt;&gt;&gt;<br>
                          &gt;     &gt;&gt;&gt;   
                           _______________________________________________<br>
                          &gt;     &gt;&gt;&gt;     USRP-users mailing
                          list<br>
                          &gt;     &gt;&gt;&gt;     <a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                          &gt;     &lt;mailto:<a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
                          &gt;     &lt;mailto:<a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
                          &lt;mailto:<a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;&gt;<br>
                          &gt;     &gt;&gt;&gt;   <br>
                          &gt;      <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                          &gt;     &gt;&gt;   
                           _______________________________________________<br>
                          &gt;     &gt;&gt;     USRP-users mailing list<br>
                          &gt;     &gt;&gt;     <a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                          &gt;     &lt;mailto:<a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
                          &gt;     &lt;mailto:<a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
                          &lt;mailto:<a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;&gt;<br>
                          &gt;     &gt;&gt;   <br>
                          &gt;      <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;&gt;
                          _______________________________________________<br>
                          &gt;     &gt;&gt; USRP-users mailing list<br>
                          &gt;     &gt;&gt; <a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
                          &lt;mailto:<a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
                          &gt;     &gt;&gt; <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                          &gt;     &gt;&gt;<br>
                          &gt;     &gt;<br>
                          &gt;     &gt;
                          _______________________________________________<br>
                          &gt;     &gt; USRP-users mailing list<br>
                          &gt;     &gt; <a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
                          &lt;mailto:<a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
                          &gt;     &gt; <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                          &gt;     &gt;<br>
                          &gt; <br>
                          &gt; <br>
                          &gt;   
                           _______________________________________________<br>
                          &gt;     USRP-users mailing list<br>
                          &gt;     <a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
                          &lt;mailto:<a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
                          &gt;     <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                          &gt; <br>
                          &gt; <br>
                          &gt;
                          _______________________________________________<br>
                          &gt; USRP-users mailing list<br>
                          &gt; <a
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                          &gt; <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                          &gt; <br>
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
                      <br>
                      <fieldset></fieldset>
                      <pre>_______________________________________________
USRP-users mailing list
<a href="mailto:USRP-users@lists.ettus.com" target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                    </blockquote>
                  </div>
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
  </body>
</html>

--------------37B2CAC07937717B63B0B3B0--


--===============8884441856845910334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8884441856845910334==--

