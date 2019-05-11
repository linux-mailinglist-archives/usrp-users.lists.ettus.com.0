Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0201A667
	for <lists+usrp-users@lfdr.de>; Sat, 11 May 2019 05:38:09 +0200 (CEST)
Received: from [::1] (port=59228 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPIps-0003cX-Id; Fri, 10 May 2019 23:38:08 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:37067)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hPIpn-0003TD-4r
 for usrp-users@lists.ettus.com; Fri, 10 May 2019 23:38:03 -0400
Received: by mail-qt1-f179.google.com with SMTP id o7so8987094qtp.4
 for <usrp-users@lists.ettus.com>; Fri, 10 May 2019 20:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=lxZAU424OLyUT8Hwjud28zLkinER0Uts1qxrt4C7YgM=;
 b=K9G/WIaJs864ysvHcVt1E61VIKTk9LBv9yelUSJ8q9Mvy4kNl3+UA26WnQJufVokh2
 EV6iPjxR80BwFJ6x7Mr5l7Rtl79s5yCMS9mYAyt2LyM4hR0uS5JYIMgFxNDaOSg69Uqb
 RPEZFGNjHXnykIoT1ZoS0Q5etVV30VH67MwR9j5w2kBi8qTytpAHP6NA6yAni4l6ycXO
 BxlN/+hvPJ4tjYaPhBl1KSsvh3K5qj0sKnUeszAh0zyMI/GxeJXwQZR8kaBft76+eDvq
 wylw/asl3qHBsV2F5LK5GgNTh5tB7tVxDwbuY2jrvx6ooXO7uZviX9a9wC8x4otqFkxY
 idlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=lxZAU424OLyUT8Hwjud28zLkinER0Uts1qxrt4C7YgM=;
 b=qRZho1vV1xIxAPCSZ3UFGqjhgAHg4KE59eIsZ0KPIiqq+Tfqav9qZW2ug3XWyEfE/u
 YCny6PzO98tq2fqUvm8jVhqgrYUS2KcMGmVhRnUnWFe90ZQR5irfPCfIbDlKBx+2wUoM
 ScQAM4LCcLJCCVkE8OIz4iJ26P7LWMIzvWqkE/5NLhau8u0TJeikGOqhhu6csp9dCqXO
 VYlxmEHDi/HGSGdgLLFqbAvO6Ms6EMaNP2KSTESXNGxG8I3OnkhtHKUx1NXkECB2ZVHQ
 cIknQbUMVacZq2+tFEzTCEtRISfk1REiiHycQaKbBziKnlzLzvKsKGuvlcqbVRs5S/il
 zaOg==
X-Gm-Message-State: APjAAAVhbJFUNrQoA6L0Pym//1oa4U08uuOwi72b9wOdcZggN4xy0MUp
 NGzIyMqH4rpkLkDlHN5SkeR0xooZ
X-Google-Smtp-Source: APXvYqyS3RIFUm44GuqneO1wC9gMO0gJT74ihVpCchCzGTZzhp38TDYUmb0YJzmralW3igOVNjfr/A==
X-Received: by 2002:ac8:325c:: with SMTP id y28mr13178771qta.48.1557545842186; 
 Fri, 10 May 2019 20:37:22 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id a5sm3270470qtj.58.2019.05.10.20.37.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 20:37:21 -0700 (PDT)
Message-ID: <5CD64370.8010902@gmail.com>
Date: Fri, 10 May 2019 23:37:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Joe Martin <k5so@k5so.com>
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <E4163757-B40B-4716-888F-2328596BB5B6@k5so.com> <5CD48C58.9050302@gmail.com>
 <8481269A-B583-40D7-B93C-1BDDFD50D338@k5so.com>
 <CA+JMMq_h4jKhUH7d6_WiMCstfC8anxeamESGAQ7Q=YLaaKG59A@mail.gmail.com>
 <31E31040-1F5D-4C84-BD3B-65CC609519A9@k5so.com>
 <CA+JMMq8kE4vL3wJz42NexKc=xicWUCGTsu0+Sb9sArw7OX8Tcw@mail.gmail.com>
 <72E6FBD3-F92B-4D0C-BC85-EEA19120596F@k5so.com>
 <161408E6-6B69-48D1-B606-48D3D4D7B22B@gmail.com>
 <ECD2FD88-0308-4D27-B17F-07F8FF4DCF6E@k5so.com>
 <82C6C97F-F209-435E-8C4C-37E43E71B827@gmail.com>
 <A0D159D0-D4D7-4645-8132-44768EF28D22@k5so.com>
 <365E5ED3-897E-402B-B5BA-D8F9A217B3EF@k5so.com> <5CD61E2C.5020703@gmail.com>
 <6A14E23C-AAFE-43EF-A207-C830BFD62642@k5so.com> <5CD6229D.30805@gmail.com>
 <0A955663-E38A-4677-BE65-B53476BBD503@k5so.com> <5CD627A4.3040206@gmail.com>
 <C4F03C96-4C2D-41A8-A115-BED8FF73F85B@k5so.com> <5CD62D5D.7050403@gmail.com>
 <9048636F-BF43-404C-AEF2-5557BE49A8BA@k5so.com>
In-Reply-To: <9048636F-BF43-404C-AEF2-5557BE49A8BA@k5so.com>
Subject: Re: [USRP-users] Need a little help with running legacy prebuilt
 UHD versions
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============8349304896923075742=="
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
--===============8349304896923075742==
Content-Type: multipart/alternative;
 boundary="------------070805040900010900000603"

This is a multi-part message in MIME format.
--------------070805040900010900000603
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/10/2019 11:31 PM, Joe Martin wrote:
>
> The “key” to the un-bricking in this case, not mentioned in any 
> “unbricking” procedure described in current Ettus documents was to 
> hold S2 down on the rev2/3 motherboard while loading the “.bit” file 
> into the FPGA when using the JTAG cable.
That is something I didn't know, or failed to recall.  In the decade 
(!!!) that I've been doing Ettus tech support, I've never had to JTAG
   an N210, but I've never actually had one in my local lab to play 
with--I have a couple of its older cousins--the USRP2.  With those,
   everything is loaded off an SD Card, so when something screws up on 
the card, you just burn a new card...

But this is good info for the "unbricking with JTAG" documents--this is 
why people shouldn't leave R&D departments--all the "lore"
   is in their head :) :)


