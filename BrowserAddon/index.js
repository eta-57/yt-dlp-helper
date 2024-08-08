const download = async () => {
    let tabs = await browser.tabs.query({
        active: true,
        currentWindow: true,
        });
    navigator.clipboard.writeText(tabs[0].url);
}
browser.browserAction.onClicked.addListener(download);