>
> Best regards,
>
> Joe
>
>> On May 10, 2019, at 8:03 PM, Marcus D. Leech <patchvonbraun@gmail.com 
>> <mailto:patchvonbraun@gmail.com>> wrote:
>>
>> On 05/10/2019 09:57 PM, Joe Martin wrote:
>>> Okay, Marcus, thanks for the info.  I’m not aware of their 
>>> organizational details although I’m in very regular communications 
>>> with the current president of DSES.  They have installed permanent 
>>> commercial power to the site once again and I was under the 
>>> impression DSES actually owns the site, but I don’t know any of 
>>> those details so perhaps my impressions are not totally correct. 
>>>  I’m simply helping the president to get some of the data 
>>> acquisition functionality and a bit of the tracking functionality in 
>>> place.  I’ve never been to the site.  This N210 will help them a lot!
>>>
>>> Joe
>> They had a site on Table Mountain, CO -- this new site they own, near 
>> Haswell.  It sat dormant for many years, but it looks like significant
>>   progress has been made, and it is an 18m dish--similar to the one 
>> SBRAC had.
>>
>> I visited their original site years ago, back when I was still doing 
>> SBRAC.  I happened to be in Colorado for an IETF meeting, and made a
>>   side-trip.
>>
>> All very encouraging, for sure.
>>
>> I still think collections of smaller, more-manageable, dishes are 
>> better :) :)
>>
>>
>>>
>>>> On May 10, 2019, at 7:38 PM, Marcus D. Leech 
>>>> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>>>
>>>> On 05/10/2019 09:29 PM, Joe Martin wrote:
>>>>> Yes, they have a 21cm feedhorn with optical cable from the LNA to 
>>>>> the control room and have been doing hydrogen line work and some 
>>>>> SETI-type drift scan observations with that 60’ dish.  They are 
>>>>> itching to do some pulsar work now!
>>>> The early instantiation of DSES was a lot like SBRAC--access to 
>>>> dishes on a controlled government site, which they ultimately lost 
>>>> and had
>>>>   to move to a different site.
>>>>
>>>> When *we* Phoenixed, we came back as CCERA with a formal legal 
>>>> structure...
>>>>
>>>>
>>>>>
>>>>>> On May 10, 2019, at 7:17 PM, Marcus D. Leech 
>>>>>> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>>>>>
>>>>>> On 05/10/2019 09:15 PM, Joe Martin wrote:
>>>>>>> Yes, Nick’s suggestion concerning S2 was certainly the key!  I 
>>>>>>> learned a ton about this from all of you guys though and do 
>>>>>>> sincerely appreciate the patient and helpful manner you all have 
>>>>>>> exhibited to me.
>>>>>>>
>>>>>>> The daughter card is the DBSRX2 that they’ll use for 
>>>>>>> hydrogen-line work and some pulsar work in the 1400MHz range and 
>>>>>>> they also have a GPSDO board installed.  As an alternate 
>>>>>>> daughter card they also have a TVRX2 that could replace the 
>>>>>>> DBSRX2 if they wish.
>>>>>>>
>>>>>>> This will be fun!
>>>>>>>
>>>>>>> Joe
>>>>>> I haven't kept up with their progress for years--is the "new" 
>>>>>> site now operational?  It was certainly a "project" last time I 
>>>>>> saw any news of it...
>>>>>>
>>>>>>
>>>>>>>
>>>>>>>> On May 10, 2019, at 6:58 PM, Marcus D. Leech via USRP-users 
>>>>>>>> <usrp-users@lists.ettus.com 
>>>>>>>> <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>
>>>>>>>> On 05/10/2019 07:53 PM, Joe Martin via USRP-users wrote:
>>>>>>>>> Holy smoke!  SUCCESS!!  Nick pointed out that there are two 
>>>>>>>>> switches on the N210; S1 and S2 and S1 is a reset, so an 
>>>>>>>>> upload of FPGA code fails if that is held (which I was holding 
>>>>>>>>> for his suggested test!).  Holding S2 during iMPACT loading of 
>>>>>>>>> the .bit image results in the uhd_image_loader step being 
>>>>>>>>> SUCCESSFUL!!  I am so happy to see that!  Uhd_usrp_probe works 
>>>>>>>>> wonderfully.  Finally.  We now can put this little to work 
>>>>>>>>> doing some tough things!
>>>>>>>>>
>>>>>>>>> Thank you all SO MUCH for your assistance with reviving this 
>>>>>>>>> N210.  A monumental achievement in my book!   I don’t know 
>>>>>>>>> what to say except that we TOTALLY appreciate you efforts to 
>>>>>>>>> get us running.  You guys are GREAT!
>>>>>>>>>
>>>>>>>>> Very best wishes to you each and every one!
>>>>>>>>>
>>>>>>>>> Joe
>>>>>>>> I think Nick deserves most of the credit--he was in Ettus R&D 
>>>>>>>> during the N210 development days.
>>>>>>>>
>>>>>>>> Hopefully DSES will now have a receiver -- what daughtercard do 
>>>>>>>> they have in it?
>>>>>>>>
>>>>>>>>
>>>>>>>>>> On May 10, 2019, at 5:30 PM, Joe Martin via USRP-users 
>>>>>>>>>> <usrp-users@lists.ettus.com 
>>>>>>>>>> <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>
>>>>>>>>>> Ian and all,
>>>>>>>>>>
>>>>>>>>>> I have been very careful to avoid the pitfalls you detailed. 
>>>>>>>>>>  I began with a fresh installation of Ubuntu 18.04 then 
>>>>>>>>>> performed a successful build of UHD 3.9.7, then used command:
>>>>>>>>>>
>>>>>>>>>> uhd_images_downloader
>>>>>>>>>>
>>>>>>>>>> to load the appropriate/associated images into the PC.
>>>>>>>>>>
>>>>>>>>>> Then used ISE iMPACT to load the “usrp_n210_r3_fpga.bit” file 
>>>>>>>>>> into the FPGA of the N210.  iMPACT reports “PROGRAM SUCCESSFUL”.
>>>>>>>>>>
>>>>>>>>>> Then without power cycling the N210 used the command:
>>>>>>>>>>
>>>>>>>>>> usrp_image_loader 
>>>>>>>>>> —args=“type=usrp2,addr=192.168.10.2,overwrite-safe” 
>>>>>>>>>> —fw-path=/usr/local/share/uhd/images/usrp_n210_fw.bin 
>>>>>>>>>> —fpga-path=/usr/local/share/uhd/images/usrp_n210_r3_fpga.bin
>>>>>>>>>>
>>>>>>>>>> To load the non-volatile memory of the N210 but I always get 
>>>>>>>>>> the “RuntimeError: Received invalid 32 reply from device” 
>>>>>>>>>> error when running usrp_image_loader.
>>>>>>>>>>
>>>>>>>>>> I am able to successfully ping 192.168.10.2 but no matter 
>>>>>>>>>> what combinations of r2 or r3 .bit file and firmware and fpga 
>>>>>>>>>> image .bin files I use the response when invoking the 
>>>>>>>>>> usrp_image_loader is always the same, namely “invalid reply 
>>>>>>>>>> 32 from device”.
>>>>>>>>>>
>>>>>>>>>> The command uhd_find_devices returns by reporting it can find 
>>>>>>>>>> a usrp2 device at address 192.168.10.2, as you would hope.
>>>>>>>>>>
>>>>>>>>>> After trying every conceivable combination of these actions 
>>>>>>>>>> with numerous versions of UHD and r2/r3 .bit FPGA files and 
>>>>>>>>>> r2/r3 .bin files on several fresh installations of Ubuntu 
>>>>>>>>>> 18.04 and 16.04 the result is always the same in that things 
>>>>>>>>>> proceed normally as the various documents concerning 
>>>>>>>>>> un-bricking an N210 explains, until the step of using the 
>>>>>>>>>> usrp_image_loader is executed, at which point a RuntimeError 
>>>>>>>>>> returns stating that the “invalid 32 reply” has occurred.
>>>>>>>>>>
>>>>>>>>>> I was hopeful that careful use of rev3 .bit and .bin files 
>>>>>>>>>> with UHD 3.9.7 would do the trick but alas that is not the case.
>>>>>>>>>>
>>>>>>>>>> I suspect that you are near the bottom of the list of 
>>>>>>>>>> suggestions for me and I do appreciate the time and thinking 
>>>>>>>>>> you have afforded me on this issue.  If there is anything 
>>>>>>>>>> remaining to try I’d be most willing to try it.
>>>>>>>>>>
>>>>>>>>>> BTW, the suggestion made by someone earlier to try holding 
>>>>>>>>>> the safe button down during the loading of the FPGA from 
>>>>>>>>>> iMPACT causes the programming to fail (as reported by 
>>>>>>>>>> iMPACT), so that’s apparently not a good thing to do.  But 
>>>>>>>>>> one can recover from that state by simply by re-programming 
>>>>>>>>>> with the safe button not held but the fundamental problem 
>>>>>>>>>> with the uhd_image_loader step in the unbricking process 
>>>>>>>>>> always seems to result.
>>>>>>>>>>
>>>>>>>>>> Joe
>>>>>>>>>>
>>>>>>>>>>> On May 10, 2019, at 9:31 AM, Ian Buckley 
>>>>>>>>>>> <ian.buckley@gmail.com <mailto:ian.buckley@gmail.com>> wrote:
>>>>>>>>>>>
>>>>>>>>>>> Joe,
>>>>>>>>>>> To save you time, It may well be worth you trying jumping to 
>>>>>>>>>>> the 3) step initially and seeing if your current loaded 
>>>>>>>>>>> image or safe image is capable of being upgraded …it likely 
>>>>>>>>>>> is since that protocol is widely compatible across UHD 
>>>>>>>>>>> variants. The key here I have to emphasize (since you appear 
>>>>>>>>>>> to have been previously getting stuck with incompatibility 
>>>>>>>>>>> between whatever is loaded in the USRP and your host UHD 
>>>>>>>>>>> installation) is to be sure your new UHD installation is the 
>>>>>>>>>>> only one on your system, and that you have the binary images 
>>>>>>>>>>> that are version matched with it…people often get caught out 
>>>>>>>>>>> by reminants of various UHD versions installed in various 
>>>>>>>>>>> system directories from different install methods.
>>>>>>>>>>> -Ian
>>>>>>>>>>>
>>>>>>>>>>>> On May 10, 2019, at 5:58 AM, Joe Martin via USRP-users 
>>>>>>>>>>>> <usrp-users@lists.ettus.com 
>>>>>>>>>>>> <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> Ian,
>>>>>>>>>>>>
>>>>>>>>>>>> Very good, that’s encouraging at least.  Yes, I am familiar 
>>>>>>>>>>>> with using ISE iMPACT to load the FPGA with .bit code and 
>>>>>>>>>>>> even how to create the .bit from the associated .bin file 
>>>>>>>>>>>> and did try doing that earlier but perhaps not identically 
>>>>>>>>>>>> to your prescribed steps below.  I’ll revisit it.  I 
>>>>>>>>>>>> successfully built UHD 003_009_000 earlier so I can 
>>>>>>>>>>>> probably also successfully build UHD 003_009_007 too.  I’ll 
>>>>>>>>>>>> do that and give it a go.  I am familiar with the documents 
>>>>>>>>>>>> you mentioned.  Generally things have gone exactly as 
>>>>>>>>>>>> described right up until UHD needs to communicate with the 
>>>>>>>>>>>> stored images at which point it never does; so far anyway.
>>>>>>>>>>>>
>>>>>>>>>>>> Thanks much for the additional information.  I’ll certainly 
>>>>>>>>>>>> hammer on it some more now that I have a few more pertinent 
>>>>>>>>>>>> details under my belt to guide the process appropriately.
>>>>>>>>>>>>
>>>>>>>>>>>> Joe
>>>>>>>>>>>>
>>>>>>>>>>>>> On May 10, 2019, at 12:32 AM, Ian Buckley 
>>>>>>>>>>>>> <ian.buckley@gmail.com <mailto:ian.buckley@gmail.com>> wrote:
>>>>>>>>>>>>>
>>>>>>>>>>>>> Joe,
>>>>>>>>>>>>> This is generally all good news and somewhat hopeful. The 
>>>>>>>>>>>>> fact you can ping 192.168.10.2 in safe mode tell’s you 
>>>>>>>>>>>>> that the FPGA has loaded an image from Flash, that it’s 
>>>>>>>>>>>>> passed CRC and booted the embedded micro controller on the 
>>>>>>>>>>>>> FPGA and run the firmware that replies to ICMP 
>>>>>>>>>>>>> packets…that’s a sign the hardware is in reasonable shape, 
>>>>>>>>>>>>> regardless of what actually version of image ins currently 
>>>>>>>>>>>>> loaded. If you had the internal UART connected to a 3.3V 
>>>>>>>>>>>>> interface you would be seeing the FPGA and FW 
>>>>>>>>>>>>> compatibility numbers for this image printed at boot if it 
>>>>>>>>>>>>> got this far.
>>>>>>>>>>>>> (Sorry if I’m telling you stuff you know here, too many 
>>>>>>>>>>>>> messages in this thread to go reread them)
>>>>>>>>>>>>>
>>>>>>>>>>>>> You should now refer to these 2 pages:
>>>>>>>>>>>>> https://kb.ettus.com/N200/N210_Device_Recovery
>>>>>>>>>>>>> http://files.ettus.com/manual/page_usrp2.html#usrp2_load (N-series 
>>>>>>>>>>>>> sections, not USRP2)
>>>>>>>>>>>>>
>>>>>>>>>>>>> The general outline of what to try is as follows:
>>>>>>>>>>>>> 1) Start with a relatively modern and stable UHD version: 
>>>>>>>>>>>>> Any 3.9.x version is pretty ideal, it’s well supported in 
>>>>>>>>>>>>> Gnuradio, is perhaps the most stable, and has N210 
>>>>>>>>>>>>> support. If you are building UHD yourself from GitHub, 
>>>>>>>>>>>>> then checkout the tag “release_003_009_007”.
>>>>>>>>>>>>> (Note there is no reason to look for old UHD versions to 
>>>>>>>>>>>>> support your H/W, the N210 specific code has changed very 
>>>>>>>>>>>>> little for some time, but you will benefit from much 
>>>>>>>>>>>>> improved general UHD functionality and much better 
>>>>>>>>>>>>> community support)
>>>>>>>>>>>>> 2. (Given you understand how to load a new image via JTAG) 
>>>>>>>>>>>>> Follow the procedure outlined in “Unbricking an N Series 
>>>>>>>>>>>>> Device”. Run “uhd_images_downloader” under UHD3.9.x to be 
>>>>>>>>>>>>> sure you have a compatible set of FPGA images for this 
>>>>>>>>>>>>> version of UHD. Use an R3 .bit file (Stay away from R4 
>>>>>>>>>>>>> images since we know that is electrically incompatible 
>>>>>>>>>>>>> with your H/W) and load this via JTAG. Verify you can ping 
>>>>>>>>>>>>> this once it’s loaded. Remember this is a volatile load, 
>>>>>>>>>>>>> no flash has changed yet, if you reset the H/W this 
>>>>>>>>>>>>> download is lost. The goal now is to use the embedded 
>>>>>>>>>>>>> firmware in this JTAG image to load the same images in 
>>>>>>>>>>>>> .bin format via the ethernet network and update both 
>>>>>>>>>>>>> slot’s in the flash memory with non-volatile images that 
>>>>>>>>>>>>> load automatically after reset/power cycle.
>>>>>>>>>>>>> 3) Follow the instructions in 
>>>>>>>>>>>>> http://files.ettus.com/manual/page_usrp2.html#usrp2_load to perform 
>>>>>>>>>>>>> the image update via the network. You can also take a peek 
>>>>>>>>>>>>> at the settings in your EEPROM (“Recovery process” 
>>>>>>>>>>>>> instructions) to verify that all fields are sane and match 
>>>>>>>>>>>>> your case label.
>>>>>>>>>>>>> 4) At this point, if all has gone as intended, USRP and 
>>>>>>>>>>>>> UHD should be in sync, power cycling H/W should work, and 
>>>>>>>>>>>>> tools like “uhd_usrp_probe” should find the USRP and print 
>>>>>>>>>>>>> it’s detailed H/W config. There are a few common useful 
>>>>>>>>>>>>> things to check in the “Troubleshooting” section if things 
>>>>>>>>>>>>> still don’t seem to have worked.
>>>>>>>>>>>>>
>>>>>>>>>>>>> -Ian
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>> On May 9, 2019, at 2:48 PM, Joe Martin via USRP-users 
>>>>>>>>>>>>>> <usrp-users@lists.ettus.com 
>>>>>>>>>>>>>> <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Oh, okay, I didn’t get that.  Understood now.  I have UHD 
>>>>>>>>>>>>>> 3.14.0 running on my main machine so I could try again 
>>>>>>>>>>>>>> some newer .bit files into the FPGA than I previously 
>>>>>>>>>>>>>> have tried (I tried the current version of UHD and N210 
>>>>>>>>>>>>>> usrp_n210_r4_fpga.bit to no avail) to see if any of them 
>>>>>>>>>>>>>> are compatible.  I also was able to build UHD 3.9.0 on a 
>>>>>>>>>>>>>> different machine so I can try that too with some of the 
>>>>>>>>>>>>>> other .bit files.  Will hold the safe button down while 
>>>>>>>>>>>>>> loading the FPGA this time around.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Joe
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> On May 9, 2019, at 3:38 PM, Nick Foster 
>>>>>>>>>>>>>>> <bistromath@gmail.com <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> I'm saying that you might try to continue the effort to 
>>>>>>>>>>>>>>> JTAG load a more modern FPGA image. It's possible you 
>>>>>>>>>>>>>>> have to hold down the safe mode button while loading the 
>>>>>>>>>>>>>>> image.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> On Thu, May 9, 2019, 2:22 PM Joe Martin <k5so@k5so.com 
>>>>>>>>>>>>>>> <mailto:k5so@k5so.com>> wrote:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>     Thanks for digging into that for us, Nick.
>>>>>>>>>>>>>>>     Interesting. As the hardware change to rev4 occurred
>>>>>>>>>>>>>>>     around mid 2011 and the earliest UHD version that
>>>>>>>>>>>>>>>     exists on the files.ettus.com/uhd
>>>>>>>>>>>>>>>     <http://files.ettus.com/uhd> page is Feb 2104, what
>>>>>>>>>>>>>>>     is the likelihood in your opinion that the UHD
>>>>>>>>>>>>>>>     version will be compatible with the rev2/3 hardware
>>>>>>>>>>>>>>>     from 2011?
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>     So far I’ve not been successful in reviving the 2014
>>>>>>>>>>>>>>>     UHD version so I’m asking to determine whether
>>>>>>>>>>>>>>>     continued effort to do so is likely to yield
>>>>>>>>>>>>>>>     anything positive with respect to interfacing with
>>>>>>>>>>>>>>>     the 2011 hardware.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>     Joe
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     On May 9, 2019, at 3:06 PM, Nick Foster
>>>>>>>>>>>>>>>>     <bistromath@gmail.com
>>>>>>>>>>>>>>>>     <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     So I really dug into the old archives here and
>>>>>>>>>>>>>>>>     literally pulled an old hard drive out of a closet,
>>>>>>>>>>>>>>>>     and found a copy of the old hardware repository
>>>>>>>>>>>>>>>>     from back in the days when N210 was called
>>>>>>>>>>>>>>>>     "USRP2+". Best that I can tell, we only ever
>>>>>>>>>>>>>>>>     released two versions to the public. We might have
>>>>>>>>>>>>>>>>     sold R3 stickered as R2 -- I don't see anything in
>>>>>>>>>>>>>>>>     the repository that would indicate otherwise. Rev
>>>>>>>>>>>>>>>>     2/3 was sold until around June or July 2011, when
>>>>>>>>>>>>>>>>     we moved to rev 4. The only firmware/host code
>>>>>>>>>>>>>>>>     changes I can see between any of the versions are
>>>>>>>>>>>>>>>>     that R4 used LVDS clocking to the daughterboard
>>>>>>>>>>>>>>>>     where previous versions used CMOS. So I think you
>>>>>>>>>>>>>>>>     should be able to run r3 firmware on your N210.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     That said, the very very old N210s with very very
>>>>>>>>>>>>>>>>     old firmware might not have used the same
>>>>>>>>>>>>>>>>     safe/production firmware/fpga image arrangement
>>>>>>>>>>>>>>>>     that we later arrived at. The hardware is still
>>>>>>>>>>>>>>>>     fine, but you might be in for a bit of a deep dive
>>>>>>>>>>>>>>>>     to get it all running again.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     If you have a TTL-serial adapter or a logic
>>>>>>>>>>>>>>>>     analyzer that works as such, you can connect to the
>>>>>>>>>>>>>>>>     debug UART header and get printout information from
>>>>>>>>>>>>>>>>     the firmware at boot time. Another good idea would
>>>>>>>>>>>>>>>>     be to take a video of the front panel LEDs as you
>>>>>>>>>>>>>>>>     apply power -- the boot LED lights give good
>>>>>>>>>>>>>>>>     indication of the firmware/FPGA image loading process.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     Nick
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     On Thu, May 9, 2019 at 1:42 PM Joe Martin via
>>>>>>>>>>>>>>>>     USRP-users <usrp-users@lists.ettus.com
>>>>>>>>>>>>>>>>     <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>         Thanks for the info, Marcus. However, seeing
>>>>>>>>>>>>>>>>         that Jason went through this last year with a
>>>>>>>>>>>>>>>>         couple of N210 he has it would seem unlikely
>>>>>>>>>>>>>>>>         that all three of the N210 are broken.  That
>>>>>>>>>>>>>>>>         being said and considering what you jus said it
>>>>>>>>>>>>>>>>         seems that I should’ve been able to find some
>>>>>>>>>>>>>>>>         version of UHD that will successfully
>>>>>>>>>>>>>>>>         communicate with the firmware and fpga images
>>>>>>>>>>>>>>>>         stored in the unit;  I have not, using UHD
>>>>>>>>>>>>>>>>         versions from 3.9.0 to 3.14.0.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>         I wanted to try with even earlier versions of
>>>>>>>>>>>>>>>>         UHD but am finding trouble in utilizing UHD
>>>>>>>>>>>>>>>>         v3.4.0 (earliest version I could find) as it
>>>>>>>>>>>>>>>>         seems that “prebuilt” v3.4.0 needs only Ubuntu
>>>>>>>>>>>>>>>>         10.10 or 11.10 which so far I’m not able to
>>>>>>>>>>>>>>>>         successfully install and run.   Seems we’re
>>>>>>>>>>>>>>>>         running out of option on this one so the Deep
>>>>>>>>>>>>>>>>         Space Exploration Society, who I’m trying to
>>>>>>>>>>>>>>>>         help with this, may have to come to grasps with
>>>>>>>>>>>>>>>>         the notion that their N210 is a true brick.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>         Joe
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>         On May 9, 2019, at 2:23 PM, Marcus D. Leech
>>>>>>>>>>>>>>>>>         via USRP-users <usrp-users@lists.ettus.com
>>>>>>>>>>>>>>>>>         <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>         On 05/09/2019 04:18 PM, Joe Martin via
>>>>>>>>>>>>>>>>>         USRP-users wrote:
>>>>>>>>>>>>>>>>>>         Nick, Ian,
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>         If this unit happens to be incorrectly
>>>>>>>>>>>>>>>>>>         labeled as a rev 2 N210 and it is actually a
>>>>>>>>>>>>>>>>>>         rev 3 N210, is there hope in being able to
>>>>>>>>>>>>>>>>>>         load rev 3 firmware and fpga images (which I
>>>>>>>>>>>>>>>>>>         have located previously and tried actually)
>>>>>>>>>>>>>>>>>>         with some available UHD version? If so, would
>>>>>>>>>>>>>>>>>>         you be able to tell me which UHD version(s)
>>>>>>>>>>>>>>>>>>         might be able to communicate with it?
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>         Joe
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>         Theoretically, most versions in the last
>>>>>>>>>>>>>>>>>         several years should be able to talk to it. 
>>>>>>>>>>>>>>>>>         In *general* UHD never drops support for older
>>>>>>>>>>>>>>>>>         hardware,
>>>>>>>>>>>>>>>>>           and tries to maintain compatibility. Now, it
>>>>>>>>>>>>>>>>>         is the case that newer features are almost
>>>>>>>>>>>>>>>>>         never "back-ported", but basic functionality
>>>>>>>>>>>>>>>>>         should
>>>>>>>>>>>>>>>>>           always be there.
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>         What this *should* mean is that you should be
>>>>>>>>>>>>>>>>>         able to use the firmware tools once the device
>>>>>>>>>>>>>>>>>         is in "safe mode" to get yourself to where you
>>>>>>>>>>>>>>>>>           want to be. If that doesn't work, that may
>>>>>>>>>>>>>>>>>         well mean that the hardware is broken, and
>>>>>>>>>>>>>>>>>         it's unlikely to be economical to repair.
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>         On May 9, 2019, at 2:12 PM, Joe Martin via
>>>>>>>>>>>>>>>>>>>         USRP-users <usrp-users@lists.ettus.com
>>>>>>>>>>>>>>>>>>>         <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>         Okay.  I’ve asserted from the outset that
>>>>>>>>>>>>>>>>>>>         it’s a rev 2, based on the factory label. 
>>>>>>>>>>>>>>>>>>>         Is this N210 a lost cause if it is actually
>>>>>>>>>>>>>>>>>>>         a Rev2 N210?
>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>         Joe
>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>         On May 9, 2019, at 2:05 PM, Nick Foster
>>>>>>>>>>>>>>>>>>>>         <bistromath@gmail.com
>>>>>>>>>>>>>>>>>>>>         <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>         Well, it's not a rev 4. It's either 2 or 3
>>>>>>>>>>>>>>>>>>>>         in terms of hardware revision.
>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>         On Thu, May 9, 2019 at 12:58 PM Joe Martin
>>>>>>>>>>>>>>>>>>>>         <k5so@k5so.com <mailto:k5so@k5so.com>> wrote:
>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>             …able to ping 192.168.10.2 successfully.
>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>             On May 9, 2019, at 1:54 PM, Joe Martin
>>>>>>>>>>>>>>>>>>>>>             <k5so@k5so.com <mailto:k5so@k5so.com>>
>>>>>>>>>>>>>>>>>>>>>             wrote:
>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>             Ian,
>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>             Yes, I have tried many times to boot
>>>>>>>>>>>>>>>>>>>>>             in safe mode, same result regardless.
>>>>>>>>>>>>>>>>>>>>>             Yes, I am able to pin to 192.168.10.2
>>>>>>>>>>>>>>>>>>>>>             successfully.
>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>             Joe
>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             On May 9, 2019, at 1:47 PM, Joe
>>>>>>>>>>>>>>>>>>>>>>             Martin via USRP-users
>>>>>>>>>>>>>>>>>>>>>>             <usrp-users@lists.ettus.com
>>>>>>>>>>>>>>>>>>>>>>             <mailto:usrp-users@lists.ettus.com>>
>>>>>>>>>>>>>>>>>>>>>>             wrote:
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             Ian and Nick,
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             Thanks for the assistance. Attached
>>>>>>>>>>>>>>>>>>>>>>             are dropbox links to two snapshot
>>>>>>>>>>>>>>>>>>>>>>             photos:  1) the factory label on the
>>>>>>>>>>>>>>>>>>>>>>             back of the N210, showing N210 r:2.0
>>>>>>>>>>>>>>>>>>>>>>             and 2) a top side view of the N210.
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             1)
>>>>>>>>>>>>>>>>>>>>>>             https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=0
>>>>>>>>>>>>>>>>>>>>>>             2)
>>>>>>>>>>>>>>>>>>>>>>             https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=0
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             Seems this unit is indeed a rev 2
>>>>>>>>>>>>>>>>>>>>>>             N210, yes?
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             Joe
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>             On May 9, 2019, at 12:40 PM, Nick
>>>>>>>>>>>>>>>>>>>>>>>             Foster <bistromath@gmail.com
>>>>>>>>>>>>>>>>>>>>>>>             <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>             Moreover, the best "tell" is to look
>>>>>>>>>>>>>>>>>>>>>>>             at the N210 motherboard. If the SRAM
>>>>>>>>>>>>>>>>>>>>>>>             chip is on the top side, it's a rev
>>>>>>>>>>>>>>>>>>>>>>>             2/3. If the SRAM is on the bottom
>>>>>>>>>>>>>>>>>>>>>>>             side, it's a rev 4. If you send a
>>>>>>>>>>>>>>>>>>>>>>>             picture along of the top of the
>>>>>>>>>>>>>>>>>>>>>>>             N210, I can tell you if it's early
>>>>>>>>>>>>>>>>>>>>>>>             or late rev.
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>             On Thu, May 9, 2019 at 11:36 AM Ian
>>>>>>>>>>>>>>>>>>>>>>>             Buckley via USRP-users
>>>>>>>>>>>>>>>>>>>>>>>             <usrp-users@lists.ettus.com
>>>>>>>>>>>>>>>>>>>>>>>             <mailto:usrp-users@lists.ettus.com>>
>>>>>>>>>>>>>>>>>>>>>>>             wrote:
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>                 Joe,
>>>>>>>>>>>>>>>>>>>>>>>                 So I scratched my head about
>>>>>>>>>>>>>>>>>>>>>>>                 this a little late last night
>>>>>>>>>>>>>>>>>>>>>>>                 and looked back through the
>>>>>>>>>>>>>>>>>>>>>>>                 development repository for the
>>>>>>>>>>>>>>>>>>>>>>>                 N210 and as far as I can tell
>>>>>>>>>>>>>>>>>>>>>>>                 there was never customer facing
>>>>>>>>>>>>>>>>>>>>>>>                 FPGA code for a Rev2 N210.
>>>>>>>>>>>>>>>>>>>>>>>                 Chatting with Matt this morning
>>>>>>>>>>>>>>>>>>>>>>>                 he shared my feeling that a Rev2
>>>>>>>>>>>>>>>>>>>>>>>                 wasn't sold to customers, so I'm
>>>>>>>>>>>>>>>>>>>>>>>                 curious if you have a unit that
>>>>>>>>>>>>>>>>>>>>>>>                 has a factory label that says
>>>>>>>>>>>>>>>>>>>>>>>                 N210Rev2 or if you have seen
>>>>>>>>>>>>>>>>>>>>>>>                 "usrp2 rev2.0" on the PCB (which
>>>>>>>>>>>>>>>>>>>>>>>                 can be missleading).
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>                 Also have you tried booting into
>>>>>>>>>>>>>>>>>>>>>>>                 the safe image and verifying
>>>>>>>>>>>>>>>>>>>>>>>                 that it at least pings on
>>>>>>>>>>>>>>>>>>>>>>>                 192.168.10.2?
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>                 If we can conclusively identify
>>>>>>>>>>>>>>>>>>>>>>>                 which rev of h/w you have I can
>>>>>>>>>>>>>>>>>>>>>>>                 probably help further.
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>                 Ian
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             _______________________________________________
>>>>>>>>>>>>>>>>>>>>>>             USRP-users mailing list
>>>>>>>>>>>>>>>>>>>>>>             USRP-users@lists.ettus.com
>>>>>>>>>>>>>>>>>>>>>>             <mailto:USRP-users@lists.ettus.com>
>>>>>>>>>>>>>>>>>>>>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>         _______________________________________________
>>>>>>>>>>>>>>>>>>>         USRP-users mailing list
>>>>>>>>>>>>>>>>>>>         USRP-users@lists.ettus.com
>>>>>>>>>>>>>>>>>>>         <mailto:USRP-users@lists.ettus.com>
>>>>>>>>>>>>>>>>>>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>         _______________________________________________
>>>>>>>>>>>>>>>>>>         USRP-users mailing list
>>>>>>>>>>>>>>>>>>         USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>>>>>>>>>>>>>>>>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>         _______________________________________________
>>>>>>>>>>>>>>>>>         USRP-users mailing list
>>>>>>>>>>>>>>>>>         USRP-users@lists.ettus.com
>>>>>>>>>>>>>>>>>         <mailto:USRP-users@lists.ettus.com>
>>>>>>>>>>>>>>>>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>         _______________________________________________
>>>>>>>>>>>>>>>>         USRP-users mailing list
>>>>>>>>>>>>>>>>         USRP-users@lists.ettus.com
>>>>>>>>>>>>>>>>         <mailto:USRP-users@lists.ettus.com>
>>>>>>>>>>>>>>>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>>>> USRP-users mailing list
>>>>>>>>>>>>>> USRP-users@lists.ettus.com 
>>>>>>>>>>>>>> <mailto:USRP-users@lists.ettus.com>
>>>>>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>> USRP-users mailing list
>>>>>>>>>>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>> On May 10, 2019, at 9:31 AM, Ian Buckley 
>>>>>>>>>>> <ian.buckley@gmail.com <mailto:ian.buckley@gmail.com>> wrote:
>>>>>>>>>>>
>>>>>>>>>>> Joe,
>>>>>>>>>>> To save you time, It may well be worth you trying jumping to 
>>>>>>>>>>> the 3) step initially and seeing if your current loaded 
>>>>>>>>>>> image or safe image is capable of being upgraded …it likely 
>>>>>>>>>>> is since that protocol is widely compatible across UHD 
>>>>>>>>>>> variants. The key here I have to emphasize (since you appear 
>>>>>>>>>>> to have been previously getting stuck with incompatibility 
>>>>>>>>>>> between whatever is loaded in the USRP and your host UHD 
>>>>>>>>>>> installation) is to be sure your new UHD installation is the 
>>>>>>>>>>> only one on your system, and that you have the binary images 
>>>>>>>>>>> that are version matched with it…people often get caught out 
>>>>>>>>>>> by reminants of various UHD versions installed in various 
>>>>>>>>>>> system directories from different install methods.
>>>>>>>>>>> -Ian
>>>>>>>>>>>
>>>>>>>>>>>> On May 10, 2019, at 5:58 AM, Joe Martin via USRP-users 
>>>>>>>>>>>> <usrp-users@lists.ettus.com 
>>>>>>>>>>>> <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> Ian,
>>>>>>>>>>>>
>>>>>>>>>>>> Very good, that’s encouraging at least.  Yes, I am familiar 
>>>>>>>>>>>> with using ISE iMPACT to load the FPGA with .bit code and 
>>>>>>>>>>>> even how to create the .bit from the associated .bin file 
>>>>>>>>>>>> and did try doing that earlier but perhaps not identically 
>>>>>>>>>>>> to your prescribed steps below.  I’ll revisit it.  I 
>>>>>>>>>>>> successfully built UHD 003_009_000 earlier so I can 
>>>>>>>>>>>> probably also successfully build UHD 003_009_007 too.  I’ll 
>>>>>>>>>>>> do that and give it a go.  I am familiar with the documents 
>>>>>>>>>>>> you mentioned.  Generally things have gone exactly as 
>>>>>>>>>>>> described right up until UHD needs to communicate with the 
>>>>>>>>>>>> stored images at which point it never does; so far anyway.
>>>>>>>>>>>>
>>>>>>>>>>>> Thanks much for the additional information.  I’ll certainly 
>>>>>>>>>>>> hammer on it some more now that I have a few more pertinent 
>>>>>>>>>>>> details under my belt to guide the process appropriately.
>>>>>>>>>>>>
>>>>>>>>>>>> Joe
>>>>>>>>>>>>
>>>>>>>>>>>>> On May 10, 2019, at 12:32 AM, Ian Buckley 
>>>>>>>>>>>>> <ian.buckley@gmail.com <mailto:ian.buckley@gmail.com>> wrote:
>>>>>>>>>>>>>
>>>>>>>>>>>>> Joe,
>>>>>>>>>>>>> This is generally all good news and somewhat hopeful. The 
>>>>>>>>>>>>> fact you can ping 192.168.10.2 in safe mode tell’s you 
>>>>>>>>>>>>> that the FPGA has loaded an image from Flash, that it’s 
>>>>>>>>>>>>> passed CRC and booted the embedded micro controller on the 
>>>>>>>>>>>>> FPGA and run the firmware that replies to ICMP 
>>>>>>>>>>>>> packets…that’s a sign the hardware is in reasonable shape, 
>>>>>>>>>>>>> regardless of what actually version of image ins currently 
>>>>>>>>>>>>> loaded. If you had the internal UART connected to a 3.3V 
>>>>>>>>>>>>> interface you would be seeing the FPGA and FW 
>>>>>>>>>>>>> compatibility numbers for this image printed at boot if it 
>>>>>>>>>>>>> got this far.
>>>>>>>>>>>>> (Sorry if I’m telling you stuff you know here, too many 
>>>>>>>>>>>>> messages in this thread to go reread them)
>>>>>>>>>>>>>
>>>>>>>>>>>>> You should now refer to these 2 pages:
>>>>>>>>>>>>> https://kb.ettus.com/N200/N210_Device_Recovery
>>>>>>>>>>>>> http://files.ettus.com/manual/page_usrp2.html#usrp2_load (N-series 
>>>>>>>>>>>>> sections, not USRP2)
>>>>>>>>>>>>>
>>>>>>>>>>>>> The general outline of what to try is as follows:
>>>>>>>>>>>>> 1) Start with a relatively modern and stable UHD version: 
>>>>>>>>>>>>> Any 3.9.x version is pretty ideal, it’s well supported in 
>>>>>>>>>>>>> Gnuradio, is perhaps the most stable, and has N210 
>>>>>>>>>>>>> support. If you are building UHD yourself from GitHub, 
>>>>>>>>>>>>> then checkout the tag “release_003_009_007”.
>>>>>>>>>>>>> (Note there is no reason to look for old UHD versions to 
>>>>>>>>>>>>> support your H/W, the N210 specific code has changed very 
>>>>>>>>>>>>> little for some time, but you will benefit from much 
>>>>>>>>>>>>> improved general UHD functionality and much better 
>>>>>>>>>>>>> community support)
>>>>>>>>>>>>> 2. (Given you understand how to load a new image via JTAG) 
>>>>>>>>>>>>> Follow the procedure outlined in “Unbricking an N Series 
>>>>>>>>>>>>> Device”. Run “uhd_images_downloader” under UHD3.9.x to be 
>>>>>>>>>>>>> sure you have a compatible set of FPGA images for this 
>>>>>>>>>>>>> version of UHD. Use an R3 .bit file (Stay away from R4 
>>>>>>>>>>>>> images since we know that is electrically incompatible 
>>>>>>>>>>>>> with your H/W) and load this via JTAG. Verify you can ping 
>>>>>>>>>>>>> this once it’s loaded. Remember this is a volatile load, 
>>>>>>>>>>>>> no flash has changed yet, if you reset the H/W this 
>>>>>>>>>>>>> download is lost. The goal now is to use the embedded 
>>>>>>>>>>>>> firmware in this JTAG image to load the same images in 
>>>>>>>>>>>>> .bin format via the ethernet network and update both 
>>>>>>>>>>>>> slot’s in the flash memory with non-volatile images that 
>>>>>>>>>>>>> load automatically after reset/power cycle.
>>>>>>>>>>>>> 3) Follow the instructions in 
>>>>>>>>>>>>> http://files.ettus.com/manual/page_usrp2.html#usrp2_load to perform 
>>>>>>>>>>>>> the image update via the network. You can also take a peek 
>>>>>>>>>>>>> at the settings in your EEPROM (“Recovery process” 
>>>>>>>>>>>>> instructions) to verify that all fields are sane and match 
>>>>>>>>>>>>> your case label.
>>>>>>>>>>>>> 4) At this point, if all has gone as intended, USRP and 
>>>>>>>>>>>>> UHD should be in sync, power cycling H/W should work, and 
>>>>>>>>>>>>> tools like “uhd_usrp_probe” should find the USRP and print 
>>>>>>>>>>>>> it’s detailed H/W config. There are a few common useful 
>>>>>>>>>>>>> things to check in the “Troubleshooting” section if things 
>>>>>>>>>>>>> still don’t seem to have worked.
>>>>>>>>>>>>>
>>>>>>>>>>>>> -Ian
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>> On May 9, 2019, at 2:48 PM, Joe Martin via USRP-users 
>>>>>>>>>>>>>> <usrp-users@lists.ettus.com 
>>>>>>>>>>>>>> <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Oh, okay, I didn’t get that.  Understood now.  I have UHD 
>>>>>>>>>>>>>> 3.14.0 running on my main machine so I could try again 
>>>>>>>>>>>>>> some newer .bit files into the FPGA than I previously 
>>>>>>>>>>>>>> have tried (I tried the current version of UHD and N210 
>>>>>>>>>>>>>> usrp_n210_r4_fpga.bit to no avail) to see if any of them 
>>>>>>>>>>>>>> are compatible.  I also was able to build UHD 3.9.0 on a 
>>>>>>>>>>>>>> different machine so I can try that too with some of the 
>>>>>>>>>>>>>> other .bit files.  Will hold the safe button down while 
>>>>>>>>>>>>>> loading the FPGA this time around.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Joe
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> On May 9, 2019, at 3:38 PM, Nick Foster 
>>>>>>>>>>>>>>> <bistromath@gmail.com <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> I'm saying that you might try to continue the effort to 
>>>>>>>>>>>>>>> JTAG load a more modern FPGA image. It's possible you 
>>>>>>>>>>>>>>> have to hold down the safe mode button while loading the 
>>>>>>>>>>>>>>> image.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> On Thu, May 9, 2019, 2:22 PM Joe Martin <k5so@k5so.com 
>>>>>>>>>>>>>>> <mailto:k5so@k5so.com>> wrote:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>     Thanks for digging into that for us, Nick.
>>>>>>>>>>>>>>>     Interesting. As the hardware change to rev4 occurred
>>>>>>>>>>>>>>>     around mid 2011 and the earliest UHD version that
>>>>>>>>>>>>>>>     exists on the files.ettus.com/uhd
>>>>>>>>>>>>>>>     <http://files.ettus.com/uhd> page is Feb 2104, what
>>>>>>>>>>>>>>>     is the likelihood in your opinion that the UHD
>>>>>>>>>>>>>>>     version will be compatible with the rev2/3 hardware
>>>>>>>>>>>>>>>     from 2011?
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>     So far I’ve not been successful in reviving the 2014
>>>>>>>>>>>>>>>     UHD version so I’m asking to determine whether
>>>>>>>>>>>>>>>     continued effort to do so is likely to yield
>>>>>>>>>>>>>>>     anything positive with respect to interfacing with
>>>>>>>>>>>>>>>     the 2011 hardware.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>     Joe
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     On May 9, 2019, at 3:06 PM, Nick Foster
>>>>>>>>>>>>>>>>     <bistromath@gmail.com
>>>>>>>>>>>>>>>>     <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     So I really dug into the old archives here and
>>>>>>>>>>>>>>>>     literally pulled an old hard drive out of a closet,
>>>>>>>>>>>>>>>>     and found a copy of the old hardware repository
>>>>>>>>>>>>>>>>     from back in the days when N210 was called
>>>>>>>>>>>>>>>>     "USRP2+". Best that I can tell, we only ever
>>>>>>>>>>>>>>>>     released two versions to the public. We might have
>>>>>>>>>>>>>>>>     sold R3 stickered as R2 -- I don't see anything in
>>>>>>>>>>>>>>>>     the repository that would indicate otherwise. Rev
>>>>>>>>>>>>>>>>     2/3 was sold until around June or July 2011, when
>>>>>>>>>>>>>>>>     we moved to rev 4. The only firmware/host code
>>>>>>>>>>>>>>>>     changes I can see between any of the versions are
>>>>>>>>>>>>>>>>     that R4 used LVDS clocking to the daughterboard
>>>>>>>>>>>>>>>>     where previous versions used CMOS. So I think you
>>>>>>>>>>>>>>>>     should be able to run r3 firmware on your N210.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     That said, the very very old N210s with very very
>>>>>>>>>>>>>>>>     old firmware might not have used the same
>>>>>>>>>>>>>>>>     safe/production firmware/fpga image arrangement
>>>>>>>>>>>>>>>>     that we later arrived at. The hardware is still
>>>>>>>>>>>>>>>>     fine, but you might be in for a bit of a deep dive
>>>>>>>>>>>>>>>>     to get it all running again.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     If you have a TTL-serial adapter or a logic
>>>>>>>>>>>>>>>>     analyzer that works as such, you can connect to the
>>>>>>>>>>>>>>>>     debug UART header and get printout information from
>>>>>>>>>>>>>>>>     the firmware at boot time. Another good idea would
>>>>>>>>>>>>>>>>     be to take a video of the front panel LEDs as you
>>>>>>>>>>>>>>>>     apply power -- the boot LED lights give good
>>>>>>>>>>>>>>>>     indication of the firmware/FPGA image loading process.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     Nick
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>     On Thu, May 9, 2019 at 1:42 PM Joe Martin via
>>>>>>>>>>>>>>>>     USRP-users <usrp-users@lists.ettus.com
>>>>>>>>>>>>>>>>     <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>         Thanks for the info, Marcus. However, seeing
>>>>>>>>>>>>>>>>         that Jason went through this last year with a
>>>>>>>>>>>>>>>>         couple of N210 he has it would seem unlikely
>>>>>>>>>>>>>>>>         that all three of the N210 are broken.  That
>>>>>>>>>>>>>>>>         being said and considering what you jus said it
>>>>>>>>>>>>>>>>         seems that I should’ve been able to find some
>>>>>>>>>>>>>>>>         version of UHD that will successfully
>>>>>>>>>>>>>>>>         communicate with the firmware and fpga images
>>>>>>>>>>>>>>>>         stored in the unit;  I have not, using UHD
>>>>>>>>>>>>>>>>         versions from 3.9.0 to 3.14.0.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>         I wanted to try with even earlier versions of
>>>>>>>>>>>>>>>>         UHD but am finding trouble in utilizing UHD
>>>>>>>>>>>>>>>>         v3.4.0 (earliest version I could find) as it
>>>>>>>>>>>>>>>>         seems that “prebuilt” v3.4.0 needs only Ubuntu
>>>>>>>>>>>>>>>>         10.10 or 11.10 which so far I’m not able to
>>>>>>>>>>>>>>>>         successfully install and run.   Seems we’re
>>>>>>>>>>>>>>>>         running out of option on this one so the Deep
>>>>>>>>>>>>>>>>         Space Exploration Society, who I’m trying to
>>>>>>>>>>>>>>>>         help with this, may have to come to grasps with
>>>>>>>>>>>>>>>>         the notion that their N210 is a true brick.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>         Joe
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>         On May 9, 2019, at 2:23 PM, Marcus D. Leech
>>>>>>>>>>>>>>>>>         via USRP-users <usrp-users@lists.ettus.com
>>>>>>>>>>>>>>>>>         <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>         On 05/09/2019 04:18 PM, Joe Martin via
>>>>>>>>>>>>>>>>>         USRP-users wrote:
>>>>>>>>>>>>>>>>>>         Nick, Ian,
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>         If this unit happens to be incorrectly
>>>>>>>>>>>>>>>>>>         labeled as a rev 2 N210 and it is actually a
>>>>>>>>>>>>>>>>>>         rev 3 N210, is there hope in being able to
>>>>>>>>>>>>>>>>>>         load rev 3 firmware and fpga images (which I
>>>>>>>>>>>>>>>>>>         have located previously and tried actually)
>>>>>>>>>>>>>>>>>>         with some available UHD version? If so, would
>>>>>>>>>>>>>>>>>>         you be able to tell me which UHD version(s)
>>>>>>>>>>>>>>>>>>         might be able to communicate with it?
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>         Joe
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>         Theoretically, most versions in the last
>>>>>>>>>>>>>>>>>         several years should be able to talk to it. 
>>>>>>>>>>>>>>>>>         In *general* UHD never drops support for older
>>>>>>>>>>>>>>>>>         hardware,
>>>>>>>>>>>>>>>>>           and tries to maintain compatibility. Now, it
>>>>>>>>>>>>>>>>>         is the case that newer features are almost
>>>>>>>>>>>>>>>>>         never "back-ported", but basic functionality
>>>>>>>>>>>>>>>>>         should
>>>>>>>>>>>>>>>>>           always be there.
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>         What this *should* mean is that you should be
>>>>>>>>>>>>>>>>>         able to use the firmware tools once the device
>>>>>>>>>>>>>>>>>         is in "safe mode" to get yourself to where you
>>>>>>>>>>>>>>>>>           want to be. If that doesn't work, that may
>>>>>>>>>>>>>>>>>         well mean that the hardware is broken, and
>>>>>>>>>>>>>>>>>         it's unlikely to be economical to repair.
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>         On May 9, 2019, at 2:12 PM, Joe Martin via
>>>>>>>>>>>>>>>>>>>         USRP-users <usrp-users@lists.ettus.com
>>>>>>>>>>>>>>>>>>>         <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>         Okay.  I’ve asserted from the outset that
>>>>>>>>>>>>>>>>>>>         it’s a rev 2, based on the factory label. 
>>>>>>>>>>>>>>>>>>>         Is this N210 a lost cause if it is actually
>>>>>>>>>>>>>>>>>>>         a Rev2 N210?
>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>         Joe
>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>         On May 9, 2019, at 2:05 PM, Nick Foster
>>>>>>>>>>>>>>>>>>>>         <bistromath@gmail.com
>>>>>>>>>>>>>>>>>>>>         <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>         Well, it's not a rev 4. It's either 2 or 3
>>>>>>>>>>>>>>>>>>>>         in terms of hardware revision.
>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>         On Thu, May 9, 2019 at 12:58 PM Joe Martin
>>>>>>>>>>>>>>>>>>>>         <k5so@k5so.com <mailto:k5so@k5so.com>> wrote:
>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>             …able to ping 192.168.10.2 successfully.
>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>             On May 9, 2019, at 1:54 PM, Joe Martin
>>>>>>>>>>>>>>>>>>>>>             <k5so@k5so.com <mailto:k5so@k5so.com>>
>>>>>>>>>>>>>>>>>>>>>             wrote:
>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>             Ian,
>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>             Yes, I have tried many times to boot
>>>>>>>>>>>>>>>>>>>>>             in safe mode, same result regardless.
>>>>>>>>>>>>>>>>>>>>>             Yes, I am able to pin to 192.168.10.2
>>>>>>>>>>>>>>>>>>>>>             successfully.
>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>             Joe
>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             On May 9, 2019, at 1:47 PM, Joe
>>>>>>>>>>>>>>>>>>>>>>             Martin via USRP-users
>>>>>>>>>>>>>>>>>>>>>>             <usrp-users@lists.ettus.com
>>>>>>>>>>>>>>>>>>>>>>             <mailto:usrp-users@lists.ettus.com>>
>>>>>>>>>>>>>>>>>>>>>>             wrote:
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             Ian and Nick,
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             Thanks for the assistance. Attached
>>>>>>>>>>>>>>>>>>>>>>             are dropbox links to two snapshot
>>>>>>>>>>>>>>>>>>>>>>             photos:  1) the factory label on the
>>>>>>>>>>>>>>>>>>>>>>             back of the N210, showing N210 r:2.0
>>>>>>>>>>>>>>>>>>>>>>             and 2) a top side view of the N210.
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             1)
>>>>>>>>>>>>>>>>>>>>>>             https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=0
>>>>>>>>>>>>>>>>>>>>>>             2)
>>>>>>>>>>>>>>>>>>>>>>             https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=0
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             Seems this unit is indeed a rev 2
>>>>>>>>>>>>>>>>>>>>>>             N210, yes?
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>             Joe
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>             On May 9, 2019, at 12:40 PM, Nick
>>>>>>>>>>>>>>>>>>>>>>>             Foster <bistromath@gmail.com
>>>>>>>>>>>>>>>>>>>>>>>             <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>             Moreover, the best "tell" is to look
>>>>>>>>>>>>>>>>>>>>>>>             at the N210 motherboard. If the SRAM
>>>>>>>>>>>>>>>>>>>>>>>             chip is on the top side, it's a rev
>>>>>>>>>>>>>>>>>>>>>>>             2/3. If the SRAM is on the bottom
>>>>>>>>>>>>>>>>>>>>>>>             side, it's a rev 4. If you send a
>>>>>>>>>>>>>>>>>>>>>>>             picture along of the top of the
>>>>>>>>>>>>>>>>>>>>>>>             N210, I can tell you if it's early
>>>>>>>>>>>>>>>>>>>>>>>             or late rev.
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>             On Thu, May 9, 2019 at 11:36 AM Ian
>>>>>>>>>>>>>>>>>>>>>>>             Buckley via USRP-users
>>>>>>>>>>>>>>>>>>>>>>>             <usrp-users@lists.ettus.com
>>>>>>>>>>>>>>>>>>>>>>>             <mailto:usrp-users@lists.ettus.com>>
>>>>>>>>>>>>>>>>>>>>>>>             wrote:
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>                 Joe,
>>>>>>>>>>>>>>>>>>>>>>>                 So I scratched my head about
>>>>>>>>>>>>>>>>>>>>>>>                 this a little late last night
>>>>>>>>>>>>>>>>>>>>>>>                 and looked back through the
>>>>>>>>>>>>>>>>>>>>>>>                 development repository for the
>>>>>>>>>>>>>>>>>>>>>>>                 N210 and as far as I can tell
>>>>>>>>>>>>>>>>>>>>>>>                 there was never customer facing
>>>>>>>>>>>>>>>>>>>>>>>                 FPGA code for a Rev2 N210.
>>>>>>>>>>>>>>>>>>>>>>>                 Chatting with Matt this morning
>>>>>>>>>>>>>>>>>>>>>>>                 he shared my feeling that a Rev2
>>>>>>>>>>>>>>>>>>>>>>>                 wasn't sold to customers, so I'm
>>>>>>>>>>>>>>>>>>>>>>>                 curious if you have a unit that
>>>>>>>>>>>>>>>>>>>>>>>                 has a factory label that says
>>>>>>>>>>>>>>>>>>>>>>>                 N210Rev2 or if you have seen
>>>>>>>>>>>>>>>>>>>>>>>                 "usrp2 rev2.0" on the PCB (which
>>>>>>>>>>>>>>>>>>>>>>>                 can be missleading).
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>                 Also have you tried booting into
>>>>>>>>>>>>>>>>>>>>>>>                 the safe image and verifying
>>>>>>>>>>>>>>>>>>>>>>>                 that it at least pings on
>>>>>>>>>>>>>>>>>>>>>>>                 192.168.10.2?
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>                 If we can conclusively identify
>>>>>>>>>>>>>>>>>>>>>>>                 which rev of h/w you have I can
>>>>>>>>>>>>>>>>>>>>>>>                 probably help further.
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>                 Ian
>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list
>>>>>>>>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list
>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list
>>>>>>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
>


--------------070805040900010900000603
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/10/2019 11:31 PM, Joe Martin
      wrote:<br>
    </div>
    <blockquote cite="mid:9048636F-BF43-404C-AEF2-5557BE49A8BA@k5so.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div class=""><br class="">
      </div>
      <div class="">The “key” to the un-bricking in this case, not
        mentioned in any “unbricking” procedure described in current
        Ettus documents was to hold S2 down on the rev2/3 motherboard
        while loading the “.bit” file into the FPGA when using the JTAG
        cable.  <br>
      </div>
    </blockquote>
    That is something I didn't know, or failed to recall.  In the decade
    (!!!) that I've been doing Ettus tech support, I've never had to
    JTAG<br>
      an N210, but I've never actually had one in my local lab to play
    with--I have a couple of its older cousins--the USRP2.  With those,<br>
      everything is loaded off an SD Card, so when something screws up
    on the card, you just burn a new card...<br>
    <br>
    But this is good info for the "unbricking with JTAG" documents--this
    is why people shouldn't leave R&amp;D departments--all the "lore"<br>
      is in their head :) :)<br>
    <br>
    <br>
    <blockquote cite="mid:9048636F-BF43-404C-AEF2-5557BE49A8BA@k5so.com"
      type="cite">
      <div class="">
        <div class=""><br class="">
        </div>
        <div class="">Best regards, </div>
        <div class=""><br class="">
        </div>
        <div class="">Joe<br class="">
          <div><br class="">
            <blockquote type="cite" class="">
              <div class="">On May 10, 2019, at 8:03 PM, Marcus D. Leech
                &lt;<a moz-do-not-send="true"
                  href="mailto:patchvonbraun@gmail.com" class="">patchvonbraun@gmail.com</a>&gt;
                wrote:</div>
              <br class="Apple-interchange-newline">
              <div class="">
                <meta content="text/html; charset=utf-8"
                  http-equiv="Content-Type" class="">
                <div bgcolor="#FFFFFF" text="#000000" class="">
                  <div class="moz-cite-prefix">On 05/10/2019 09:57 PM,
                    Joe Martin wrote:<br class="">
                  </div>
                  <blockquote
                    cite="mid:C4F03C96-4C2D-41A8-A115-BED8FF73F85B@k5so.com"
                    type="cite" class="">
                    <meta http-equiv="Content-Type" content="text/html;
                      charset=utf-8" class="">
                    Okay, Marcus, thanks for the info.  I’m not aware of
                    their organizational details although I’m in very
                    regular communications with the current president of
                    DSES.  They have installed permanent commercial
                    power to the site once again and I was under the
                    impression DSES actually owns the site, but I don’t
                    know any of those details so perhaps my impressions
                    are not totally correct.  I’m simply helping the
                    president to get some of the data acquisition
                    functionality and a bit of the tracking
                    functionality in place.  I’ve never been to the
                    site.  This N210 will help them a lot!
                    <div class=""><br class="">
                    </div>
                    <div class="">Joe<br class="">
                    </div>
                  </blockquote>
                  They had a site on Table Mountain, CO -- this new site
                  they own, near Haswell.  It sat dormant for many
                  years, but it looks like significant<br class="">
                    progress has been made, and it is an 18m
                  dish--similar to the one SBRAC had.<br class="">
                  <br class="">
                  I visited their original site years ago, back when I
                  was still doing SBRAC.  I happened to be in Colorado
                  for an IETF meeting, and made a<br class="">
                    side-trip.  <br class="">
                  <br class="">
                  All very encouraging, for sure.<br class="">
                  <br class="">
                  I still think collections of smaller, more-manageable,
                  dishes are better :) :)<br class="">
                  <br class="">
                  <br class="">
                  <blockquote
                    cite="mid:C4F03C96-4C2D-41A8-A115-BED8FF73F85B@k5so.com"
                    type="cite" class="">
                    <div class="">
                      <div class=""><br class="">
                        <blockquote type="cite" class="">
                          <div class="">On May 10, 2019, at 7:38 PM,
                            Marcus D. Leech &lt;<a
                              moz-do-not-send="true"
                              href="mailto:patchvonbraun@gmail.com"
                              class="">patchvonbraun@gmail.com</a>&gt;
                            wrote:</div>
                          <br class="Apple-interchange-newline">
                          <div class="">
                            <meta content="text/html; charset=utf-8"
                              http-equiv="Content-Type" class="">
                            <div bgcolor="#FFFFFF" text="#000000"
                              class="">
                              <div class="moz-cite-prefix">On 05/10/2019
                                09:29 PM, Joe Martin wrote:<br class="">
                              </div>
                              <blockquote
                                cite="mid:0A955663-E38A-4677-BE65-B53476BBD503@k5so.com"
                                type="cite" class="">
                                <meta http-equiv="Content-Type"
                                  content="text/html; charset=utf-8"
                                  class="">
                                Yes, they have a 21cm feedhorn with
                                optical cable from the LNA to the
                                control room and have been doing
                                hydrogen line work and some SETI-type
                                drift scan observations with that 60’
                                dish.  They are itching to do some
                                pulsar work now!<br class="">
                              </blockquote>
                              The early instantiation of DSES was a lot
                              like SBRAC--access to dishes on a
                              controlled government site, which they
                              ultimately lost and had<br class="">
                                to move to a different site.<br class="">
                              <br class="">
                              When *we* Phoenixed, we came back as CCERA
                              with a formal legal structure...<br
                                class="">
                              <br class="">
                              <br class="">
                              <blockquote
                                cite="mid:0A955663-E38A-4677-BE65-B53476BBD503@k5so.com"
                                type="cite" class="">
                                <div class=""><br class="">
                                  <blockquote type="cite" class="">
                                    <div class="">On May 10, 2019, at
                                      7:17 PM, Marcus D. Leech &lt;<a
                                        moz-do-not-send="true"
                                        href="mailto:patchvonbraun@gmail.com"
                                        class="">patchvonbraun@gmail.com</a>&gt;


                                      wrote:</div>
                                    <br
                                      class="Apple-interchange-newline">
                                    <div class="">
                                      <meta content="text/html;
                                        charset=utf-8"
                                        http-equiv="Content-Type"
                                        class="">
                                      <div bgcolor="#FFFFFF"
                                        text="#000000" class="">
                                        <div class="moz-cite-prefix">On
                                          05/10/2019 09:15 PM, Joe
                                          Martin wrote:<br class="">
                                        </div>
                                        <blockquote
                                          cite="mid:6A14E23C-AAFE-43EF-A207-C830BFD62642@k5so.com"
                                          type="cite" class="">
                                          <meta
                                            http-equiv="Content-Type"
                                            content="text/html;
                                            charset=utf-8" class="">
                                          Yes, Nick’s suggestion
                                          concerning S2 was certainly
                                          the key!  I learned a ton
                                          about this from all of you
                                          guys though and do sincerely
                                          appreciate the patient and
                                          helpful manner you all have
                                          exhibited to me.  
                                          <div class=""><br class="">
                                          </div>
                                          <div class="">The daughter
                                            card is the DBSRX2 that
                                            they’ll use for
                                            hydrogen-line work and some
                                            pulsar work in the 1400MHz
                                            range and they also have a
                                            GPSDO board installed.  As
                                            an alternate daughter card
                                            they also have a TVRX2 that
                                            could replace the DBSRX2 if
                                            they wish.  
                                            <div class=""><br class="">
                                            </div>
                                            <div class="">This will be
                                              fun!</div>
                                            <div class=""><br class="">
                                            </div>
                                            <div class="">Joe</div>
                                          </div>
                                        </blockquote>
                                        I haven't kept up with their
                                        progress for years--is the "new"
                                        site now operational?  It was
                                        certainly a "project" last time
                                        I saw any news of it...<br
                                          class="">
                                        <br class="">
                                        <br class="">
                                        <blockquote
                                          cite="mid:6A14E23C-AAFE-43EF-A207-C830BFD62642@k5so.com"
                                          type="cite" class="">
                                          <div class="">
                                            <div class="">
                                              <div class=""><br class="">
                                                <blockquote type="cite"
                                                  class="">
                                                  <div class="">On May
                                                    10, 2019, at 6:58
                                                    PM, Marcus D. Leech
                                                    via USRP-users &lt;<a
moz-do-not-send="true" href="mailto:usrp-users@lists.ettus.com" class="">usrp-users@lists.ettus.com</a>&gt;


                                                    wrote:</div>
                                                  <br
                                                    class="Apple-interchange-newline">
                                                  <div class="">
                                                    <meta
                                                      content="text/html;
                                                      charset=utf-8"
                                                      http-equiv="Content-Type"
                                                      class="">
                                                    <div
                                                      bgcolor="#FFFFFF"
                                                      text="#000000"
                                                      class="">
                                                      <div
                                                        class="moz-cite-prefix">On

                                                        05/10/2019 07:53
                                                        PM, Joe Martin
                                                        via USRP-users
                                                        wrote:<br
                                                          class="">
                                                      </div>
                                                      <blockquote
                                                        cite="mid:365E5ED3-897E-402B-B5BA-D8F9A217B3EF@k5so.com"
                                                        type="cite"
                                                        class="">
                                                        <meta
                                                          http-equiv="Content-Type"
                                                          content="text/html;
                                                          charset=utf-8"
                                                          class="">
                                                        Holy smoke!
                                                         SUCCESS!!  Nick
                                                        pointed out that
                                                        there are two
                                                        switches on the
                                                        N210; S1 and S2
                                                        and S1 is a
                                                        reset, so an
                                                        upload of FPGA
                                                        code fails if
                                                        that is held
                                                        (which I was
                                                        holding for his
                                                        suggested
                                                        test!).  Holding
                                                        S2 during iMPACT
                                                        loading of the
                                                        .bit image
                                                        results in the
                                                        uhd_image_loader
                                                        step being
                                                        SUCCESSFUL!!  I
                                                        am so happy to
                                                        see that!
                                                         Uhd_usrp_probe
                                                        works
                                                        wonderfully.
                                                         Finally.  We
                                                        now can put this
                                                        little to work
                                                        doing some tough
                                                        things!  
                                                        <div class=""><br
                                                          class="">
                                                        </div>
                                                        <div class="">Thank
                                                          you all SO
                                                          MUCH for your
                                                          assistance
                                                          with reviving
                                                          this N210.  A
                                                          monumental
                                                          achievement in
                                                          my book!   I
                                                          don’t know
                                                          what to say
                                                          except that we
                                                          TOTALLY
                                                          appreciate you
                                                          efforts to get
                                                          us running.
                                                           You guys are
                                                          GREAT! </div>
                                                        <div class=""><br
                                                          class="">
                                                        </div>
                                                        <div class="">Very
                                                          best wishes to
                                                          you each and
                                                          every one!   </div>
                                                        <div class=""><br
                                                          class="">
                                                        </div>
                                                        <div class="">Joe<br
                                                          class="">
                                                        </div>
                                                      </blockquote>
                                                      I think Nick
                                                      deserves most of
                                                      the credit--he was
                                                      in Ettus R&amp;D
                                                      during the N210
                                                      development days.<br
                                                        class="">
                                                      <br class="">
                                                      Hopefully DSES
                                                      will now have a
                                                      receiver -- what
                                                      daughtercard do
                                                      they have in it?<br
                                                        class="">
                                                      <br class="">
                                                      <br class="">
                                                      <blockquote
                                                        cite="mid:365E5ED3-897E-402B-B5BA-D8F9A217B3EF@k5so.com"
                                                        type="cite"
                                                        class="">
                                                        <div class="">
                                                          <div class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On
                                                          May 10, 2019,
                                                          at 5:30 PM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:</div>
                                                          <br
                                                          class="Apple-interchange-newline">
                                                          <div class="">
                                                          <meta
                                                          http-equiv="Content-Type"
                                                          content="text/html;
                                                          charset=utf-8"
                                                          class="">
                                                          <div
                                                          style="word-wrap:
                                                          break-word;
                                                          -webkit-nbsp-mode:
                                                          space;
                                                          line-break:
                                                          after-white-space;"
                                                          class="">Ian
                                                          and all, 
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">I
                                                          have been very
                                                          careful to
                                                          avoid the
                                                          pitfalls you
                                                          detailed.  I
                                                          began with a
                                                          fresh
                                                          installation
                                                          of Ubuntu
                                                          18.04 then
                                                          performed a
                                                          successful
                                                          build of UHD
                                                          3.9.7, then
                                                          used command:</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">uhd_images_downloader</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">to

                                                          load the
                                                          appropriate/associated
                                                          images into
                                                          the PC. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Then

                                                          used ISE
                                                          iMPACT to load
                                                          the
                                                          “usrp_n210_r3_fpga.bit”
                                                          file into the
                                                          FPGA of the
                                                          N210.  iMPACT
                                                          reports
                                                          “PROGRAM
                                                          SUCCESSFUL”. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Then

                                                          without power
                                                          cycling the
                                                          N210 used the
                                                          command: </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">usrp_image_loader
—args=“type=usrp2,addr=192.168.10.2,overwrite-safe”
—fw-path=/usr/local/share/uhd/images/usrp_n210_fw.bin
—fpga-path=/usr/local/share/uhd/images/usrp_n210_r3_fpga.bin</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">To

                                                          load the
                                                          non-volatile
                                                          memory of the
                                                          N210 but I
                                                          always get the
                                                          “RuntimeError:
                                                          Received
                                                          invalid 32
                                                          reply from
                                                          device” error
                                                          when running
                                                          usrp_image_loader. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">I
                                                          am able to
                                                          successfully
                                                          ping
                                                          192.168.10.2
                                                          but no matter
                                                          what
                                                          combinations
                                                          of r2 or r3
                                                          .bit file and
                                                          firmware and
                                                          fpga image
                                                          .bin files I
                                                          use the
                                                          response when
                                                          invoking the
                                                          usrp_image_loader
                                                          is always the
                                                          same, namely
                                                          “invalid reply
                                                          32 from
                                                          device”.  </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">The

                                                          command
                                                          uhd_find_devices
                                                          returns by
                                                          reporting it
                                                          can find a
                                                          usrp2 device
                                                          at address
                                                          192.168.10.2,
                                                          as you would
                                                          hope.  </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">After

                                                          trying every
                                                          conceivable
                                                          combination of
                                                          these actions
                                                          with numerous
                                                          versions of
                                                          UHD and r2/r3
                                                          .bit FPGA
                                                          files and
                                                          r2/r3 .bin
                                                          files on
                                                          several fresh
                                                          installations
                                                          of Ubuntu
                                                          18.04 and
                                                          16.04 the
                                                          result is
                                                          always the
                                                          same in that
                                                          things proceed
                                                          normally as
                                                          the various
                                                          documents
                                                          concerning
                                                          un-bricking an
                                                          N210 explains,
                                                          until the step
                                                          of using the
                                                          usrp_image_loader
                                                          is executed,
                                                          at which point
                                                          a RuntimeError
                                                          returns
                                                          stating that
                                                          the “invalid
                                                          32 reply” has
                                                          occurred.  </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">I
                                                          was hopeful
                                                          that careful
                                                          use of rev3
                                                          .bit and .bin
                                                          files with UHD
                                                          3.9.7 would do
                                                          the trick but
                                                          alas that is
                                                          not the case.
                                                           </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">I
                                                          suspect that
                                                          you are near
                                                          the bottom of
                                                          the list of
                                                          suggestions
                                                          for me and I
                                                          do appreciate
                                                          the time and
                                                          thinking you
                                                          have afforded
                                                          me on this
                                                          issue.  If
                                                          there is
                                                          anything
                                                          remaining to
                                                          try I’d be
                                                          most willing
                                                          to try it. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">BTW,

                                                          the suggestion
                                                          made by
                                                          someone
                                                          earlier to try
                                                          holding the
                                                          safe button
                                                          down during
                                                          the loading of
                                                          the FPGA from
                                                          iMPACT causes
                                                          the
                                                          programming to
                                                          fail (as
                                                          reported by
                                                          iMPACT), so
                                                          that’s
                                                          apparently not
                                                          a good thing
                                                          to do.  But
                                                          one can
                                                          recover from
                                                          that state by
                                                          simply by
                                                          re-programming
                                                          with the safe
                                                          button not
                                                          held but the
                                                          fundamental
                                                          problem with
                                                          the
                                                          uhd_image_loader
                                                          step in the
                                                          unbricking
                                                          process always
                                                          seems to
                                                          result. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">
                                                          <div class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On

                                                          May 10, 2019,
                                                          at 9:31 AM,
                                                          Ian Buckley
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:ian.buckley@gmail.com" class="">ian.buckley@gmail.com</a>&gt;




                                                          wrote:</div>
                                                          <br
                                                          class="Apple-interchange-newline">
                                                          <div class="">
                                                          <div class=""
                                                          style="word-wrap:


                                                          break-word;
                                                          -webkit-nbsp-mode:
                                                          space;
                                                          line-break:
                                                          after-white-space;">Joe, 



                                                          <div class="">To

                                                          save you time,
                                                          It may well be
                                                          worth you
                                                          trying jumping
                                                          to the 3) step
                                                          initially and
                                                          seeing if your
                                                          current loaded
                                                          image or safe
                                                          image is
                                                          capable of
                                                          being upgraded
                                                          …it likely is
                                                          since that
                                                          protocol is
                                                          widely
                                                          compatible
                                                          across UHD
                                                          variants. The
                                                          key here I
                                                          have to
                                                          emphasize
                                                          (since you
                                                          appear to have
                                                          been
                                                          previously
                                                          getting stuck
                                                          with
                                                          incompatibility
                                                          between
                                                          whatever is
                                                          loaded in the
                                                          USRP and your
                                                          host UHD
                                                          installation)
                                                          is to be sure
                                                          your new UHD
                                                          installation
                                                          is the only
                                                          one on your
                                                          system, and
                                                          that you have
                                                          the binary
                                                          images that
                                                          are version
                                                          matched with
                                                          it…people
                                                          often get
                                                          caught out by
                                                          reminants of
                                                          various UHD
                                                          versions
                                                          installed in
                                                          various system
                                                          directories
                                                          from different
                                                          install
                                                          methods.</div>
                                                          <div class="">-Ian</div>
                                                          <div class=""><br
                                                          class="">
                                                          <div class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On


                                                          May 10, 2019,
                                                          at 5:58 AM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:</div>
                                                          <br
                                                          class="Apple-interchange-newline">
                                                          <div class="">
                                                          <div class=""
                                                          style="word-wrap:



                                                          break-word;
                                                          -webkit-nbsp-mode:
                                                          space;
                                                          line-break:
                                                          after-white-space;">Ian, 




                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Very



                                                          good, that’s
                                                          encouraging at
                                                          least.  Yes, I
                                                          am familiar
                                                          with using ISE
                                                          iMPACT to load
                                                          the FPGA with
                                                          .bit code and
                                                          even how to
                                                          create the
                                                          .bit from the
                                                          associated
                                                          .bin file and
                                                          did try doing
                                                          that earlier
                                                          but perhaps
                                                          not
                                                          identically to
                                                          your
                                                          prescribed
                                                          steps below.
                                                           I’ll revisit
                                                          it.  I
                                                          successfully
                                                          built UHD
                                                          003_009_000
                                                          earlier so I
                                                          can probably
                                                          also
                                                          successfully
                                                          build UHD
                                                          003_009_007
                                                          too.  I’ll do
                                                          that and give
                                                          it a go.  I am
                                                          familiar with
                                                          the documents
                                                          you mentioned.
                                                           Generally
                                                          things have
                                                          gone exactly
                                                          as described
                                                          right up until
                                                          UHD needs to
                                                          communicate
                                                          with the
                                                          stored images
                                                          at which point
                                                          it never does;
                                                          so far anyway.</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Thanks



                                                          much for the
                                                          additional
                                                          information.
                                                           I’ll
                                                          certainly
                                                          hammer on it
                                                          some more now
                                                          that I have a
                                                          few more
                                                          pertinent
                                                          details under
                                                          my belt to
                                                          guide the
                                                          process
                                                          appropriately. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On



                                                          May 10, 2019,
                                                          at 12:32 AM,
                                                          Ian Buckley
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:ian.buckley@gmail.com" class="">ian.buckley@gmail.com</a>&gt;




                                                          wrote:</div>
                                                          <br
                                                          class="Apple-interchange-newline">
                                                          <div class="">
                                                          <div class=""
                                                          style="word-wrap:




                                                          break-word;
                                                          -webkit-nbsp-mode:
                                                          space;
                                                          line-break:
                                                          after-white-space;">Joe, 




                                                          <div class="">This



                                                          is generally
                                                          all good news
                                                          and somewhat
                                                          hopeful. The
                                                          fact you can
                                                          ping
                                                          192.168.10.2
                                                          in safe mode
                                                          tell’s you
                                                          that the FPGA
                                                          has loaded an
                                                          image from
                                                          Flash, that
                                                          it’s passed
                                                          CRC and booted
                                                          the embedded
                                                          micro
                                                          controller on
                                                          the FPGA and
                                                          run the
                                                          firmware that
                                                          replies to
                                                          ICMP
                                                          packets…that’s
                                                          a sign the
                                                          hardware is in
                                                          reasonable
                                                          shape,
                                                          regardless of
                                                          what actually
                                                          version of
                                                          image ins
                                                          currently
                                                          loaded. If you
                                                          had the
                                                          internal UART
                                                          connected to a
                                                          3.3V interface
                                                          you would be
                                                          seeing the
                                                          FPGA and FW
                                                          compatibility
                                                          numbers for
                                                          this image
                                                          printed at
                                                          boot if it got
                                                          this far.</div>
                                                          <div class="">(Sorry



                                                          if I’m telling
                                                          you stuff you
                                                          know here, too
                                                          many messages
                                                          in this thread
                                                          to go reread
                                                          them)</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">You



                                                          should now
                                                          refer to these
                                                          2 pages:</div>
                                                          <div class=""><a
moz-do-not-send="true"
                                                          href="https://kb.ettus.com/N200/N210_Device_Recovery"
                                                          class="">https://kb.ettus.com/N200/N210_Device_Recovery</a></div>
                                                          <div class=""><a
moz-do-not-send="true"
                                                          href="http://files.ettus.com/manual/page_usrp2.html#usrp2_load"
                                                          class="">http://files.ettus.com/manual/page_usrp2.html#usrp2_load</a> (N-series




                                                          sections, not
                                                          USRP2)</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">The



                                                          general
                                                          outline of
                                                          what to try is
                                                          as follows:</div>
                                                          <div class="">1)



                                                          Start with a
                                                          relatively
                                                          modern and
                                                          stable UHD
                                                          version: Any
                                                          3.9.x version
                                                          is pretty
                                                          ideal, it’s
                                                          well supported
                                                          in Gnuradio,
                                                          is perhaps the
                                                          most stable,
                                                          and has N210
                                                          support. If
                                                          you are
                                                          building UHD
                                                          yourself from
                                                          GitHub, then
                                                          checkout the
                                                          tag
                                                          “release_003_009_007”.</div>
                                                          <div class="">(Note



                                                          there is no
                                                          reason to look
                                                          for old UHD
                                                          versions to
                                                          support your
                                                          H/W, the N210
                                                          specific code
                                                          has changed
                                                          very little
                                                          for some time,
                                                          but you will
                                                          benefit from
                                                          much improved
                                                          general UHD
                                                          functionality
                                                          and much
                                                          better
                                                          community
                                                          support)</div>
                                                          <div class="">2.



                                                          (Given you
                                                          understand how
                                                          to load a new
                                                          image via
                                                          JTAG) Follow
                                                          the procedure
                                                          outlined in
                                                          “Unbricking an
                                                          N Series
                                                          Device”. Run
                                                          “uhd_images_downloader”
                                                          under UHD3.9.x
                                                          to be sure you
                                                          have a
                                                          compatible set
                                                          of FPGA images
                                                          for this
                                                          version of
                                                          UHD. Use an R3
                                                          .bit file
                                                          (Stay away
                                                          from R4 images
                                                          since we know
                                                          that is
                                                          electrically
                                                          incompatible
                                                          with your H/W)
                                                          and load this
                                                          via JTAG.
                                                          Verify you can
                                                          ping this once
                                                          it’s loaded.
                                                          Remember this
                                                          is a volatile
                                                          load, no flash
                                                          has changed
                                                          yet, if you
                                                          reset the H/W
                                                          this download
                                                          is lost. The
                                                          goal now is to
                                                          use the
                                                          embedded
                                                          firmware in
                                                          this JTAG
                                                          image to load
                                                          the same
                                                          images in .bin
                                                          format via the
                                                          ethernet
                                                          network and
                                                          update both
                                                          slot’s in the
                                                          flash memory
                                                          with
                                                          non-volatile
                                                          images that
                                                          load
                                                          automatically
                                                          after
                                                          reset/power
                                                          cycle.</div>
                                                          <div class="">3)



                                                          Follow the
                                                          instructions
                                                          in <a
                                                          moz-do-not-send="true"
href="http://files.ettus.com/manual/page_usrp2.html#usrp2_load" class="">http://files.ettus.com/manual/page_usrp2.html#usrp2_load</a> to




                                                          perform the
                                                          image update
                                                          via the
                                                          network. You
                                                          can also take
                                                          a peek at the
                                                          settings in
                                                          your EEPROM
                                                          (“Recovery
                                                          process”
                                                          instructions)
                                                          to verify that
                                                          all fields are
                                                          sane and match
                                                          your case
                                                          label.</div>
                                                          <div class="">4)



                                                          At this point,
                                                          if all has
                                                          gone as
                                                          intended, USRP
                                                          and UHD should
                                                          be in sync,
                                                          power cycling
                                                          H/W should
                                                          work, and
                                                          tools like
                                                          “uhd_usrp_probe”
                                                          should find
                                                          the USRP and
                                                          print it’s
                                                          detailed H/W
                                                          config. There
                                                          are a few
                                                          common useful
                                                          things to
                                                          check in the
                                                          “Troubleshooting”
                                                          section if
                                                          things still
                                                          don’t seem to
                                                          have worked.</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">-Ian</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">
                                                          <div class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On



                                                          May 9, 2019,
                                                          at 2:48 PM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:</div>
                                                          <br
                                                          class="Apple-interchange-newline">
                                                          <div class="">
                                                          <div class=""
                                                          style="word-wrap:




                                                          break-word;
                                                          -webkit-nbsp-mode:
                                                          space;
                                                          line-break:
                                                          after-white-space;">Oh,




                                                          okay, I didn’t
                                                          get that.
                                                           Understood
                                                          now.  I have
                                                          UHD 3.14.0
                                                          running on my
                                                          main machine
                                                          so I could try
                                                          again some
                                                          newer .bit
                                                          files into the
                                                          FPGA than I
                                                          previously
                                                          have tried (I
                                                          tried the
                                                          current
                                                          version of UHD
                                                          and N210
                                                          usrp_n210_r4_fpga.bit
                                                          to no avail)
                                                          to see if any
                                                          of them are
                                                          compatible.  I
                                                          also was able
                                                          to build UHD
                                                          3.9.0 on a
                                                          different
                                                          machine so I
                                                          can try that
                                                          too with some
                                                          of the other
                                                          .bit files.
                                                           Will hold the
                                                          safe button
                                                          down while
                                                          loading the
                                                          FPGA this time
                                                          around.  
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 3:38 PM,
                                                          Nick Foster
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:bistromath@gmail.com" class="">bistromath@gmail.com</a>&gt;
                                                          wrote:</div>
                                                          <br
                                                          class="Apple-interchange-newline">
                                                          <div class="">
                                                          <div
                                                          dir="auto"
                                                          class="">I'm
                                                          saying that
                                                          you might try
                                                          to continue
                                                          the effort to
                                                          JTAG load a
                                                          more modern
                                                          FPGA image.
                                                          It's possible
                                                          you have to
                                                          hold down the
                                                          safe mode
                                                          button while
                                                          loading the
                                                          image. </div>
                                                          <br class="">
                                                          <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">On Thu, May 9, 2019, 2:22 PM Joe Martin &lt;<a
                                                          moz-do-not-send="true"
href="mailto:k5so@k5so.com" class="">k5so@k5so.com</a>&gt; wrote:<br
                                                          class="">
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:
                                                          0px 0px 0px
                                                          0.8ex;
                                                          border-left-width:
                                                          1px;
                                                          border-left-style:
                                                          solid;
                                                          border-left-color:
                                                          rgb(204, 204,
                                                          204);
                                                          padding-left:
                                                          1ex;">
                                                          <div class=""
                                                          style="word-wrap:




                                                          break-word;
                                                          line-break:
                                                          after-white-space;">Thanks




                                                          for digging
                                                          into that for
                                                          us, Nick. 
                                                          Interesting. 
                                                          As the
                                                          hardware
                                                          change to rev4
                                                          occurred
                                                          around mid
                                                          2011 and the
                                                          earliest UHD
                                                          version that
                                                          exists on the <a
moz-do-not-send="true" href="http://files.ettus.com/uhd" target="_blank"
rel="noreferrer" class="">files.ettus.com/uhd</a> page is Feb 2104, what
                                                          is the
                                                          likelihood in
                                                          your opinion
                                                          that the UHD
                                                          version will
                                                          be compatible
                                                          with the
                                                          rev2/3
                                                          hardware from
                                                          2011?   
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">So




                                                          far I’ve not
                                                          been
                                                          successful in
                                                          reviving the
                                                          2014 UHD
                                                          version so I’m
                                                          asking to
                                                          determine
                                                          whether
                                                          continued
                                                          effort to do
                                                          so is likely
                                                          to yield
                                                          anything
                                                          positive with
                                                          respect to
                                                          interfacing
                                                          with the 2011
                                                          hardware.  </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 3:06 PM,
                                                          Nick Foster
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:bistromath@gmail.com" target="_blank" rel="noreferrer"
                                                          class="">bistromath@gmail.com</a>&gt;




                                                          wrote:</div>
                                                          <br
                                                          class="m_3343428221959612084Apple-interchange-newline">
                                                          <div class="">
                                                          <div dir="ltr"
                                                          class="">
                                                          <div class="">So




                                                          I really dug
                                                          into the old
                                                          archives here
                                                          and literally
                                                          pulled an old
                                                          hard drive out
                                                          of a closet,
                                                          and found a
                                                          copy of the
                                                          old hardware
                                                          repository
                                                          from back in
                                                          the days when
                                                          N210 was
                                                          called
                                                          "USRP2+". Best
                                                          that I can
                                                          tell, we only
                                                          ever released
                                                          two versions
                                                          to the public.
                                                          We might have
                                                          sold R3
                                                          stickered as
                                                          R2 -- I don't
                                                          see anything
                                                          in the
                                                          repository
                                                          that would
                                                          indicate
                                                          otherwise. Rev
                                                          2/3 was sold
                                                          until around
                                                          June or July
                                                          2011, when we
                                                          moved to rev
                                                          4. The only
                                                          firmware/host
                                                          code changes I
                                                          can see
                                                          between any of
                                                          the versions
                                                          are that R4
                                                          used LVDS
                                                          clocking to
                                                          the
                                                          daughterboard
                                                          where previous
                                                          versions used
                                                          CMOS. So I
                                                          think you
                                                          should be able
                                                          to run r3
                                                          firmware on
                                                          your N210.</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">That




                                                          said, the very
                                                          very old N210s
                                                          with very very
                                                          old firmware
                                                          might not have
                                                          used the same
                                                          safe/production




                                                          firmware/fpga
                                                          image
                                                          arrangement
                                                          that we later
                                                          arrived at.
                                                          The hardware
                                                          is still fine,
                                                          but you might
                                                          be in for a
                                                          bit of a deep
                                                          dive to get it
                                                          all running
                                                          again.</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">If




                                                          you have a
                                                          TTL-serial
                                                          adapter or a
                                                          logic analyzer
                                                          that works as
                                                          such, you can
                                                          connect to the
                                                          debug UART
                                                          header and get
                                                          printout
                                                          information
                                                          from the
                                                          firmware at
                                                          boot time.
                                                          Another good
                                                          idea would be
                                                          to take a
                                                          video of the
                                                          front panel
                                                          LEDs as you
                                                          apply power --
                                                          the boot LED
                                                          lights give
                                                          good
                                                          indication of
                                                          the
                                                          firmware/FPGA
                                                          image loading
                                                          process.<br
                                                          class="">
                                                          </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Nick<br
                                                          class="">
                                                          </div>
                                                          </div>
                                                          <br class="">
                                                          <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">On Thu, May 9, 2019 at 1:42 PM Joe Martin via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:<br
                                                          class="">
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:
                                                          0px 0px 0px
                                                          0.8ex;
                                                          border-left-width:
                                                          1px;
                                                          border-left-style:
                                                          solid;
                                                          border-left-color:
                                                          rgb(204, 204,
                                                          204);
                                                          padding-left:
                                                          1ex;">
                                                          <div class="">Thanks




                                                          for the info,
                                                          Marcus. 
                                                          However,
                                                          seeing that
                                                          Jason went
                                                          through this
                                                          last year with
                                                          a couple of
                                                          N210 he has it
                                                          would seem
                                                          unlikely that
                                                          all three of
                                                          the N210 are
                                                          broken.  That
                                                          being said and
                                                          considering
                                                          what you jus
                                                          said it seems
                                                          that I
                                                          should’ve been
                                                          able to find
                                                          some version
                                                          of UHD that
                                                          will
                                                          successfully
                                                          communicate
                                                          with the
                                                          firmware and
                                                          fpga images
                                                          stored in the
                                                          unit;  I have
                                                          not, using UHD
                                                          versions from
                                                          3.9.0 to
                                                          3.14.0.  
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">I
                                                          wanted to try
                                                          with even
                                                          earlier
                                                          versions of
                                                          UHD but am
                                                          finding
                                                          trouble in
                                                          utilizing UHD
                                                          v3.4.0
                                                          (earliest
                                                          version I
                                                          could find) as
                                                          it seems that
                                                          “prebuilt”
                                                          v3.4.0 needs
                                                          only Ubuntu
                                                          10.10 or 11.10
                                                          which so far
                                                          I’m not able
                                                          to
                                                          successfully
                                                          install and
                                                          run.   Seems
                                                          we’re running
                                                          out of option
                                                          on this one so
                                                          the Deep Space
                                                          Exploration
                                                          Society, who
                                                          I’m trying to
                                                          help with
                                                          this, may have
                                                          to come to
                                                          grasps with
                                                          the notion
                                                          that their
                                                          N210 is a true
                                                          brick. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 2:23 PM,
                                                          Marcus D.
                                                          Leech via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386Apple-interchange-newline">
                                                          <div class="">
                                                          <div
                                                          bgcolor="#FFFFFF"
                                                          class="">
                                                          <div
                                                          class="m_3343428221959612084gmail-m_3428410372027926386moz-cite-prefix">On




                                                          05/09/2019
                                                          04:18 PM, Joe
                                                          Martin via
                                                          USRP-users
                                                          wrote:<br
                                                          class="">
                                                          </div>
                                                          <blockquote
                                                          type="cite"
                                                          class="">Nick,
                                                          Ian, 
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">If




                                                          this unit
                                                          happens to be
                                                          incorrectly
                                                          labeled as a
                                                          rev 2 N210 and
                                                          it is actually
                                                          a rev 3 N210,
                                                          is there hope
                                                          in being able
                                                          to load rev 3
                                                          firmware and
                                                          fpga images
                                                          (which I have
                                                          located
                                                          previously and
                                                          tried
                                                          actually) with
                                                          some available
                                                          UHD version? 
                                                          If so, would
                                                          you be able to
                                                          tell me which
                                                          UHD version(s)
                                                          might be able
                                                          to communicate
                                                          with it?  </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          Theoretically,
                                                          most versions
                                                          in the last
                                                          several years
                                                          should be able
                                                          to talk to
                                                          it.  In
                                                          *general* UHD
                                                          never drops
                                                          support for
                                                          older
                                                          hardware,<br
                                                          class="">
                                                            and tries to
                                                          maintain
                                                          compatibility. 
                                                          Now, it is the
                                                          case that
                                                          newer features
                                                          are almost
                                                          never
                                                          "back-ported",
                                                          but basic
                                                          functionality
                                                          should<br
                                                          class="">
                                                            always be
                                                          there.  <br
                                                          class="">
                                                          <br class="">
                                                          What this
                                                          *should* mean
                                                          is that you
                                                          should be able
                                                          to use the
                                                          firmware tools
                                                          once the
                                                          device is in
                                                          "safe mode" to
                                                          get yourself
                                                          to where you<br
                                                          class="">
                                                            want to be. 
                                                          If that
                                                          doesn't work,
                                                          that may well
                                                          mean that the
                                                          hardware is
                                                          broken, and
                                                          it's unlikely
                                                          to be
                                                          economical to
                                                          repair.<br
                                                          class="">
                                                          <br class="">
                                                          <br class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">
                                                          <div class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 2:12 PM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386Apple-interchange-newline">
                                                          <div class="">
                                                          <div class="">Okay.




                                                           I’ve asserted
                                                          from the
                                                          outset that
                                                          it’s a rev 2,
                                                          based on the
                                                          factory
                                                          label.  Is
                                                          this N210 a
                                                          lost cause if
                                                          it is actually
                                                          a Rev2 N210? 
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 2:05 PM,
                                                          Nick Foster
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:bistromath@gmail.com" target="_blank" rel="noreferrer"
                                                          class="">bistromath@gmail.com</a>&gt;




                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386Apple-interchange-newline">
                                                          <div class="">
                                                          <div dir="ltr"
                                                          class="">Well,
                                                          it's not a rev
                                                          4. It's either
                                                          2 or 3 in
                                                          terms of
                                                          hardware
                                                          revision. <br
                                                          class="">
                                                          </div>
                                                          <br class="">
                                                          <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">On Thu, May 9, 2019 at 12:58 PM Joe Martin &lt;<a
                                                          moz-do-not-send="true"
href="mailto:k5so@k5so.com" target="_blank" rel="noreferrer" class="">k5so@k5so.com</a>&gt;




                                                          wrote:<br
                                                          class="">
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:
                                                          0px 0px 0px
                                                          0.8ex;
                                                          border-left-width:
                                                          1px;
                                                          border-left-style:
                                                          solid;
                                                          border-left-color:
                                                          rgb(204, 204,
                                                          204);
                                                          padding-left:
                                                          1ex;">
                                                          <div class="">…able




                                                          to ping
                                                          192.168.10.2
                                                          successfully.<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 1:54 PM,
                                                          Joe Martin
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:k5so@k5so.com" target="_blank" rel="noreferrer" class="">k5so@k5so.com</a>&gt;




                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386gmail-m_-2513206580084366361Apple-interchange-newline">
                                                          <div class="">
                                                          <div class="">Ian, 




                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Yes,




                                                          I have tried
                                                          many times to
                                                          boot in safe
                                                          mode, same
                                                          result
                                                          regardless. 
                                                          Yes, I am able
                                                          to pin to
                                                          192.168.10.2
                                                          successfully. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 1:47 PM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386gmail-m_-2513206580084366361Apple-interchange-newline">
                                                          <div class="">
                                                          <div class="">Ian




                                                          and Nick, 
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Thanks




                                                          for the
                                                          assistance. 
                                                          Attached are
                                                          dropbox links
                                                          to two
                                                          snapshot
                                                          photos:  1)
                                                          the factory
                                                          label on the
                                                          back of the
                                                          N210, showing
                                                          N210 r:2.0 and
                                                          2) a top side
                                                          view of the
                                                          N210. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">1) <a
moz-do-not-send="true"
href="https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=0"
target="_blank" rel="noreferrer" class="">https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=0</a></div>
                                                          <div class="">2) <a
moz-do-not-send="true"
href="https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=0"
target="_blank" rel="noreferrer" class="">https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=0</a></div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Seems




                                                          this unit is
                                                          indeed a rev 2
                                                          N210, yes? </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 12:40 PM,
                                                          Nick Foster
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:bistromath@gmail.com" target="_blank" rel="noreferrer"
                                                          class="">bistromath@gmail.com</a>&gt;




                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386gmail-m_-2513206580084366361Apple-interchange-newline">
                                                          <div class="">
                                                          <div dir="ltr"
                                                          class="">Moreover,




                                                          the best
                                                          "tell" is to
                                                          look at the
                                                          N210
                                                          motherboard.
                                                          If the SRAM
                                                          chip is on the
                                                          top side, it's
                                                          a rev 2/3. If
                                                          the SRAM is on
                                                          the bottom
                                                          side, it's a
                                                          rev 4. If you
                                                          send a picture
                                                          along of the
                                                          top of the
                                                          N210, I can
                                                          tell you if
                                                          it's early or
                                                          late rev.<br
                                                          class="">
                                                          </div>
                                                          <br class="">
                                                          <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">On Thu, May 9, 2019 at 11:36 AM Ian Buckley via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:<br
                                                          class="">
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:
                                                          0px 0px 0px
                                                          0.8ex;
                                                          border-left-width:
                                                          1px;
                                                          border-left-style:
                                                          solid;
                                                          border-left-color:
                                                          rgb(204, 204,
                                                          204);
                                                          padding-left:
                                                          1ex;">
                                                          <div
                                                          dir="auto"
                                                          class="">Joe,
                                                          <div
                                                          dir="auto"
                                                          class="">So I
                                                          scratched my
                                                          head about
                                                          this a little
                                                          late last
                                                          night and
                                                          looked back
                                                          through the
                                                          development
                                                          repository for
                                                          the N210 and
                                                          as far as I
                                                          can tell there
                                                          was never
                                                          customer
                                                          facing FPGA
                                                          code for a
                                                          Rev2 N210.
                                                          Chatting with
                                                          Matt
                                                          this morning
                                                          he shared my
                                                          feeling that a
                                                          Rev2 wasn't
                                                          sold to
                                                          customers, so
                                                          I'm curious if
                                                          you have a
                                                          unit that has
                                                          a factory
                                                          label that
                                                          says N210Rev2
                                                          or if you have
                                                          seen "usrp2
                                                          rev2.0" on the
                                                          PCB (which can
                                                          be
                                                          missleading).</div>
                                                          <div
                                                          dir="auto"
                                                          class=""><br
                                                          class="">
                                                          </div>
                                                          <div
                                                          dir="auto"
                                                          class="">Also
                                                          have you tried
                                                          booting into
                                                          the safe image
                                                          and verifying
                                                          that it at
                                                          least pings on
                                                          192.168.10.2?</div>
                                                          <div
                                                          dir="auto"
                                                          class=""><br
                                                          class="">
                                                          </div>
                                                          <div
                                                          dir="auto"
                                                          class="">If we
                                                          can
                                                          conclusively
                                                          identify which
                                                          rev of h/w you
                                                          have I can
                                                          probably help
                                                          further.</div>
                                                          <div
                                                          dir="auto"
                                                          class=""><br
                                                          class="">
                                                          </div>
                                                          <div
                                                          dir="auto"
                                                          class="">Ian</div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          </div>
_______________________________________________<br class="">
                                                          USRP-users
                                                          mailing list<br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">USRP-users@lists.ettus.com</a><br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
target="_blank" rel="noreferrer" class="">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br
                                                          class="">
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          </div>
_______________________________________________<br class="">
                                                          USRP-users
                                                          mailing list<br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">USRP-users@lists.ettus.com</a><br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
class="m_3343428221959612084gmail-m_3428410372027926386moz-txt-link-freetext"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
target="_blank" rel="noreferrer">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br
                                                          class="">
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          <br class="">
                                                          <fieldset
class="m_3343428221959612084gmail-m_3428410372027926386mimeAttachmentHeader"></fieldset>
                                                          <br class="">
                                                          <pre class="">_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" class="m_3343428221959612084gmail-m_3428410372027926386moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" target="_blank" rel="noreferrer">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" class="m_3343428221959612084gmail-m_3428410372027926386moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank" rel="noreferrer">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                                                          </blockquote>
                                                          <br class="">
                                                          </div>
_______________________________________________<br class="">
                                                          USRP-users
                                                          mailing list<br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">USRP-users@lists.ettus.com</a><br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
target="_blank" rel="noreferrer" class="">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br
                                                          class="">
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          </div>
_______________________________________________<br class="">
                                                          USRP-users
                                                          mailing list<br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">USRP-users@lists.ettus.com</a><br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                                          rel="noreferrer




                                                          noreferrer"
                                                          target="_blank"
                                                          class="">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br
                                                          class="">
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          </div>
_______________________________________________<br class="">
                                                          USRP-users
                                                          mailing list<br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" class="">USRP-users@lists.ettus.com</a><br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                                          class="">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br
                                                          class="">
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          </div>
_______________________________________________<br class="">
                                                          USRP-users
                                                          mailing list<br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" class="">USRP-users@lists.ettus.com</a><br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                                          class="">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br
                                                          class="">
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On

                                                          May 10, 2019,
                                                          at 9:31 AM,
                                                          Ian Buckley
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:ian.buckley@gmail.com" class="">ian.buckley@gmail.com</a>&gt;




                                                          wrote:</div>
                                                          <br
                                                          class="Apple-interchange-newline">
                                                          <div class="">
                                                          <meta
                                                          http-equiv="Content-Type"
                                                          content="text/html;
                                                          charset=utf-8"
                                                          class="">
                                                          <div
                                                          style="word-wrap:
                                                          break-word;
                                                          -webkit-nbsp-mode:
                                                          space;
                                                          -webkit-line-break:
after-white-space;" class="">Joe, 
                                                          <div class="">To

                                                          save you time,
                                                          It may well be
                                                          worth you
                                                          trying jumping
                                                          to the 3) step
                                                          initially and
                                                          seeing if your
                                                          current loaded
                                                          image or safe
                                                          image is
                                                          capable of
                                                          being upgraded
                                                          …it likely is
                                                          since that
                                                          protocol is
                                                          widely
                                                          compatible
                                                          across UHD
                                                          variants. The
                                                          key here I
                                                          have to
                                                          emphasize
                                                          (since you
                                                          appear to have
                                                          been
                                                          previously
                                                          getting stuck
                                                          with
                                                          incompatibility
                                                          between
                                                          whatever is
                                                          loaded in the
                                                          USRP and your
                                                          host UHD
                                                          installation)
                                                          is to be sure
                                                          your new UHD
                                                          installation
                                                          is the only
                                                          one on your
                                                          system, and
                                                          that you have
                                                          the binary
                                                          images that
                                                          are version
                                                          matched with
                                                          it…people
                                                          often get
                                                          caught out by
                                                          reminants of
                                                          various UHD
                                                          versions
                                                          installed in
                                                          various system
                                                          directories
                                                          from different
                                                          install
                                                          methods.</div>
                                                          <div class="">-Ian</div>
                                                          <div class=""><br
                                                          class="">
                                                          <div class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On


                                                          May 10, 2019,
                                                          at 5:58 AM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:</div>
                                                          <br
                                                          class="Apple-interchange-newline">
                                                          <div class="">
                                                          <meta
                                                          http-equiv="Content-Type"
                                                          content="text/html;
                                                          charset=utf-8"
                                                          class="">
                                                          <div
                                                          style="word-wrap:
                                                          break-word;
                                                          -webkit-nbsp-mode:
                                                          space;
                                                          line-break:
                                                          after-white-space;"
                                                          class="">Ian, 
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Very


                                                          good, that’s
                                                          encouraging at
                                                          least.  Yes, I
                                                          am familiar
                                                          with using ISE
                                                          iMPACT to load
                                                          the FPGA with
                                                          .bit code and
                                                          even how to
                                                          create the
                                                          .bit from the
                                                          associated
                                                          .bin file and
                                                          did try doing
                                                          that earlier
                                                          but perhaps
                                                          not
                                                          identically to
                                                          your
                                                          prescribed
                                                          steps below.
                                                           I’ll revisit
                                                          it.  I
                                                          successfully
                                                          built UHD
                                                          003_009_000
                                                          earlier so I
                                                          can probably
                                                          also
                                                          successfully
                                                          build UHD
                                                          003_009_007
                                                          too.  I’ll do
                                                          that and give
                                                          it a go.  I am
                                                          familiar with
                                                          the documents
                                                          you mentioned.
                                                           Generally
                                                          things have
                                                          gone exactly
                                                          as described
                                                          right up until
                                                          UHD needs to
                                                          communicate
                                                          with the
                                                          stored images
                                                          at which point
                                                          it never does;
                                                          so far anyway.</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Thanks



                                                          much for the
                                                          additional
                                                          information.
                                                           I’ll
                                                          certainly
                                                          hammer on it
                                                          some more now
                                                          that I have a
                                                          few more
                                                          pertinent
                                                          details under
                                                          my belt to
                                                          guide the
                                                          process
                                                          appropriately. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On



                                                          May 10, 2019,
                                                          at 12:32 AM,
                                                          Ian Buckley
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:ian.buckley@gmail.com" class="">ian.buckley@gmail.com</a>&gt;




                                                          wrote:</div>
                                                          <br
                                                          class="Apple-interchange-newline">
                                                          <div class="">
                                                          <meta
                                                          http-equiv="Content-Type"
                                                          content="text/html;
                                                          charset=utf-8"
                                                          class="">
                                                          <div
                                                          style="word-wrap:
                                                          break-word;
                                                          -webkit-nbsp-mode:
                                                          space;
                                                          -webkit-line-break:
after-white-space;" class="">Joe, 
                                                          <div class="">This



                                                          is generally
                                                          all good news
                                                          and somewhat
                                                          hopeful. The
                                                          fact you can
                                                          ping
                                                          192.168.10.2
                                                          in safe mode
                                                          tell’s you
                                                          that the FPGA
                                                          has loaded an
                                                          image from
                                                          Flash, that
                                                          it’s passed
                                                          CRC and booted
                                                          the embedded
                                                          micro
                                                          controller on
                                                          the FPGA and
                                                          run the
                                                          firmware that
                                                          replies to
                                                          ICMP
                                                          packets…that’s
                                                          a sign the
                                                          hardware is in
                                                          reasonable
                                                          shape,
                                                          regardless of
                                                          what actually
                                                          version of
                                                          image ins
                                                          currently
                                                          loaded. If you
                                                          had the
                                                          internal UART
                                                          connected to a
                                                          3.3V interface
                                                          you would be
                                                          seeing the
                                                          FPGA and FW
                                                          compatibility
                                                          numbers for
                                                          this image
                                                          printed at
                                                          boot if it got
                                                          this far.</div>
                                                          <div class="">(Sorry



                                                          if I’m telling
                                                          you stuff you
                                                          know here, too
                                                          many messages
                                                          in this thread
                                                          to go reread
                                                          them)</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">You



                                                          should now
                                                          refer to these
                                                          2 pages:</div>
                                                          <div class=""><a
moz-do-not-send="true"
                                                          href="https://kb.ettus.com/N200/N210_Device_Recovery"
                                                          class="">https://kb.ettus.com/N200/N210_Device_Recovery</a></div>
                                                          <div class=""><a
moz-do-not-send="true"
                                                          href="http://files.ettus.com/manual/page_usrp2.html#usrp2_load"
                                                          class="">http://files.ettus.com/manual/page_usrp2.html#usrp2_load</a> (N-series




                                                          sections, not
                                                          USRP2)</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">The



                                                          general
                                                          outline of
                                                          what to try is
                                                          as follows:</div>
                                                          <div class="">1)



                                                          Start with a
                                                          relatively
                                                          modern and
                                                          stable UHD
                                                          version: Any
                                                          3.9.x version
                                                          is pretty
                                                          ideal, it’s
                                                          well supported
                                                          in Gnuradio,
                                                          is perhaps the
                                                          most stable,
                                                          and has N210
                                                          support. If
                                                          you are
                                                          building UHD
                                                          yourself from
                                                          GitHub, then
                                                          checkout the
                                                          tag
                                                          “release_003_009_007”.</div>
                                                          <div class="">(Note



                                                          there is no
                                                          reason to look
                                                          for old UHD
                                                          versions to
                                                          support your
                                                          H/W, the N210
                                                          specific code
                                                          has changed
                                                          very little
                                                          for some time,
                                                          but you will
                                                          benefit from
                                                          much improved
                                                          general UHD
                                                          functionality
                                                          and much
                                                          better
                                                          community
                                                          support)</div>
                                                          <div class="">2.



                                                          (Given you
                                                          understand how
                                                          to load a new
                                                          image via
                                                          JTAG) Follow
                                                          the procedure
                                                          outlined in
                                                          “Unbricking an
                                                          N Series
                                                          Device”. Run
                                                          “uhd_images_downloader”
                                                          under UHD3.9.x
                                                          to be sure you
                                                          have a
                                                          compatible set
                                                          of FPGA images
                                                          for this
                                                          version of
                                                          UHD. Use an R3
                                                          .bit file
                                                          (Stay away
                                                          from R4 images
                                                          since we know
                                                          that is
                                                          electrically
                                                          incompatible
                                                          with your H/W)
                                                          and load this
                                                          via JTAG.
                                                          Verify you can
                                                          ping this once
                                                          it’s loaded.
                                                          Remember this
                                                          is a volatile
                                                          load, no flash
                                                          has changed
                                                          yet, if you
                                                          reset the H/W
                                                          this download
                                                          is lost. The
                                                          goal now is to
                                                          use the
                                                          embedded
                                                          firmware in
                                                          this JTAG
                                                          image to load
                                                          the same
                                                          images in .bin
                                                          format via the
                                                          ethernet
                                                          network and
                                                          update both
                                                          slot’s in the
                                                          flash memory
                                                          with
                                                          non-volatile
                                                          images that
                                                          load
                                                          automatically
                                                          after
                                                          reset/power
                                                          cycle.</div>
                                                          <div class="">3)



                                                          Follow the
                                                          instructions
                                                          in <a
                                                          moz-do-not-send="true"
href="http://files.ettus.com/manual/page_usrp2.html#usrp2_load" class="">http://files.ettus.com/manual/page_usrp2.html#usrp2_load</a> to




                                                          perform the
                                                          image update
                                                          via the
                                                          network. You
                                                          can also take
                                                          a peek at the
                                                          settings in
                                                          your EEPROM
                                                          (“Recovery
                                                          process”
                                                          instructions)
                                                          to verify that
                                                          all fields are
                                                          sane and match
                                                          your case
                                                          label.</div>
                                                          <div class="">4)



                                                          At this point,
                                                          if all has
                                                          gone as
                                                          intended, USRP
                                                          and UHD should
                                                          be in sync,
                                                          power cycling
                                                          H/W should
                                                          work, and
                                                          tools like
                                                          “uhd_usrp_probe”
                                                          should find
                                                          the USRP and
                                                          print it’s
                                                          detailed H/W
                                                          config. There
                                                          are a few
                                                          common useful
                                                          things to
                                                          check in the
                                                          “Troubleshooting”
                                                          section if
                                                          things still
                                                          don’t seem to
                                                          have worked.</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">-Ian</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">
                                                          <div class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On



                                                          May 9, 2019,
                                                          at 2:48 PM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:</div>
                                                          <br
                                                          class="Apple-interchange-newline">
                                                          <div class="">
                                                          <meta
                                                          http-equiv="Content-Type"
                                                          content="text/html;
                                                          charset=utf-8"
                                                          class="">
                                                          <div
                                                          style="word-wrap:
                                                          break-word;
                                                          -webkit-nbsp-mode:
                                                          space;
                                                          line-break:
after-white-space;" class="">Oh, okay, I didn’t get that.  Understood
                                                          now.  I have
                                                          UHD 3.14.0
                                                          running on my
                                                          main machine
                                                          so I could try
                                                          again some
                                                          newer .bit
                                                          files into the
                                                          FPGA than I
                                                          previously
                                                          have tried (I
                                                          tried the
                                                          current
                                                          version of UHD
                                                          and N210
                                                          usrp_n210_r4_fpga.bit
                                                          to no avail)
                                                          to see if any
                                                          of them are
                                                          compatible.  I
                                                          also was able
                                                          to build UHD
                                                          3.9.0 on a
                                                          different
                                                          machine so I
                                                          can try that
                                                          too with some
                                                          of the other
                                                          .bit files.
                                                           Will hold the
                                                          safe button
                                                          down while
                                                          loading the
                                                          FPGA this time
                                                          around.  
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 3:38 PM,
                                                          Nick Foster
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:bistromath@gmail.com" class="">bistromath@gmail.com</a>&gt;
                                                          wrote:</div>
                                                          <br
                                                          class="Apple-interchange-newline">
                                                          <div class="">
                                                          <div
                                                          dir="auto"
                                                          class="">I'm
                                                          saying that
                                                          you might try
                                                          to continue
                                                          the effort to
                                                          JTAG load a
                                                          more modern
                                                          FPGA image.
                                                          It's possible
                                                          you have to
                                                          hold down the
                                                          safe mode
                                                          button while
                                                          loading the
                                                          image. </div>
                                                          <br class="">
                                                          <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">On Thu, May 9, 2019, 2:22 PM Joe Martin &lt;<a
                                                          moz-do-not-send="true"
href="mailto:k5so@k5so.com" class="">k5so@k5so.com</a>&gt; wrote:<br
                                                          class="">
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:0




                                                          0 0
                                                          .8ex;border-left:1px
                                                          #ccc
                                                          solid;padding-left:1ex">
                                                          <div
                                                          style="word-wrap:break-word;line-break:after-white-space"
                                                          class="">Thanks




                                                          for digging
                                                          into that for
                                                          us, Nick. 
                                                          Interesting. 
                                                          As the
                                                          hardware
                                                          change to rev4
                                                          occurred
                                                          around mid
                                                          2011 and the
                                                          earliest UHD
                                                          version that
                                                          exists on the
                                                          <a
                                                          moz-do-not-send="true"
href="http://files.ettus.com/uhd" target="_blank" rel="noreferrer"
                                                          class="">files.ettus.com/uhd</a> page




                                                          is Feb 2104,
                                                          what is the
                                                          likelihood in
                                                          your opinion
                                                          that the UHD
                                                          version will
                                                          be compatible
                                                          with the
                                                          rev2/3
                                                          hardware from
                                                          2011?   
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">So




                                                          far I’ve not
                                                          been
                                                          successful in
                                                          reviving the
                                                          2014 UHD
                                                          version so I’m
                                                          asking to
                                                          determine
                                                          whether
                                                          continued
                                                          effort to do
                                                          so is likely
                                                          to yield
                                                          anything
                                                          positive with
                                                          respect to
                                                          interfacing
                                                          with the 2011
                                                          hardware.  </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 3:06 PM,
                                                          Nick Foster
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:bistromath@gmail.com" target="_blank" rel="noreferrer"
                                                          class="">bistromath@gmail.com</a>&gt;




                                                          wrote:</div>
                                                          <br
                                                          class="m_3343428221959612084Apple-interchange-newline">
                                                          <div class="">
                                                          <div dir="ltr"
                                                          class="">
                                                          <div class="">So




                                                          I really dug
                                                          into the old
                                                          archives here
                                                          and literally
                                                          pulled an old
                                                          hard drive out
                                                          of a closet,
                                                          and found a
                                                          copy of the
                                                          old hardware
                                                          repository
                                                          from back in
                                                          the days when
                                                          N210 was
                                                          called
                                                          "USRP2+". Best
                                                          that I can
                                                          tell, we only
                                                          ever released
                                                          two versions
                                                          to the public.
                                                          We might have
                                                          sold R3
                                                          stickered as
                                                          R2 -- I don't
                                                          see anything
                                                          in the
                                                          repository
                                                          that would
                                                          indicate
                                                          otherwise. Rev
                                                          2/3 was sold
                                                          until around
                                                          June or July
                                                          2011, when we
                                                          moved to rev
                                                          4. The only
                                                          firmware/host
                                                          code changes I
                                                          can see
                                                          between any of
                                                          the versions
                                                          are that R4
                                                          used LVDS
                                                          clocking to
                                                          the
                                                          daughterboard
                                                          where previous
                                                          versions used
                                                          CMOS. So I
                                                          think you
                                                          should be able
                                                          to run r3
                                                          firmware on
                                                          your N210.</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">That




                                                          said, the very
                                                          very old N210s
                                                          with very very
                                                          old firmware
                                                          might not have
                                                          used the same
                                                          safe/production




                                                          firmware/fpga
                                                          image
                                                          arrangement
                                                          that we later
                                                          arrived at.
                                                          The hardware
                                                          is still fine,
                                                          but you might
                                                          be in for a
                                                          bit of a deep
                                                          dive to get it
                                                          all running
                                                          again.</div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">If




                                                          you have a
                                                          TTL-serial
                                                          adapter or a
                                                          logic analyzer
                                                          that works as
                                                          such, you can
                                                          connect to the
                                                          debug UART
                                                          header and get
                                                          printout
                                                          information
                                                          from the
                                                          firmware at
                                                          boot time.
                                                          Another good
                                                          idea would be
                                                          to take a
                                                          video of the
                                                          front panel
                                                          LEDs as you
                                                          apply power --
                                                          the boot LED
                                                          lights give
                                                          good
                                                          indication of
                                                          the
                                                          firmware/FPGA
                                                          image loading
                                                          process.<br
                                                          class="">
                                                          </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Nick<br
                                                          class="">
                                                          </div>
                                                          </div>
                                                          <br class="">
                                                          <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">On Thu, May 9, 2019 at 1:42 PM Joe Martin via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:<br
                                                          class="">
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:0px




                                                          0px 0px
                                                          0.8ex;border-left:1px
                                                          solid
                                                          rgb(204,204,204);padding-left:1ex">
                                                          <div class="">Thanks




                                                          for the info,
                                                          Marcus. 
                                                          However,
                                                          seeing that
                                                          Jason went
                                                          through this
                                                          last year with
                                                          a couple of
                                                          N210 he has it
                                                          would seem
                                                          unlikely that
                                                          all three of
                                                          the N210 are
                                                          broken.  That
                                                          being said and
                                                          considering
                                                          what you jus
                                                          said it seems
                                                          that I
                                                          should’ve been
                                                          able to find
                                                          some version
                                                          of UHD that
                                                          will
                                                          successfully
                                                          communicate
                                                          with the
                                                          firmware and
                                                          fpga images
                                                          stored in the
                                                          unit;  I have
                                                          not, using UHD
                                                          versions from
                                                          3.9.0 to
                                                          3.14.0.  
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">I
                                                          wanted to try
                                                          with even
                                                          earlier
                                                          versions of
                                                          UHD but am
                                                          finding
                                                          trouble in
                                                          utilizing UHD
                                                          v3.4.0
                                                          (earliest
                                                          version I
                                                          could find) as
                                                          it seems that
                                                          “prebuilt”
                                                          v3.4.0 needs
                                                          only Ubuntu
                                                          10.10 or 11.10
                                                          which so far
                                                          I’m not able
                                                          to
                                                          successfully
                                                          install and
                                                          run.   Seems
                                                          we’re running
                                                          out of option
                                                          on this one so
                                                          the Deep Space
                                                          Exploration
                                                          Society, who
                                                          I’m trying to
                                                          help with
                                                          this, may have
                                                          to come to
                                                          grasps with
                                                          the notion
                                                          that their
                                                          N210 is a true
                                                          brick. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 2:23 PM,
                                                          Marcus D.
                                                          Leech via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">usrp-users@lists.ettus.com</a>&gt;




                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386Apple-interchange-newline">
                                                          <div class="">
                                                          <div
                                                          bgcolor="#FFFFFF"
                                                          class="">
                                                          <div
                                                          class="m_3343428221959612084gmail-m_3428410372027926386moz-cite-prefix">On




                                                          05/09/2019
                                                          04:18 PM, Joe
                                                          Martin via
                                                          USRP-users
                                                          wrote:<br
                                                          class="">
                                                          </div>
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          Nick, Ian, 
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">If




                                                          this unit
                                                          happens to be
                                                          incorrectly
                                                          labeled as a
                                                          rev 2 N210 and
                                                          it is actually
                                                          a rev 3 N210,
                                                          is there hope
                                                          in being able
                                                          to load rev 3
                                                          firmware and
                                                          fpga images
                                                          (which I have
                                                          located
                                                          previously and
                                                          tried
                                                          actually) with
                                                          some available
                                                          UHD version? 
                                                          If so, would
                                                          you be able to
                                                          tell me which
                                                          UHD version(s)
                                                          might be able
                                                          to communicate
                                                          with it?  </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          Theoretically,
                                                          most versions
                                                          in the last
                                                          several years
                                                          should be able
                                                          to talk to
                                                          it.  In
                                                          *general* UHD
                                                          never drops
                                                          support for
                                                          older
                                                          hardware,<br
                                                          class="">
                                                            and tries to
                                                          maintain
                                                          compatibility. 
                                                          Now, it is the
                                                          case that
                                                          newer features
                                                          are almost
                                                          never
                                                          "back-ported",
                                                          but basic
                                                          functionality
                                                          should<br
                                                          class="">
                                                            always be
                                                          there.  <br
                                                          class="">
                                                          <br class="">
                                                          What this
                                                          *should* mean
                                                          is that you
                                                          should be able
                                                          to use the
                                                          firmware tools
                                                          once the
                                                          device is in
                                                          "safe mode" to
                                                          get yourself
                                                          to where you<br
                                                          class="">
                                                            want to be. 
                                                          If that
                                                          doesn't work,
                                                          that may well
                                                          mean that the
                                                          hardware is
                                                          broken, and
                                                          it's unlikely
                                                          to be
                                                          economical to
                                                          repair.<br
                                                          class="">
                                                          <br class="">
                                                          <br class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">
                                                          <div class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 2:12 PM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">usrp-users@lists.ettus.com</a>&gt;





                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386Apple-interchange-newline">
                                                          <div class="">
                                                          <div class="">Okay.





                                                           I’ve asserted
                                                          from the
                                                          outset that
                                                          it’s a rev 2,
                                                          based on the
                                                          factory
                                                          label.  Is
                                                          this N210 a
                                                          lost cause if
                                                          it is actually
                                                          a Rev2 N210? 
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 2:05 PM,
                                                          Nick Foster
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:bistromath@gmail.com" target="_blank" rel="noreferrer"
                                                          class="">bistromath@gmail.com</a>&gt;





                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386Apple-interchange-newline">
                                                          <div class="">
                                                          <div dir="ltr"
                                                          class="">Well,
                                                          it's not a rev
                                                          4. It's either
                                                          2 or 3 in
                                                          terms of
                                                          hardware
                                                          revision. <br
                                                          class="">
                                                          </div>
                                                          <br class="">
                                                          <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">On Thu, May 9, 2019 at 12:58 PM Joe Martin &lt;<a
                                                          moz-do-not-send="true"
href="mailto:k5so@k5so.com" target="_blank" rel="noreferrer" class="">k5so@k5so.com</a>&gt;





                                                          wrote:<br
                                                          class="">
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:0px




                                                          0px 0px
                                                          0.8ex;border-left:1px
                                                          solid
                                                          rgb(204,204,204);padding-left:1ex">
                                                          <div class="">…able




                                                          to ping
                                                          192.168.10.2
                                                          successfully.<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 1:54 PM,
                                                          Joe Martin
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:k5so@k5so.com" target="_blank" rel="noreferrer" class="">k5so@k5so.com</a>&gt;





                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386gmail-m_-2513206580084366361Apple-interchange-newline">
                                                          <div class="">
                                                          <div class="">Ian, 





                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Yes,




                                                          I have tried
                                                          many times to
                                                          boot in safe
                                                          mode, same
                                                          result
                                                          regardless. 
                                                          Yes, I am able
                                                          to pin to
                                                          192.168.10.2
                                                          successfully. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On




                                                          May 9, 2019,
                                                          at 1:47 PM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">usrp-users@lists.ettus.com</a>&gt;





                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386gmail-m_-2513206580084366361Apple-interchange-newline">
                                                          <div class="">
                                                          <div class="">Ian





                                                          and Nick, 
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Thanks




                                                          for the
                                                          assistance. 
                                                          Attached are
                                                          dropbox links
                                                          to two
                                                          snapshot
                                                          photos:  1)
                                                          the factory
                                                          label on the
                                                          back of the
                                                          N210, showing
                                                          N210 r:2.0 and
                                                          2) a top side
                                                          view of the
                                                          N210. </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">1) <a
moz-do-not-send="true"
href="https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=0"
target="_blank" rel="noreferrer" class="">https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=0</a></div>
                                                          <div class="">2) <a
moz-do-not-send="true"
href="https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=0"
target="_blank" rel="noreferrer" class="">https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=0</a></div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Seems




                                                          this unit is
                                                          indeed a rev 2
                                                          N210, yes? </div>
                                                          <div class=""><br
                                                          class="">
                                                          </div>
                                                          <div class="">Joe<br
                                                          class="">
                                                          <div class=""><br
                                                          class="">
                                                          <blockquote
                                                          type="cite"
                                                          class="">
                                                          <div class="">On





                                                          May 9, 2019,
                                                          at 12:40 PM,
                                                          Nick Foster
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:bistromath@gmail.com" target="_blank" rel="noreferrer"
                                                          class="">bistromath@gmail.com</a>&gt;





                                                          wrote:</div>
                                                          <br
class="m_3343428221959612084gmail-m_3428410372027926386gmail-m_-2513206580084366361Apple-interchange-newline">
                                                          <div class="">
                                                          <div dir="ltr"
                                                          class="">Moreover,





                                                          the best
                                                          "tell" is to
                                                          look at the
                                                          N210
                                                          motherboard.
                                                          If the SRAM
                                                          chip is on the
                                                          top side, it's
                                                          a rev 2/3. If
                                                          the SRAM is on
                                                          the bottom
                                                          side, it's a
                                                          rev 4. If you
                                                          send a picture
                                                          along of the
                                                          top of the
                                                          N210, I can
                                                          tell you if
                                                          it's early or
                                                          late rev.<br
                                                          class="">
                                                          </div>
                                                          <br class="">
                                                          <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">On Thu, May 9, 2019 at 11:36 AM Ian Buckley via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank"
                                                          rel="noreferrer"
                                                          class="">usrp-users@lists.ettus.com</a>&gt;





                                                          wrote:<br
                                                          class="">
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:0px




                                                          0px 0px
                                                          0.8ex;border-left:1px
                                                          solid
                                                          rgb(204,204,204);padding-left:1ex">
                                                          <div
                                                          dir="auto"
                                                          class="">Joe,
                                                          <div
                                                          dir="auto"
                                                          class="">So I
                                                          scratched my
                                                          head about
                                                          this a little
                                                          late last
                                                          night and
                                                          looked back
                                                          through the
                                                          development
                                                          repository for
                                                          the N210 and
                                                          as far as I
                                                          can tell there
                                                          was never
                                                          customer
                                                          facing FPGA
                                                          code for a
                                                          Rev2 N210.
                                                          Chatting with
                                                          Matt
                                                          this morning
                                                          he shared my
                                                          feeling that a
                                                          Rev2 wasn't
                                                          sold to
                                                          customers, so
                                                          I'm curious if
                                                          you have a
                                                          unit that has
                                                          a factory
                                                          label that
                                                          says N210Rev2
                                                          or if you have
                                                          seen "usrp2
                                                          rev2.0" on the
                                                          PCB (which can
                                                          be
                                                          missleading).</div>
                                                          <div
                                                          dir="auto"
                                                          class=""><br
                                                          class="">
                                                          </div>
                                                          <div
                                                          dir="auto"
                                                          class="">Also
                                                          have you tried
                                                          booting into
                                                          the safe image
                                                          and verifying
                                                          that it at
                                                          least pings on
                                                          192.168.10.2?</div>
                                                          <div
                                                          dir="auto"
                                                          class=""><br
                                                          class="">
                                                          </div>
                                                          <div
                                                          dir="auto"
                                                          class="">If we
                                                          can
                                                          conclusively
                                                          identify which
                                                          rev of h/w you
                                                          have I can
                                                          probably help
                                                          further.</div>
                                                          <div
                                                          dir="auto"
                                                          class=""><br
                                                          class="">
                                                          </div>
                                                          <div
                                                          dir="auto"
                                                          class="">Ian</div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                          </div>
_______________________________________________<br class="">
                                                          USRP-users
                                                          mailing list<br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" class="">USRP-users@lists.ettus.com</a><br
                                                          class="">
                                                          <a
                                                          moz-do-not-send="true"
class="moz-txt-link-freetext"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br
                                                          class="">
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class="">
                                                        </div>
                                                        <br class="">
                                                        <fieldset
                                                          class="mimeAttachmentHeader"></fieldset>
                                                        <br class="">
                                                        <pre class="" wrap="">_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                                                      </blockquote>
                                                      <br class="">
                                                    </div>
_______________________________________________<br class="">
                                                    USRP-users mailing
                                                    list<br class="">
                                                    <a
                                                      moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" class="">USRP-users@lists.ettus.com</a><br
                                                      class="">
                                                    <a
                                                      moz-do-not-send="true"
class="moz-txt-link-freetext"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br
                                                      class="">
                                                  </div>
                                                </blockquote>
                                              </div>
                                              <br class="">
                                            </div>
                                          </div>
                                        </blockquote>
                                        <br class="">
                                      </div>
                                    </div>
                                  </blockquote>
                                </div>
                                <br class="">
                              </blockquote>
                              <br class="">
                            </div>
                          </div>
                        </blockquote>
                      </div>
                      <br class="">
                    </div>
                  </blockquote>
                  <br class="">
                </div>
              </div>
            </blockquote>
          </div>
          <br class="">
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070805040900010900000603--


--===============8349304896923075742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8349304896923075742==--

